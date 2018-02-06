<?php
include('include/config.php');
if ($con) {


    $query = mysqli_query($con, "select * from tour_details order by id");
    if (mysqli_num_rows($query) > 0) {
        $tour_list = array();
        while($res = mysqli_fetch_array($query)){
            $tour_id = $res['id'];
            $tour_name = stripcslashes($res['tour_name']);
            
            $tour_list[] = array("tour_id" => $tour_id,"tour_name" => $tour_name);
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