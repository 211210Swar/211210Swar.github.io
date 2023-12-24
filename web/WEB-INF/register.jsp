<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册</title>
    <style type="text/css">
        h1{
            text-align: center;
        }
        h4{
            text-align: center;color: red;
        }
        body{
            background-color: antiquewhite;
        }
        div{
            text-align: center;
        }

    </style>
</head>
<body>
<h1>用户注册</h1>
<hr/>
<form action="register-do.jsp" method="post" name="registerForm">
    <div>
        <tr>
            <label>您的账号：</label>
            <input type="text" name="name" id="name" placeholder="请输入用户名">
        </tr>
    </div>
    <div>
        <tr>
            <label>您的密码：</label>
            <input type="password" name="password" id="password" placeholder="请输入密码">
        </tr>
    </div>
    <div>
        <tr>
            <label>确认密码：</label>
            <input type="password" name="relpassword" id="relpassword" placeholder="请确认密码">
        </tr>
    </div>
    <div>
        <tr>
            <label>电话号码：</label>
            <input type="text" name="phone" id="phone" placeholder="请输入电话号码">
        </tr>
    </div>
    <div>
        <tr>
            <label>电子邮件：</label>
            <input type="text" name="email" id="email" placeholder="请输入电子邮件">
        </tr>

    </div>
    <div>
        <tr>
            <button type="submit" onclick="return checkForm()">注册</button>
            <button type="reset">重置</button>
            <a href="login.jsp" target="_blank">登录</a>
        </tr>
    </div>
</form>

<script type="text/javascript">
    function checkForm() {
        var name = registerForm.name.value;
        var pwd = registerForm.password.value;
        var repwd = registerForm.relpassword.value;
        //alert(name + pwd + repwd);
        if (name == "" || name == null) {
            alert("请输入用户名");
            registerForm.name.focus();
            return false;
        } else if (pwd == "" || pwd == null) {
            alert("请输入密码");
            registerForm.password.focus();
            return false;
        } else if (repwd == "" || repwd == null) {
            alert("请输入确认密码");
            registerForm.relpassword.focus();
            return false;
        } else if (pwd != repwd) {
            alert("两次密码输入不一致，请重新输入!");
            registerForm.relpassword.focus();
            return false;
        }
        alert('注册成功！');
        return true;
    }
</script>
</body>
</html>
