<?php
include('include/config.php');
if ($con) {
    if (($_POST["profile_id"] != "")) {

        $profile_id = $_POST["profile_id"];

        $update_query = mysqli_query($con, "update userdetails set user_online = '0' WHERE profile_id = '".$profile_id."' ");
        if($update_query){
            $json = array("status" => 1, "msg" => "Logout Success", "profile_id" => $profile_id, "user_online" => "0");
            header('Content-type: application/json');
            echo json_encode($json);
        } else {
            $json = array("status" => 0, "msg" => "Error occured.");
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