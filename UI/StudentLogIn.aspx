<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogIn.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.StudentLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            background-image: url("../Images/hardworking-student-powerpoint-templates.JPG");
            background-size: 1280px 615px;
            background-repeat: no-repeat;
        }


        input {
            width: 240px;
        }

        #form1 {
            width: 60%;
            margin: 0 auto;
            padding-top: 130px;
            padding-left: 150px;
        }
        .row {
            padding: 10px;
        }
         .col-4 {
             padding: 10px;
         }
    </style>

</head>
<body>
    <div id="wrapper">
        <form id="form1" runat="server">
            <div class="container">
                <hr />
                <h1>Student Login</h1>
                <hr />
                <div class="row">
                    <div class="col-3">
                        <asp:Label ID="Label1" runat="server" Text="Student Id" class="control-label"></asp:Label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="StudentIdTextBox" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3">
                        <asp:Label ID="Label2" runat="server" Text="Paassword" class="control-label" />
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="passwordTextBox" type="password" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <asp:Button ID="LogInButton" runat="server" Text="Log In" OnClick="LogInButton_Click" class="btn btn-info" />
                    </div>
                    <div class="col-5">
                        <asp:HyperLink ID="StudentPanel" runat="server" NavigateUrl="StudentInfoUI.aspx" Text="Sign Up" class="btn btn-info" />
                    </div>
                </div>
            </div>
            <hr />
            <div class="alert alert-success" role="alert" id="output">
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
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

