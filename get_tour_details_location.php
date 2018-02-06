<?php
include('include/config.php');
if ($con) {


    $query = mysqli_query($con, "select * from tour_details order by id asc");
    if (mysqli_num_rows($query) > 0) {
        $tour_list = array();
        while($res = mysqli_fetch_array($query)){
            $tour_id = $res['id'];
            $tour_name = stripcslashes($res['tour_name']);
            $tour_latitude = $res['tour_latitude'];
            $tour_langitude = $res['tour_langitude'];
            $tour_image = $res['tour_image'];
            $tour_video = $res['tour_video'];
            $tour_price = $res['tour_price'];
            $tour_activites = $res['tour_activites'];
            $tour_overview = stripslashes($res['tour_overview']);
            $tour_shortdesc = stripslashes($res['tour_shortdesc']); 
            $how_many_days = stripslashes($res['how_many_days']);            
            $tour_peoples_minimum = stripslashes($res['tour_peoples_minimum']);
            $tour_itinerary = stripslashes($res['tour_itinerary']);
            $tour_whats_included = stripslashes($res['tour_whats_included']);
            $tour_whats_not_included = stripslashes($res['tour_whats_not_included']);
            $tour_what_to_bring = stripslashes($res['tour_what_to_bring']);
            $tour_cancel_text = stripslashes($res['tour_cancel_text']);
            $tour_policies = stripslashes($res['tour_policies']);
            $type = $res['type'];

            $tour_activites_explode = explode(',', $tour_activites);
            $tour_activites_list = array();

            $tour_check_dates = $res['tour_check_available'];
            $tour_check_avail_explode = explode(',', $tour_check_dates);
            $tour_check_available = '';
            $i = 0;
            foreach ($tour_check_avail_explode as $key => $tour_check_avail) {
                if($tour_check_avail > date('Y-m-d')){ 
                    if($i < 3){
                        if($i == 2){
                            $tour_check_available .= date('d M', strtotime($tour_check_avail));
                        } else {
                            $tour_check_available .= date('d M', strtotime($tour_check_avail)).',';
                        }
                    }
                    $i++ ;
                }

            }
            //echo $tour_check_available.'<br>';

            foreach ($tour_activites_explode as $key => $tour_activites_id) {
                $actv_query = mysqli_query($con, "select * from tour_activites where id = '".$tour_activites_id."' ");
                $actv_res = mysqli_fetch_array($actv_query);
                $actv_name = $actv_res['activities_name'];
                $actv_image = $actv_res['activities_image'];

                $tour_activites_list[] = array("actv_id" => $tour_activites_id,"actv_name" => $actv_name,"actv_image" => $actv_image);
            }

            $tour_list[] = array("tour_id" => $tour_id,"tour_name" => $tour_name,"tour_latitude" => $tour_latitude,"tour_langitude" => $tour_langitude,"tour_image" => $tour_image,"upcoming_dates" => $tour_check_available,"tour_shortdesc" => $tour_shortdesc,"how_many_days" => $how_many_days,"tour_activites_list" => $tour_activites_list,"tour_video" => $tour_video,"tour_price" => $tour_price,"tour_overview" => $tour_overview,"tour_peoples_minimum" => $tour_peoples_minimum,"tour_itinerary" => $tour_itinerary,"tour_whats_included" => $tour_whats_included,"tour_whats_not_included" => $tour_whats_not_included,"tour_what_to_bring" => $tour_what_to_bring,"tour_cancel_text" => $tour_cancel_text,"tour_policies" => $tour_policies,"type"=>$type,"distance_in_meter" => "");
        }

        $json = array("status" => 1, "msg" => "Tour List Details", "tour_list" => $tour_list);
        header('Content-type: application/json');
        echo json_encode($json);

    } else {
        $json = array("status" => 0, "msg" => "No tours found.");
        header('Content-type: application/json');
        echo json_encode($json);
    }
    
} else {

    $json = array("status" => 0, "msg" => "Network Error");
    header('Content-type: application/json');
    echo json_encode($json);
}
?>