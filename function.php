<?php
// 引用基本function 檔
include_once 'include/basic_function.php';

// 連結MYSQL
$host      = "localhost";
$user_name = "system";
$password  = "hclzdPUH5OKwAxVq";
$db_name   = "newbie_test";
$port      = 3306;
$link      = mysqli_connect($host, $user_name, $password, $db_name, $port);

// 設定DB資料字元為UTF8
mysqli_query($link, "SET NAMES UTF8");

// 將Get與Post合併為一個陣列
$arr = array_merge($_GET, $_POST);

// 判斷如果不是要刪除，就要驗證輸入參數是否合乎規則
if ($arr["do"] != "delete") {
    $chk = array(
        "name"    => "姓名",
        "sex"     => "性別",
        "tel"     => "手機號碼",
        "address" => "地址",
        "e_mail"  => "Email",
    );
    // 空白
    foreach ($chk as $k => $v) {
        if (empty($arr["$k"])) {
            die("$v為必填");
        }
    }
    // 性別
    if (!in_array($arr["sex"], array("1", "2"))) {
        die('您性別欄位只能為1(男性)或2(女性)!');
    }
    // 手機
    if (!preg_match("/09[0-9]{2}-[0-9]{6}/", $arr["tel"])) {
        die('您的電話欄位格式錯誤!');
    }
    // email
    if (!filter_var($arr["e_mail"], FILTER_VALIDATE_EMAIL)) {
        die('您的e-mail欄位格式錯誤!');
    }
}

// 依據參數決定要執行新增、修改、刪除
switch ($arr["do"]) {
    case "add": // 新增
        $sql = "INSERT INTO `address_book` (`name`, `sex`, `tel`, `address`, `e_mail`) VALUES ('{$arr["name"]}','{$arr["sex"]}','{$arr["tel"]}','{$arr["address"]}','{$arr["e_mail"]}')";
        break;
    case "update": //修改
        if (!is_numeric($arr["id"])) {
            die("您為非法訪問此程式");
        }
        $sql = "UPDATE `address_book` SET `name` = '{$arr["name"]}', `sex` = '{$arr["sex"]}', `tel` = '{$arr["tel"]}', `address` = '{$arr["address"]}', `e_mail` = '{$arr["e_mail"]}' WHERE `ID` = '{$arr["id"]}'";
        break;
    case "delete": // 刪除
        if (!is_numeric($arr["id"])) {
            die("您為非法訪問此程式");
        }
        $sql = "UPDATE `address_book` SET `del` = 1 WHERE `ID` = '{$arr["id"]}'";
        break;
    default:
        die("您為非法訪問此程式");
}
mysqli_query($link, $sql);
header("location:index.php");
die();
