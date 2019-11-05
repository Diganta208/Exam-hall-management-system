<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistationUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.AdminRegistationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
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
            width: 240px;
        }

        .row {
            padding: 10px;
        }
    </style>
</head>
<body id="wrapper">
    <form id="form1" runat="server">
        <hr />
        <h1>Admin Registration</h1>
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label1" runat="server" Text="Admin Code" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="adminCodeTextBox" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label2" runat="server" Text="Admin Name" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="adminNameTextBox" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" Text="Password" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="passwordTextBox" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label4" runat="server" Text="Retype Password" class="control-label"></asp:Label>
                </div>
                <div class="col-7">
                    <asp:TextBox ID="retypePasswordTextBox" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3"></div>
                <div class="col-3">
                    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" class="btn btn-danger" />
                </div>
            </div>
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
