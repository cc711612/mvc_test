<?php

// 引用基本function 檔
include_once 'include/basic_function.php';

// 讀取templete
$tpl = file_get_contents("update.tpl");

// 建置基本替換陣列
$item = array(
    "do"      => $_GET["do"],
    "id"      => "",
    "name"    => "",
    "sex"     => "",
    "tel"     => "",
    "address" => "",
    "e_mail"  => "",
);

if ($_GET["do"] == "update") {
    // 連結MYSQL
    $host      = "localhost";
    $user_name = "system";
    $password  = "hclzdPUH5OKwAxVq";
    $db_name   = "newbie_test";
    $port      = 3306;
    $link      = mysqli_connect($host, $user_name, $password, $db_name, $port);

    // 設定DB資料字元為UTF8
    mysqli_query($link, "SET NAMES UTF8");

    $sql  = "SELECT * FROM address_book WHERE del = 0 AND `ID`= '{$_GET["id"]}'";
    $list = my_SQL_Select($sql, $link);

    $item["id"]      = $list["0"]["ID"];
    $item["name"]    = $list["0"]["name"];
    $item["sex"]     = $list["0"]["sex"];
    $item["tel"]     = $list["0"]["tel"];
    $item["address"] = $list["0"]["address"];
    $item["e_mail"]  = $list["0"]["e_mail"];
}
foreach ($item as $k => $v) {
    $tpl = str_replace("{" . $k . "}", $v, $tpl);
}
echo $tpl;