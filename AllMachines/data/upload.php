<?php
    if(isset($_FILES['fileToUpload'])){
        $file_name = $_FILES['fileToUpload']['name'];
        $file_size = $_FILES['fileToUpload']['size'];
        $file_tmp = $_FILES['fileToUpload']['tmp_name'];
        $file_type = $_FILES['fileToUpload']['type'];
        if(move_uploaded_file($file_tmp, $_SERVER['DOCUMENT_ROOT']."/upload/".$file_name)){
            echo "success <br/>";
        }
        else{
            echo "err";
        }
    }
?>
