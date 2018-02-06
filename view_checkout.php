<?php
include('include/config.php');
if ($con) {
    if (($_POST["checkout_id"] != "")) {

        $checkout_id = $_POST["checkout_id"];

        $query = mysqli_query($con, "select * from tour_checkout where id='".$checkout_id."'");
        $res = mysqli_fetch_array($query);

        if ($query) {
            $tour_date = $res["tour_date"];
            $number_of_people = $res["number_of_people"];
            $tour_price = $res["tour_price"];

            $json = array("status" => 1, "msg" => "View Tour Checkout.", "checkout_id" => $checkout_id, "tour_date" => $tour_date, "number_of_people" => $number_of_people, "tour_price" => $tour_price);
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