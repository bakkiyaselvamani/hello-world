<?php
include('include/config.php');
if ($con) {
    if (($_POST["profile_id"] != "") && ($_POST["first_name"] != "") && ($_POST["last_name"] != "") && ($_POST["email"] != "") && ($_POST["imgurl"] != "") && ($_POST["latitude"] != "") && ($_POST["langtitude"] != "")) {

        $profile_id = $_POST["profile_id"];
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $email = $_POST["email"];
        $imgurl = $_POST["imgurl"];
        $latitude = $_POST["latitude"];
        $langtitude = $_POST["langtitude"];

        //$type = $_POST["type"];
        //$dob = $_POST["dob"];

        $update_query = mysqli_query($con, "update userdetails set imgurl = '".$imgurl."', first_name = '".$first_name."', last_name = '".$last_name."', latitude = '".$latitude."', langtitude = '".$langtitude."', user_online = '1' WHERE profile_id = '".$profile_id."' ");

        $query = mysqli_query($con, "select * from userdetails where profile_id='$profile_id'");
        if (mysqli_num_rows($query) > 0) {
            $row = mysqli_fetch_array($query);

            if($row["block_status"] == 0){
                if($row["first_name"] != ""){ $first_name = $row["first_name"]; } else { $first_name = ''; }
                if($row["last_name"] != ""){ $last_name = $row["last_name"]; } else { $last_name = ''; }
                if($row["email"] != ""){ $email = $row["email"]; } else { $email = ''; }
                if($row["imgurl"] != ""){ $user_image = $row["imgurl"]; } else { $user_image = ''; }
                if($row["latitude"] != ""){ $latitude = $row["latitude"]; } else { $latitude = ''; }
                if($row["langtitude"] != ""){ $langtitude = $row["langtitude"]; } else { $langtitude = ''; }
                if($row["langtitude"] != ""){ $langtitude = $row["langtitude"]; } else { $langtitude = ''; }

                $json = array("status" => 1, "msg" => "Welcome to our trip!", "profile_id" => $profile_id, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "user_image" => $user_image, "latitude" => $latitude, "langtitude" => $langtitude, "user_online" => "1");
                header('Content-type: application/json');
                echo json_encode($json);
            } else {
                $json = array("status" => 0, "msg" => "Your account (".$email.") blocked, please contact administrator.");
                header('Content-type: application/json');
                echo json_encode($json);
            }

        } else {

            //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
            $query = mysqli_query($con, "insert into userdetails set profile_id = '".$profile_id."', imgurl = '".$imgurl."', first_name = '".$first_name."', last_name = '".$last_name."', email = '".$email."', latitude = '".$latitude."', langtitude = '".$langtitude."', created_date = now() ");

            if ($query) {
                $json = array("status" => 1, "msg" => "Registration Successfully", "profile_id" => $profile_id, "user_image" => $imgurl, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "latitude" => $latitude, "langtitude" => $langtitude);
                header('Content-type: application/json');
                echo json_encode($json);
            } else {

                $json = array("status" => 0, "msg" => "Error Occured");
                header('Content-type: application/json');
                echo json_encode($json);
            }
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