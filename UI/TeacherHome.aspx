<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.TeacherHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/modernizr-2.8.3.js"></script>
    <title></title>
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
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Teacher
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">ABC</a>                        
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
    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox><br />
        <asp:Button ID="saveButton" runat="server" Text="Get" OnClick="saveButton_Click"  /><br />
    </div>
    </form>
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-ui-1.12.1.js"></script>
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
