<?php
include('include/config.php');
if ($con) {
    if (($_POST["checkout_id"] != "")) {

        $checkout_id = $_POST["checkout_id"];

        $query = mysqli_query($con, "select * from daytour_registration where checkout_id ='".$checkout_id."'");
        $res = mysqli_fetch_array($query);

        if ($query) {
            $first_name = $res["first_name"];
            $last_name = $res["last_name"];
            $email = $res["email"];
            $passport_no = $res["passport_no"];
            $nationality = $res["nationality"];
            $date_of_birth = $res["date_of_birth"];
            $hotel_room = $res["hotel_room"];
            $home_address = $res["home_address"];
            $start_date = $res["start_date"];
            $type_of_daytour = $res["type_of_daytour"];
            $height = $res["height"];
            $weight = $res["weight"];
            $shoe_size = $res["shoe_size"];
            $insurance_policy_no = $res["insurance_policy_no"];
            $vegetarian = $res["vegetarian"];
            $diet_restrictions = $res["diet_restrictions"];
            $emergency_contact = $res["emergency_contact"];

            $json = array("status" => 1, "msg" => "View Day Tour Details.", "checkout_id" => $checkout_id, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "passport_no" => $passport_no, "nationality" => $nationality, "date_of_birth" => $date_of_birth, "hotel_room" => $hotel_room, "home_address" => $home_address, "start_date" => $start_date, "type_of_daytour" => $type_of_daytour, "height" => $height, "shoe_size" => $shoe_size, "insurance_policy_no" => $insurance_policy_no, "vegetarian" => $vegetarian, "diet_restrictions" => $diet_restrictions, "emergency_contact" => $emergency_contact);
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