<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetStudentSeatInformation.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.GetStudentSeatInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url("../Images/hardworking-student-powerpoint-templates.JPG");
            background-size: 1280px 615px;
            background-repeat: no-repeat;
        }


        input {
            width: 240px;
        }

        #form2 {
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
            <form id="form2" runat="server">
                <div class="container">
                    <hr />
                    <h1>Student Seat Information</h1>
                    <hr />
                    <div class="row">
                        <div class="col-3">
                            <asp:Label ID="Label2" runat="server" Text="Subject" class="control-label"></asp:Label>
                        </div>
                        <div class="col-8">
                            <asp:DropDownList ID="SubjectDropDownList" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-8">
                            <asp:Button ID="getButton" runat="server" Text="Get" OnClick="getButton_Click" class="btn btn-danger" />
                        </div>
                    </div>

                    <div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="StudentLabel" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="BuildingLabel" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="RoomLabel" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </form>
        </div>
</body>
</html>
