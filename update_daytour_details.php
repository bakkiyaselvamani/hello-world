<?php
include('include/config.php');
if ($con) {
    if ($_POST["checkout_id"] && ($_POST["first_name"] != "") && ($_POST["last_name"] != "") && ($_POST["email"] != "") && ($_POST["passport_no"] != "") && ($_POST["nationality"] != "") && ($_POST["date_of_birth"] != "") && ($_POST["hotel_room"] != "") && ($_POST["home_address"] != "") && ($_POST["start_date"] != "") && ($_POST["type_of_daytour"] != "") && ($_POST["insurance_policy_no"] != "") && ($_POST["vegetarian"] != "") && ($_POST["diet_restrictions"] != "") && ($_POST["emergency_contact"] != "")) {

        $checkout_id = $_POST["checkout_id"];

        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $email = $_POST["email"];
        $passport_no = $_POST["passport_no"];
        $nationality = $_POST["nationality"];
        $date_of_birth = $_POST["date_of_birth"];
        $hotel_room = $_POST["hotel_room"];
        $home_address = $_POST["home_address"];
        $start_date = $_POST["start_date"];
        $type_of_daytour = $_POST["type_of_daytour"];
        $height = $_POST["height"];
        $weight = $_POST["weight"];
        $shoe_size = $_POST["shoe_size"];
        $insurance_policy_no = $_POST["insurance_policy_no"];
        $vegetarian = $_POST["vegetarian"];
        $diet_restrictions = $_POST["diet_restrictions"];
        $emergency_contact = $_POST["emergency_contact"];

        $query = mysqli_query($con, "update daytour_registration set first_name = '".$first_name."', last_name = '".$last_name."', email = '".$email."', passport_no = '".$passport_no."', nationality = '".$nationality."', date_of_birth = '".$date_of_birth."', hotel_room = '".$hotel_room."', home_address = '".$home_address."', start_date = '".$start_date."', type_of_daytour = '".$type_of_daytour."', height = '".$height."', weight = '".$weight."', shoe_size = '".$shoe_size."', insurance_policy_no = '".$insurance_policy_no."', vegetarian = '".$vegetarian."', diet_restrictions = '".$diet_restrictions."', emergency_contact = '".$emergency_contact."' where checkout_id = '".$checkout_id."' ");

        if ($query) {
            $json = array("status" => 1, "msg" => "Details are updated.", "checkout_id" => $checkout_id, "first_name" => $first_name, "last_name" => $last_name, "email" => $email, "passport_no" => $passport_no, "nationality" => $nationality, "date_of_birth" => $date_of_birth, "hotel_room" => $hotel_room, "home_address" => $home_address, "start_date" => $start_date, "type_of_daytour" => $type_of_daytour, "height" => $height, "shoe_size" => $shoe_size, "insurance_policy_no" => $insurance_policy_no, "vegetarian" => $vegetarian, "diet_restrictions" => $diet_restrictions, "emergency_contact" => $emergency_contact);
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