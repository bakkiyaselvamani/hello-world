<?php
include('include/config.php');
if ($con) {
    if (($_POST["from_profile_id"] != "") && ($_POST["tour_id"] != "") && ($_POST["to_profile_id"] != "")) {

        $from_profile_id = $_POST["from_profile_id"];
        $to_profile_id = $_POST["to_profile_id"];
        $tour_id = $_POST["tour_id"];


        $query = mysqli_query($con, "select * from user_chat_list where (user_from_id = '".$from_profile_id."' OR user_to_id = '".$from_profile_id."') AND (user_from_id = '".$to_profile_id."' OR user_to_id = '".$to_profile_id."') AND tour_id = '".$tour_id."' order by created_date desc");
        $message_list = array();
        if (mysqli_num_rows($query) > 0) {
            while($row = mysqli_fetch_array($query)){
                $from_profile_id = $row['user_from_id'];
                $to_profile_id = $row['user_to_id'];
                $message_content = $row['message_content'];
                $sent_date_time = $row['created_date'];

                $from_id_query = mysqli_query($con, "select * from userdetails where profile_id='".$from_profile_id."' ");
                $from_id_res = mysqli_fetch_array($from_id_query);
                $from_profile_deatils = array();

                if($from_id_res["first_name"] != ""){ $from_first_name = $from_id_res["first_name"]; } else { $from_first_name = ''; }
                if($from_id_res["last_name"] != ""){ $from_last_name = $from_id_res["last_name"]; } else { $last_name = ''; }
                if($from_id_res["email"] != ""){ $from_email = $from_id_res["email"]; } else { $from_email = ''; }
                if($from_id_res["imgurl"] != ""){ $from_user_image = $from_id_res["imgurl"]; } else { $from_user_image = ''; }
                if($from_id_res["latitude"] != ""){ $from_latitude = $from_id_res["latitude"]; } else { $from_latitude = ''; }
                if($from_id_res["langtitude"] != ""){ $from_langtitude = $from_id_res["langtitude"]; } else { $from_langtitude = ''; }

                //from_profile_deatils[] = array("from_profile_id" => $from_profile_id, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "user_image" => $user_image, "latitude" => $latitude, "langtitude" => $langtitude);

                $to_id_query = mysqli_query($con, "select * from userdetails where profile_id='".$to_profile_id."' ");
                $to_id_res = mysqli_fetch_array($to_id_query);
                $to_profile_deatils = array();
                
                if($to_id_res["first_name"] != ""){ $to_first_name = $to_id_res["first_name"]; } else { $to_first_name = ''; }
                if($to_id_res["last_name"] != ""){ $to_last_name = $to_id_res["last_name"]; } else { $to_last_name = ''; }
                if($to_id_res["email"] != ""){ $to_email = $to_id_res["email"]; } else { $to_email = ''; }
                if($to_id_res["imgurl"] != ""){ $to_user_image = $to_id_res["imgurl"]; } else { $to_user_image = ''; }
                if($to_id_res["latitude"] != ""){ $to_latitude = $to_id_res["latitude"]; } else { $to_latitude = ''; }
                if($to_id_res["langtitude"] != ""){ $to_langtitude = $to_id_res["langtitude"]; } else { $to_langtitude = ''; }

                //$to_profile_deatils[] = array("to_profile_id" => $to_profile_id, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "user_image" => $user_image, "latitude" => $latitude, "langtitude" => $langtitude);


                $message_list[] = array("tour_id" => $tour_id, "message_content" => $message_content, "sent_date_time" => $sent_date_time, "from_profile_id" => $from_profile_id, "from_first_name" => $from_first_name, "from_last_name" => $from_last_name, "from_email" => $from_email, "from_user_image" => $from_user_image, "from_latitude" => $from_latitude, "from_langtitude" => $from_langtitude,"to_profile_id" => $to_profile_id,"to_first_name" => $to_first_name, "to_last_name" => $to_last_name, "to_email" => $to_email, "to_user_image" => $to_user_image, "to_latitude" => $to_latitude, "to_langtitude" => $to_langtitude);
            }

            $json = array("status" => 1, "msg" => "Message List", "message_list" => $message_list);
            header('Content-type: application/json');
            echo json_encode($json);
        } else {
            $json = array("status" => 0, "msg" => "No message found.");
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