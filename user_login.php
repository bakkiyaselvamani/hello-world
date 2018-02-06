<?php
include('include/config.php');
if ($con) {
    if (($_POST["email"] != "") && ($_POST["password"] != "") && ($_POST["latitude"] != "") && ($_POST["langtitude"] != "")) {

        $email = $_POST["email"];
        $password = $_POST["password"];
        $latitude = $_POST["latitude"];
        $langtitude = $_POST["langtitude"];

        //$type = $_POST["type"];
        //$dob = $_POST["dob"];

        $query = mysqli_query($con, "select * from userdetails where email='".$email."' AND password='".md5($password)."' ");
        if (mysqli_num_rows($query) > 0) {
            $res = mysqli_fetch_array($query);

             $update_query = mysqli_query($con, "update userdetails set latitude = '".$latitude."', langtitude = '".$langtitude."', profile_id = '".$email."', user_online = '1' WHERE email = '".$email."' ");

            $first_name = $res['first_name'];
            $last_name = $res['last_name'];

            $json = array("status" => 1, "msg" => "Welcome to our trip", "email" => $email, "first_name" => $first_name, "last_name" => $last_name, "latitude" => $latitude, "langtitude" => $langtitude, "profile_id" => $email, "user_online" => "1");
            header('Content-type: application/json');
            echo json_encode($json);

        } else {
            $json = array("status" => 0, "msg" => "Email-id and Password Wrong.");
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