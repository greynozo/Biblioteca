﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="L.aspx.cs" Inherits="Biblioteca.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login V18</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="Contenido/Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Contenido/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="Contenido/Login/css/main.css">
    <!--===============================================================================================-->
</head>
<body style="background-color: #666666;">

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title p-b-43">Login
                    </span>


                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox ID="txtUsuario" CssClass="input100" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="label-input100">Usuario</span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <%--<input class="input100" type="password" name="pass">--%>
                        <asp:TextBox ID="txtPassword" CssClass="input100" TextMode="Password" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="label-input100">Password</span>
                    </div>

                    <div class="flex-sb-m w-full p-t-3 p-b-32">
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div>

                        <div>
                            <a href="#" class="txt1">Forgot Password?
                            </a>
                        </div>
                    </div>


                    <div class="container-login100-form-btn">
                        <asp:Button ID="btnLogin" CssClass="login100-form-btn" Text="Login" runat="server" OnClick="btnLogin_Click" />
                        <%--<button class="login100-form-btn">
							Login
						</button>--%>
                    </div>

                    <div class="text-center p-t-46 p-b-20">
                        <span class="txt2">or sign up using
                        </span>
                        <asp:Label ID="lblError" ForeColor="Red" runat="server"></asp:Label>
                    </div>

                    <div class="login100-form-social flex-c-m">
                        <a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
                            <i class="fa fa-facebook-f" aria-hidden="true"></i>
                        </a>

                        <a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                    </div>
                </form>

                <div class="login100-more" style="background-image: url('Contenido/Login/images/bg-01.jpg');">
                </div>
            </div>
        </div>
    </div>





    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="Contenido/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="Contenido/Login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="Contenido/Login/js/main.js"></script>

</body>
</html>
