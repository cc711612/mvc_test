<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
</head>
<body>
    <table border="1">
        <tr>
            <th>編號</th>
            <th>姓名</th>
            <th>性別</th>
            <th>電話</th>
            <th>地址</th>
            <th>E-mail</th>
            <th>修改</th>
            <th>刪除</th>
        </tr>
        {data}
        <tr>
            <td id="" colspan="8" style="text-align:right;padding:0.5rem"><a href="modify.php?do=add"><button type="button">新增</button></a></td>
        </tr>
    </table>
    <script>
        function del_confirm(ID){
            var r=confirm("確定要刪除資料?");
            if (r==true) {
                location.href="function.php?do=delete&id="+ID;
            } else {
                alert("取消刪除!");
            }
        }
    </script>
</body>
</html>