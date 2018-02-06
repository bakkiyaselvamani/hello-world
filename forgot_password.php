<?php
include('include/config.php');
if ($con) {
    if ((isset($_POST["email"]))) {

        $email = $_POST["email"];

        //$type = $_POST["type"];
        //$dob = $_POST["dob"];

        $query = mysqli_query($con, "select * from userdetails where email='".$email."' ");
        if (mysqli_num_rows($query) > 0) {
            $res = mysqli_fetch_array($query);
            $password = mt_rand(10000000, 99999999);
            $update_query = mysqli_query($con, "update userdetails set password = '".md5($password)."' WHERE email = '".$email."' ");

            if($update_query){
                $from = "raj@rgmobiles.com";
                $to = $email;
                $user_name = $res['first_name'];

                $subject = "Carpedm - New Password Generated Successfully";
                $headers = "From: Carpedm<" . $from . "> \r\n";
                $headers .= "Return-Path: " . $from . " \r\n";
                $headers .= "Reply-To: " . $from . " \r\n";
                $headers .= "MIME-Version: 1.0\r\n";
                $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
                $headers .= "X-Priority: 3\r\n";
                $headers .= "X-Mailer: PHP" . phpversion() . "\r\n";

                $message = "<html>"
                    . "<head></head>"
                    . "<body>"
                    . "<h3>Hello " . $user_name . "</h3>,"
                    . "<p>Your account new password generated successfully. Please find the below password and login our app and enjoy tour adventures.</p>"
                    . "<table cellpadding='0' border='0'>"
                    . "<tr><th>New Password</th><td>".$password."</td></tr>"
                    . "</table>"
                    . "<p>Regards,</p>"
                    . "<p>Carpedm</p>"
                    . "</body>"
                    . "</html>";
         
                $success = mail($to, $subject, $message, $headers);
                if($success){
                    $msg = "Visitor added successfully.";
                }
            }

            $json = array("status" => 1, "msg" => "New Password Sent to Your Email-Id.", "email" => $email);
            header('Content-type: application/json');
            echo json_encode($json);

        } else {
            $json = array("status" => 0, "msg" => "Email-id Wrong.");
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