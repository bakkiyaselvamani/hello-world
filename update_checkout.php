<?php
include('include/config.php');
if ($con) {
    if (($_POST["checkout_id"] != "") && ($_POST["tour_date"] != "") && ($_POST["number_of_people"] != "") && ($_POST["tour_price"] != "")) {

        $checkout_id = $_POST["checkout_id"];
        $tour_date = $_POST["tour_date"];
        $number_of_people = $_POST["number_of_people"];
        $tour_price = $_POST["tour_price"];
        $tour_total_price = $number_of_people * $tour_price;


        //$query = mysqli_query($con, "insert into userdetails(fb_id,imgurl,name,email,password,phonenumber,country)values('$uname','$imgurl','$name','$email','','','')");
        $query = mysqli_query($con, "UPDATE tour_checkout set tour_date = '".$tour_date."', number_of_people = '".$number_of_people."', tour_price = '".$tour_price."', tour_total_price = '".$tour_total_price."', tour_status = '0' WHERE id = '".$checkout_id."' ");

        if ($query) {

            $json = array("status" => 1, "msg" => "Updated Checkout Details.", "checkout_id" => $checkout_id, "tour_date" => $tour_date, "number_of_people" => $number_of_people, "tour_price" => $tour_price, "tour_total_price" => $tour_total_price);
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