<?php
if(isset($_REQUEST)){
    header("Content-Type: application/json");
    $response = array(
        "_REQUEST" => $_REQUEST,
        "_GET" => $_GET,
        "_POST" => $_POST,
        "BODY" => file_get_contents('php://input'), 
        "_SERVER" => $_SERVER
    );
    echo json_encode($response, JSON_UNESCAPED_SLASHES );
}
else {
    phpinfo(INFO_GENERAL + INFO_MODULES + INFO_VARIABLES);
}

?>