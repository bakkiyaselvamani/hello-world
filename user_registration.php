<?php
include('include/config.php');
if ($con) {
    if (($_POST["first_name"] != "") && ($_POST["last_name"] != "") && ($_POST["email"] != "") && ($_POST["password"] != "") && ($_POST["latitude"] != "") && ($_POST["langtitude"] != "")) {

        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $latitude = $_POST["latitude"];
        $langtitude = $_POST["langtitude"];

        //$type = $_POST["type"];
        //$dob = $_POST["dob"];

        $query = mysqli_query($con, "select * from userdetails where email='".$email."' ");
        if (mysqli_num_rows($query) > 0) {
            
            $json = array("status" => 0, "msg" => "Email-Id Already Exist!", "first_name" => $first_name, "last_name" => $last_name, "email" => $email);
            header('Content-type: application/json');
            echo json_encode($json);

        } else {

            //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
            $query = mysqli_query($con, "insert into userdetails set first_name = '".$first_name."', last_name = '".$last_name."', email = '".$email."', password = '".md5($password)."', latitude = '".$latitude."', langtitude = '".$langtitude."', profile_id = '".$email."', created_date = now() ");

            if ($query) {
                $json = array("status" => 1, "msg" => "Registration Successfully", "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "latitude" => $latitude, "langtitude" => $langtitude, "profile_id" => $email);
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