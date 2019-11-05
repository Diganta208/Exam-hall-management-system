<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherLogIn.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.TeacherLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url("../Images/iStock_000019012355Medium-1200x898.jpg");
            background-size: 1270px 610px;
            background-repeat: no-repeat;
        }

        #form1 {
            width: 60%;
            margin: 0 auto;
            padding-top: 100px;
            padding-left: 50px;
        }
        
        #wrapper {
            color: white;
        }
        .col-2 {
            color: wheat;
        }

        .row {
            padding: 5px;
        }
    </style>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <form id="form1" runat="server">
            <div class="container">
                <hr />
                <h1>Teacher Login</h1>
                <hr />
                <div class="row">
                    <div class="col-2">
                        <asp:Label ID="Label1" runat="server" Text="Teacher Id" class="control-label"></asp:Label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="TeacherIdTextBox" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <asp:Label ID="Label2" runat="server" Text="Paassword" class="control-label"></asp:Label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="passwordTextBox" runat="server" type="Password" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                    </div>
                    <div class="col-8">
                        <asp:Button ID="LogInButton" runat="server" Text="Log In" OnClick="LogInButton_Click" class="btn btn-info" />
                    </div>
                </div>
                <div class="alert alert-success" role="alert" id="output">
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </form>
    </div>
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#output").hide();
            $("#LogInButton").click(function () {
                $("#output").show();
            });
        });
    </script>
</body>
</html>
