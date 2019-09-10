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
    <form action="function.php" method="post" onsubmit="return check();">
        <table border="1">
            <tr>
                <th>姓名:</th>
                <td><input type="text" name="name" id="name" value="{name}"></td>
            </tr>
            <tr>
                <th>性別:</th>
                <!-- <td><input type="text" name="sex" id="sex" value="{sex}"></td> -->
                <td><select name="sex" id="sex">
                    <option value="">請選擇</option>
                    <option value="1">男</option>
                    <option value="2">女</option> 
                </select></td>
            </tr>
            <tr>
                <th>電話:</th>
                <td><input type="text" name="tel" id="" value="{tel}"></td>
            </tr>
            <tr>
                <th>地址:</th>
                <td><input type="text" name="address" id="" value="{address}"></td>
            </tr>
            <tr>
                <th>E-mail:</th>
                <td><input type="text" name="e_mail" id="" value="{e_mail}"></td>
            </tr>
            <tr>
                <input type="hidden" name="do" value="{do}"/>
                <input type="hidden" name="id" value="{id}"/>
                <th><input type="submit" name="submit"></th>
                <td></td>
            </tr>
        </table>
    </form>
</body>
</html>
<script>
    $(function(){
        $("#sex").val('{sex}');
    });
    function check() 
    {
        if ($("input[name='name']").val() == "") {
            alert("請輸入姓名");
            $("input[name='name']").focus();
            return false;
        }
        if ($("select[name='sex']").find(":selected").val() == "") {
            alert("請輸入性別");
            $("input[name='sex']").focus();
            return false;
        }
        if ($("select[name='sex']").find(":selected").val() != "1" && $("select[name='sex']").find(":selected").val() != "2") {
            alert("性別選擇錯誤");
            $("select[name='sex']").focus();
            return false;
        }
        if ($("input[name='tel']").val() == "") {
            alert("請輸入手機號碼");
            $("input[name='tel']").focus();
            return false;
        }
        var re = /09[0-9]{2}-[0-9]{6}/;
        if (!re.test($("input[name='tel']").val())) {
            alert("手機號碼格式不對");
            $("input[name='tel']").focus();
            return false;
        }
        if ($("input[name='address']").val() == "") {
            alert("請輸入地址");
            $("input[name='address']").focus();
            return false;
        }
        var ree = /([\w\-]+\@[\w\-]+\.[\w\-]+)/;
        if (!ree.test($("input[name='e_mail']").val())) {
            alert("e-mail格式不對!");
            $("input[name='e_mail']").focus();
            return false;
        }
        if (!confirm('以上資料是否輸入正確？')) {
            return false;
        }
        return true;
    }
</script>