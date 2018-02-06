<?php
include('include/config.php');
if ($con) {
    if (($_POST["checkout_id"] != "")) {
        $checkout_id = $_POST["checkout_id"];

        $query = mysqli_query($con, "delete from tour_checkout where id='".$checkout_id."'");
        
        if($query){
            $json = array("status" => 1, "msg" => "Tour Deleted Successfully.", "checkout_id" => $checkout_id);
            header('Content-type: application/json');
            echo json_encode($json);
        } else {
            $json = array("status" => 0, "msg" => "Error Occured!");
            header('Content-type: application/json');
            echo json_encode($json);
        }

    } else {
        $json = array("status" => 0, "msg" => "Pass Profile Id.");
        header('Content-type: application/json');
        echo json_encode($json);
    }
} else {

    $json = array("status" => 0, "msg" => "Network Error");
    header('Content-type: application/json');
    echo json_encode($json);
}
?>