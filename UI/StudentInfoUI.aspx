<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentInfoUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.StudentInfoUI" %>

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

        #form2 {
            width: 60%;
            margin: 0 auto;
            padding-top: 30px;
            padding-left: 150px;
        }

        .row {
            padding: 10px;
        }

        .col-3 {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div id="wrapper">
        <form id="form2" runat="server">
            <div class="container">
                <hr />
                <h1>Student Info</h1>
                <hr />
                <div class="alert alert-success" role="alert" id="output">
                    <asp:Label ID="result" runat="server" Text=""></asp:Label>
                </div>
                <div class="row">
                    <div class="col-2">
                        <asp:Label ID="Label1" runat="server" Text="Studint Id" class="control-label"></asp:Label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="studintIdTextBox" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <asp:Label ID="Label2" runat="server" Text="Name" class="control-label" />
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="nameTextBox" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                        <asp:Label ID="Label3" runat="server" Text="Password" class="control-label" />
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2">
                         <asp:Label ID="Label4" runat="server" Text="Retype Password" class="control-label" />
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="retypePasswordTextBox" runat="server" class="form-control" />
                    </div>
                </div>
                 <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                         <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" class="btn btn-info" />
                    </div>
                </div>
                
                <hr />
            </div>
        </form>
    </div>
</body>
</html>

