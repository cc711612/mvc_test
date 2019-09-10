<?php
// 引用基本function 檔
include_once 'include/basic_function.php';

// 連結MYSQL
$host      = "localhost";
$user_name = "system";
$password  = "";
$db_name   = "test";

$link      = mysqli_connect($host, $user_name, $password, $db_name);

// 設定DB資料字元為UTF8
mysqli_query($link, "SET NAMES UTF8");

// 讀取HTML面板
$tpl = file_get_contents("index.tpl");

// 從資料庫抓資料
$sql  = "select * from persons";
$list = my_SQL_Select($sql, $link);

if (empty($list)) {
    // 無資料

    // 無資料的顯示
    $data = '<tr>
        <td colspan="8" align="center">查無資料</td>
        </tr>';
} else {
    // 有資料
    $data = "";
    // 將templete中設定要轉換成資料替換進入htmlcode
    // 因為資料結構為二維陣列，所以要用兩層foreach去跑迴圈執行
    foreach ($list as $k0 => $v0) {
        // 設定原始未替換htmlcode
        $data_tpl = '<tr>
            <td>{id}</td>
            <td>{name}</td>
            <td>{sex}</td>
            <td>{phone}</td>
            <td>{adress}</td>
            <td>{email}</td>
            <td><a href="modify.php?do=update&id={ID}">
            <button>修改</button></a></td>
            <td><input type="button" name="button" value="刪除" onclick="del_confirm({ID})"></a></td>
            </tr>';
        // 替換資料
        foreach ($v0 as $key => $value) {
            // 性別判斷： 1:男/2:女
            if ($key == "sex") {
                $data_tpl = str_replace("{" . $key . "}", ($value == "1" ? "男" : "女"), $data_tpl);
            }
            $data_tpl = str_replace("{" . $key . "}", $value, $data_tpl);
        }
        // 將已經替換好的htmlcode，組合成一個所有資料替換的htmlcode
        $data .= $data_tpl;
    }
}

// 將所有資料替換好的htmlcode，替換進入模板
$tpl = str_replace("{data}", $data, $tpl);
echo $tpl;
