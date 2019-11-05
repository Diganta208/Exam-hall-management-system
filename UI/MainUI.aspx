<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.MainUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            background-image: url("../Images/sharon-mccutcheon-532782-unsplash.jpg");
             background-repeat: no-repeat;
            background-size: 1430px 700px;
        }

        h1 {
            margin: 0 auto;
            text-align: center;
        }
        h3 {
            margin: 0 auto;
            text-align: center;
        }
         #wrapper {
            width: 60%;
            margin: 0 auto;
            padding-top: 130px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>International Islamic University Chittagong</h1>
        <h3>Exam Hall Management System</h3>

        <div id="wrapper">

            <asp:HyperLink ID="AdminPanel" runat="server" NavigateUrl="AdminLogInUI.aspx" Font-Size="17" class="btn btn-success">Admin Panel</asp:HyperLink>
            <hr />
            <asp:HyperLink ID="StudentPanel" runat="server" NavigateUrl="StudentLogIn.aspx" Font-Size="17" class="btn btn-success">Student Panel</asp:HyperLink>
             <hr />
             <asp:HyperLink ID="Teacherpanel" runat="server" NavigateUrl="TeacherLogIn.aspx" Font-Size="17" class="btn btn-success">Teacher Panel</asp:HyperLink>
        </div>
    </form>
</body>
</html>
