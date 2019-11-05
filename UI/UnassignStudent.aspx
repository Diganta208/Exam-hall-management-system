<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UnassignStudent.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.UnassignStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            background-image: url("../Images/p7maestros.jpg");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
        }

        #form1 {
            width: 60%;
            margin: 0 auto;
            padding-top: 170px;
            padding-left: 150px;
        }
        .btn-lg {
            font-size: 30px;
        }
    </style>
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
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="CourseUI.aspx">Course</a>
                        <a class="dropdown-item" href="RoomInfoUI.aspx">Room Info</a>
                        <a class="dropdown-item" href="BuildingInfoUI.aspx">Building Info</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="GetHallUI.aspx">Get Hall</a>
                        <a class="dropdown-item" href="SeatInfoUI.aspx">Seat Info</a>
                        <a class="dropdown-item" href="AssignTeacherUI.aspx">Assign Teacher</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="UnassignStudent.aspx">Unassign Student</a>
                        <a class="dropdown-item" href="UnAssignTeacher.aspx">Unassign Teacher</a>
                    </div>

                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="LogoutAdmin.aspx">Log Out <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>

        </div>
    </nav>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:Button ID="unassignButton" runat="server" Text="Unassign Student" OnClick="unassignButton_Click" class="btn btn-warning btn-lg" />
                </div>
            </div>
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
    <script src="../Scripts/jquery-3.0.0.js"></script>   
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
