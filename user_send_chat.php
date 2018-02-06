<?php
include('include/config.php');
if ($con) {
    if (($_POST["from_profile_id"] != "") && ($_POST["to_profile_id"] != "") && ($_POST["tour_id"] != "") && ($_POST["message_content"] != "")) {

        $from_profile_id = $_POST["from_profile_id"];
        $to_profile_id = $_POST["to_profile_id"];
        $tour_id = $_POST["tour_id"];
        $message_content = $_POST["message_content"];


            //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
        $query = mysqli_query($con, "insert into user_chat_list set user_from_id = '".$from_profile_id."', user_to_id = '".$to_profile_id."', tour_id = '".$tour_id."', message_content = '".$message_content."', created_date = now() ");

        if ($query) {
            $json = array("status" => 1, "msg" => "Message Sent", "from_profile_id" => $from_profile_id, "to_profile_id" => $to_profile_id, "tour_id" => $tour_id, "message_content" => $message_content);
            header('Content-type: application/json');
            echo json_encode($json);
        } else {

            $json = array("status" => 0, "msg" => "Error Occured");
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