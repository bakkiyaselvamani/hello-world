<?php
include('include/config.php');
if ($con) {
    if (($_POST["first_name"] != "") && ($_POST["last_name"] != "") && ($_POST["email"] != "") && ($_POST["passport_no"] != "") && ($_POST["nationality"] != "") && ($_POST["date_of_birth"] != "") && ($_POST["hotel_room"] != "") && ($_POST["home_address"] != "") && ($_POST["start_date"] != "") && ($_POST["type_of_daytour"] != "") && ($_POST["insurance_policy_no"] != "") && ($_POST["vegetarian"] != "") && ($_POST["diet_restrictions"] != "") && ($_POST["emergency_contact"] != "")) {

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

        $query = mysqli_query($con, "insert into daytour_registration set checkout_id = '".$checkout_id."', first_name = '".$first_name."', last_name = '".$last_name."', email = '".$email."', passport_no = '".$passport_no."', nationality = '".$nationality."', date_of_birth = '".$date_of_birth."', hotel_room = '".$hotel_room."', home_address = '".$home_address."', start_date = '".$start_date."', type_of_daytour = '".$type_of_daytour."', height = '".$height."', weight = '".$weight."', shoe_size = '".$shoe_size."', insurance_policy_no = '".$insurance_policy_no."', vegetarian = '".$vegetarian."', diet_restrictions = '".$diet_restrictions."', emergency_contact = '".$emergency_contact."', created_date = now() ");


                                        /*google excel add data*/
//echo "$_SERVER[DOCUMENT_ROOT]/ZendGdata-1.8.1/library";
        // Zend library include path
        //http://perfectrdp.us/carpedm_webservice");
//set_include_path(get_include_path() . PATH_SEPARATOR . "$_SERVER[DOCUMENT_ROOT]/ZendGdata-1.8.1/library");
        set_include_path(get_include_path() . PATH_SEPARATOR . "ZendGdata-1.8.1/library");

        include_once("google_spreadsheet.php");

        $u = "vigneshmcaklk@gmail.com";
        $p = "jvjvjvjv";

        $ss = new google_spreadsheet($u,$p);

        $ss->useSpreadsheet("Untitled spreadsheet");

        // if not setting worksheet, "Sheet1" is assumed
        // $ss->useWorksheet("worksheetName");
        $row = array
        (
        "name" => "John Doe"
        , "email" => "john@example.com"
        , "comments" => "Hello world"
        );
echo 'addrow';

        if ($ss->addRow($row)) echo "Form data successfully stored using Google Spreadsheet";
        else echo "Error, unable to store spreadsheet data";













        if ($query) {
            $json = array("status" => 1, "msg" => "Registration Successfully.");
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