<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubjectRegistrationUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.SubjectRegistrationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Student
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="GetStudentSeatInformation.aspx">Get Seat Information</a>                        
                    </div>

                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="StudentLogout.aspx">Log Out <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>

        </div>
    </nav>
    <form id="form1" runat="server">
    <div>
     
            <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
        <asp:CheckBoxList ID="subjectCheckBoxList" runat="server"></asp:CheckBoxList><br />

        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /><br />

          <asp:Label ID="result" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="logOutButton" runat="server" Text="Log Out" OnClick="logOutButton_Click" style="height: 26px" />
    </div>
    </form>
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
