<?php
include('include/config.php');
if ($con) {

if (($_POST["place_lat"] != "") && ($_POST["place_lang"] != "")) {

        $place_lat = $_POST["place_lat"];
        $place_lang = $_POST["place_lang"];

        /*$user_query = "SELECT (3959 * acos (
          cos ( radians($place_lat) )
          * cos( radians( latitude ) )
          * cos( radians( langtitude ) - radians($place_lang) )
          + sin ( radians($latitude) )
          * sin( radians( latitude ) ) )
        ) AS distance_in_km, first_name, last_name, email, imgurl, profile_id FROM userdetails HAVING distance_in_km < 500 ORDER BY distance_in_km DESC";*/

        $user_query = "SELECT first_name, last_name, email, imgurl, profile_id, user_online, ( 3959 * acos( cos( radians($place_lat) ) * cos( radians( latitude ) ) * cos( radians( langtitude ) - radians($place_lang) ) + sin( radians($place_lat) ) * sin( radians( latitude ) ) ) ) AS distance_in_km FROM userdetails HAVING (distance_in_km < 0.5) ORDER BY distance_in_km asc";

        $user_list = array();
        $query = mysqli_query($con, $user_query);

        if (mysqli_num_rows($query) > 0) {
            while($res = mysqli_fetch_array($query)){
                $first_name = $res['first_name'];
                $last_name = $res['last_name'];
                $email = $res['email'];
                $profile_id = $res['profile_id'];
                $imgurl = $res['imgurl'];
                $user_online = $res['user_online'];
                $distance_in_meter = $res['distance_in_km'] * 1000;

                //$user_list[] = array("first_name" => $first_name, "last_name" => $last_name, "email" => $email, "profile_id" => $profile_id, "imgurl" => $imgurl, "distance_in_km" => $distance_in_km);

                $user_list[] = array("first_name" => $first_name, "last_name" => $last_name, "email" => $email, "profile_id" => $profile_id, "imgurl" => $imgurl, "user_online" => $user_online, "distance_in_meter" => number_format($distance_in_meter, "2", ".", ","));
            }

            $json = array("status" => 1, "msg" => "User List Details", "user_list" => $user_list);
            header('Content-type: application/json');
            echo json_encode($json);

        } else {
            $json = array("status" => 0, "msg" => "No Users Found.");
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