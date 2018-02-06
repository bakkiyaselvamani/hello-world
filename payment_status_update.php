<?php
include('include/config.php');
if ($con) {
    if ((isset($_POST["checkout_id"])) && (isset($_POST["tour_status"]))) {

        $checkout_id = $_POST["checkout_id"];
        $tour_status = $_POST["tour_status"];

        if($tour_status == 1){
            $payment_msg = "Your payment successful.";
        } else {
            $payment_msg = "Your payment pending.";
        }
        //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
        $query = mysqli_query($con, "update tour_checkout set tour_status = '".$tour_status."' WHERE id = '".$checkout_id."' ");

        if ($query) {
            $get_checkout_query = mysqli_query($con, "select tc.*, td.tour_name, u.email, u.first_name, u.last_name from tour_checkout as tc, tour_details as td, userdetails as u WHERE td.id = tc.tour_id AND u.profile_id = tc.user_email AND tc.id = '".$checkout_id."' AND tc.tour_status = 1");
            $get_checkout_res = mysqli_fetch_array($get_checkout_query);
            $get_num_rows = mysqli_num_rows($get_checkout_query);

            if($get_num_rows > 0){
                $tour_name = $get_checkout_res['tour_name'];
                $tour_price = $get_checkout_res['tour_price'];
                $number_of_people = $get_checkout_res['number_of_people'];
                $tour_total_price = $get_checkout_res['tour_total_price'];
                $tour_date = $get_checkout_res['tour_date'];

                $from = "sales.carpedm@gmail.com";
                $to = $get_checkout_res['email'];
                $user_name = $get_checkout_res['first_name'];

                $subject = "Carpedm - Your Tour(".$tour_name.") Booking Confirmed.";
                $headers = "From: Carpedm - Adventures For The Senses<" . $from . "> \r\n";
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
                        . "<p>Your tour(<b>".$tour_name."</b>) booking confirmed. Please find the following details:</p>"
                        . "<table cellpadding='5' cellspacing='0' border='1' width='80%'><tr><th>Tour Name</th><th>Tour Date</th><th>Tour Price</th><th>Number of People</th><th>Total Price</th></tr><tr><td style='text-align:center'>".$tour_name."</td><td style='text-align:center'>".date('M d, Y', strtotime($tour_date))."</td><td style='text-align:center'>$ ".$tour_price."</td><td style='text-align:center'>".$number_of_people."</td><td style='text-align:center'>$ ".$tour_total_price."</td></tr></table>"
                        . "<br><br><p>Regards,<br>Carpedm - Adventures For The Senses</p>"
                        . "</body>"
                        . "</html>";
             
                mail($to, $subject, $message, $headers);
            }

            $json = array("status" => 1, "msg" => $payment_msg, "checkout_id" => $checkout_id, "tour_status" => $tour_status);
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