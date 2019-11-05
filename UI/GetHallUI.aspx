<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetHallUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.GetHallUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
            background-image: url("../Images/daniil-kuzelev-428715-unsplash.jpg");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
        }
         #form1 {
            width: 60%;
            margin: 0 auto;
            padding-top: 130px;
            padding-left: 150px;
        }
         .col-4 {
             font-size: 20px;
             padding: 10px;
             color: white;
         }
         .row {
            padding: 2px;
        }
        #outputLabel {
            color: white;
            font-size: 20px;
        }
    </style>
    <script src="../Scripts/modernizr-2.8.3.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/themes/base/jquery-ui.css" rel="stylesheet" />
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
                  <div class="col-4">
                    <asp:Label ID="Label3" runat="server" Text="Get Room For Date" class="control-label"></asp:Label>
                </div>
                  <div class="col-8">
                       <asp:TextBox ID="txtDate" runat="server" class="form-control"></asp:TextBox>
                  </div>
              </div>
             <div class="row">
                 <div class="col-4"></div>
                  <div class="col-4">
                       <asp:Button ID="saveButton" runat="server" Text="Get" OnClick="saveButton_Click" class="btn btn-success btn-lg"/>
                  </div>
              </div>
         </div>
    <div >

        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label><br />

    </div>
    </form>

    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/jquery-ui-1.12.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
      <script type="text/javascript">
          window.onload = function () {
              GetDate();
          };
          $("#txtDate").datepicker();
          function GetDate() {
              var dt = new Date();
              var dd;
              var mm;
              var yyyy;
              var date;
              var month;
              dd = dt.getDate();
              mm = dt.getMonth();
              date = (+dd) - (+1);
              month = (+mm) + (+1);
              document.getElementById('txtDate').value = month + '/' + date + '/' + dt.getFullYear();

          }
</script>
</body>
</html>
