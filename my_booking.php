<?php
include('include/config.php');
if ($con) {
    if (($_POST["profile_id"] != "")) {
        $profile_id = $_POST["profile_id"];

        $upcoming_list = array();
        $query = mysqli_query($con, "select td.tour_name, td.tour_image, tc.id, tc.tour_id, tc.tour_total_price, tc.tour_status, tc.tour_date from tour_checkout as tc, tour_details as td where tc.user_email='".$profile_id."' AND tc.tour_id = td.id AND tour_date > DATE(NOW()) ");
        while($res = mysqli_fetch_array($query)){
            $tour_id = $res['tour_id'];
            $tour_name = $res['tour_name'];
            $tour_image = $res['tour_image'];
            $checkout_id = $res['id'];
            $tour_total_price = $res['tour_total_price'];
            $tour_date = $res['tour_date'];

            if($res['tour_status'] == 1){
                $checkout_status = "Paid";
            } else {
                $checkout_status = "Pending";
            }

            $upcoming_list[] = array("tour_id" => $tour_id, "tour_name" => $tour_name, "tour_image" => $tour_image, "checkout_id" => $checkout_id, "tour_total_price" => $tour_total_price, "tour_date" => date('M d, Y',strtotime($tour_date)), "checkout_status" => $checkout_status);
        }

        $previous_list = array();
        $query2 = mysqli_query($con, "select td.tour_name, td.tour_image, tc.id, tc.tour_id, tc.tour_total_price, tc.tour_status, tc.tour_date from tour_checkout as tc, tour_details as td where tc.user_email='".$profile_id."' AND tc.tour_id = td.id AND tour_date < DATE(NOW()) ");

        while($res2 = mysqli_fetch_array($query2)){
            $tour_id = $res2['tour_id'];
            $tour_name = $res2['tour_name'];
            $tour_image = $res2['tour_image'];
            $checkout_id = $res2['id'];
            $tour_total_price = $res2['tour_total_price'];
            $tour_date = $res['tour_date'];

            if($res2['tour_status'] == 1){
                $checkout_status = "Paid";
            } else {
                $checkout_status = "Pending";
            }

            $previous_list[] = array("tour_id" => $tour_id, "tour_name" => $tour_name, "tour_image" => $tour_image, "checkout_id" => $checkout_id, "tour_total_price" => $tour_total_price, "tour_date" => date('M d, Y',strtotime($tour_date)), "checkout_status" => $checkout_status);
        }

        $json = array("status" => 1, "msg" => "My Booking List", "profile_id" => $profile_id, "Upcoming List" => $upcoming_list, "Previous List" => $previous_list);
        header('Content-type: application/json');
            echo json_encode($json);

    } else {
        $json = array("status" => 0, "msg" => "Pass Profile Id.");
        header('Content-type: application/json');
        echo json_encode($json);
    }
} else {

    $json = array("status" => 0, "msg" => "Network Error");
    header('Content-type: application/json');
    echo json_encode($json);
}
?>