<?php
include('include/config.php');
if ($con) {
    if (($_POST["profile_id"] != "") && ($_POST["tour_id"] != "") && ($_POST["tour_date"] != "") && ($_POST["number_of_people"] != "") && ($_POST["tour_price"] != "")) {

        $profile_id = $_POST["profile_id"];
        $tour_id = $_POST["tour_id"];
        $tour_date = $_POST["tour_date"];
        $number_of_people = $_POST["number_of_people"];
        $tour_price = $_POST["tour_price"];
        $tour_total_price = $number_of_people * $tour_price;


        //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
        $query = mysqli_query($con, "insert into tour_checkout set user_email = '".$profile_id."', tour_id = '".$tour_id."', tour_date = '".$tour_date."', number_of_people = '".$number_of_people."', tour_price = '".$tour_price."', tour_total_price = '".$tour_total_price."', tour_status = '0' ");

        if ($query) {
            $last_id = mysqli_insert_id($con);

            $json = array("status" => 1, "msg" => "Tour Checkout Process Done.", "profile_id" => $profile_id, "checkout_id" => $last_id, "tour_id" => $tour_id, "tour_date" => $tour_date, "number_of_people" => $number_of_people, "tour_price" => $tour_price, "tour_total_price" => $tour_total_price);
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