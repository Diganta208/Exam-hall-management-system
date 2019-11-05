<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogInUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.AdminLogInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/popper.js"></script>
    <style>
        body {
            background-image: url("../Images/desktop-background.png");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
        }

        #wrapper {
            width: 60%;
            margin: 0 auto;
            padding-top: 130px;
            padding-left: 150px;
        }

        input {
            width: 100px;
        }

        .row {
            padding: 10px;
        }
     
    </style>
</head>
<body id="wrapper">
    <form id="form1" runat="server">
        <hr />
        <h1>Admin Login</h1>
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" Text="Admin Code" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="adminCodeTextBox" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label2" runat="server" Text="Paassword" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Button ID="LogInButton" runat="server" Text="Log In" OnClick="LogInButton_Click" class="btn btn-danger" />
                </div>
                <div class="col-3">
                    <asp:HyperLink ID="AdminPanel" runat="server" NavigateUrl="AdminRegistationUI.aspx" Text="Sign Up" class="btn btn-danger" />
                </div>
            </div>

            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>

        </div>


    </form>

</body>
</html>


