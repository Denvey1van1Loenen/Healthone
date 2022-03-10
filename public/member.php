<?php
global $params;

//check if user has role admin
if (!isMember()) {
    logout();;
    header("location:/home");
}else{
        switch ($params[2]){
            case 'profile':
                include_once "../Templates/member/profile.php";
                break;
            case 'editprofile':
                $titleSuffix = ' | profile';

                if (isset($_POST['profile'])) {

                    $result = changeProfile();
                    if ($result===true){
                        header("Location:  /member/profile");
                    }else{
                        $message="niet alle velden correct ingevuld";
                        include_once "../Templates/member/editprofile.php";
                    }
                    break;
                }
                else {
                    include_once "../Templates/member/editprofile.php";
                }
                break;

            default:
                include_once "../Templates/member/home.php";

        }


}
