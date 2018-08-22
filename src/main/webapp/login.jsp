<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>电子书城</title>

    <link rel="stylesheet" href="css/main.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        function loginsumbit() {
            var url = "login";
            var loginInfo = $("#username").val();
            var password = $("#password").val();
            $.post(url, {"loginInfo": loginInfo,"password": password}, function (data, status) {
                if (status == "success") {
                    if (data == "user") {
                        window.location.href = "product_list.jsp";
                    } else if (data == "error") {
                        $("#error_info").html("用户名/密码不正确");
                    } else if (data == "admin") {
                        window.location.href = "admin/login/home.jsp";
                    }
                }
            });
            return false;
        }

    </script>
</head>

<body class="main">

<jsp:include page="head.jsp"/>
<jsp:include page="menu_search.jsp"/>

<div id="divcontent">
    <form action="product_list.jsp" method="post">
        <table width="900px" border="0" cellspacing="0">
            <tr>
                <td style="padding:30px">
                    <div style="height:470px">
                        <b>&nbsp;&nbsp;首页&nbsp;&raquo;&nbsp;个人用户登录</b>
                        <div>
                            <table width="85%" border="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <div id="logindiv">
                                            <table width="100%" border="0" cellspacing="0">
                                                <tr>
                                                    <td style="text-align:center; padding-top:20px"><img
                                                            src="images/logintitle.gif" width="150" height="30"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center;padding-top:20px;"><font
                                                            color="#ff0000" id="error_info"></font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">
                                                        <table width="80%" border="0" cellspacing="0"
                                                               style="margin-top:15px ;margin-left:auto; margin-right:auto">
                                                            <tr>
                                                                <td
                                                                        style="text-align:right; padding-top:5px; width:25%">
                                                                    用户名：
                                                                </td>
                                                                <td style="text-align:left"><input name="username"
                                                                                                   id="username"
                                                                                                   type="text"
                                                                                                   class="textinput"
                                                                                                   value="wangwu123"
                                                                                                   placeholder="用户名/邮箱/手机号"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align:right; padding-top:5px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                                                                <td style="text-align:left"><input name="password"
                                                                                                   id="password"
                                                                                                   type="password"
                                                                                                   class="textinput"
                                                                                                   placeholder="密码"
                                                                                                   value="4321Aa@"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="text-align:center"><input
                                                                        type="checkbox" name="checkbox"
                                                                        value="checkbox"/>
                                                                    记住用户名&nbsp;&nbsp; <input type="checkbox"
                                                                                             name="checkbox"
                                                                                             value="checkbox"/> 自动登录
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2"
                                                                    style="padding-top:10px; text-align:center"><input
                                                                        name="image" type="image"
                                                                        onclick="return loginsumbit()"
                                                                        src="images/loginbutton.gif" width="83"
                                                                        height="22"/>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" style="padding-top:10px"><img
                                                                        src="images/loginline.gif" width="241"
                                                                        height="10"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2"
                                                                    style="padding-top:10px; text-align:center"><a
                                                                        href="register.jsp"><img name="image"
                                                                                                 src="images/signupbutton.gif"
                                                                                                 width="135"
                                                                                                 height="33"/>
                                                                </a></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td style="text-align:left; padding-top:30px; width:60%"><h1>您还没有注册？</h1>
                                        <p>注册新会员，享受更优惠价格!</p>
                                        <p>千种图书，供你挑选！注册即享受丰富折扣和优惠，便宜有好货！超过万本图书任您选。</p>
                                        <p>超人气社区！精彩活动每一天。买卖更安心！支付宝交易超安全。</p>
                                        <p style="text-align:right">
                                            <a href="register.jsp"><img
                                                    src="images/signupbutton.gif" width="135" height="33"/> </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>


<jsp:include page="foot.jsp"/>


</body>
</html>
