<?php
include('include/config.php');
if ($con) {
    if ((isset($_POST["profile_id"])) && (isset($_POST["latitude"])) && (isset($_POST["langtitude"]))) {

        $profile_id = $_POST["profile_id"];
        $latitude = $_POST["latitude"];
        $langtitude = $_POST["langtitude"];

        //$type = $_POST["type"];
        //$dob = $_POST["dob"];

        $query = mysqli_query($con, "select * from userdetails where profile_id='".$profile_id."' ");
        if (mysqli_num_rows($query) > 0) {
            $res = mysqli_fetch_array($query);

             $update_query = mysqli_query($con, "update userdetails set latitude = '".$latitude."', langtitude = '".$langtitude."' WHERE profile_id = '".$profile_id."' ");

            $json = array("status" => 1, "msg" => "Updated the lat and lang values", "profile_id" => $profile_id, "latitude" => $latitude, "langtitude" => $langtitude);
            header('Content-type: application/json');
            echo json_encode($json);

        } else {
            $json = array("status" => 0, "msg" => "Pass valid profile id.");
            header('Content-type: application/json');
            echo json_encode($json);
        }
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