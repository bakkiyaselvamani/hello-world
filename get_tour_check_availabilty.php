<?php
include('include/config.php');
if ($con) {
    if ((isset($_POST["tour_id"]))){
        $tour_id = $_POST["tour_id"];

        $query = mysqli_query($con, "select * from tour_details where id = '".$tour_id."' ");
        $res = mysqli_fetch_array($query);
        $tour_check_available = array();
        
        $tour_name = stripslashes($res['tour_name']);

        $tour_check_dates = $res['tour_check_available'];
        $tour_check_avail_explode = explode(',', $tour_check_dates);
        foreach ($tour_check_avail_explode as $key => $tour_check_avail) {
            $tour_check_available[] = array("available_date" => date('d M, Y', strtotime($tour_check_avail)));
        }            

        $json = array("status" => 1, "msg" => "Tour Dates Available", "tour_id" => $tour_id,"tour_name" => $tour_name,"tour_check_available" => $tour_check_available);
        header('Content-type: application/json');
        echo json_encode($json);
    } else {
        $json = array("status" => 0, "msg" => "Parameter(s) Missing!");
        header('Content-type: application/json');
        echo json_encode($json);
    }
        
} else {

    $json = array("status" => 0, "msg" => "Network Error");
    header('Content-type: application/json');
    echo json_encode($json);
}
?>