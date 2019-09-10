<?php
// ini_set("display_errors", 1);

// 自定義function，用途只是要看資料(格式化)
function print_a($obj)
{
    echo "<pre>";
    print_r($obj);
    echo "</pre>";
}

// 讀取資料庫
function my_SQL_Select($sql, $link)
{
    $result = mysqli_query($link, $sql);
    // 將 query 結果取出
    $list = array();
    if ($result) {
        if ($result->num_rows > 0) {
            while ($res = mysqli_fetch_assoc($result)) {
                $list[] = $res;
            }
        }
    } else {
        print_a($sql);
        die();
    }
    return $list;
}