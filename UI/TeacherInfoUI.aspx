<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherInfoUI.aspx.cs" Inherits="ExamHallManagentSystemApp.UI.TeacherInfoUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style>
         #form1 {
            width: 60%;
            margin: 0 auto;
            padding-top: 130px;
            padding-left: 150px;
        }
         .col-4 {
             padding: 10px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label1" runat="server" Text="Code" class="control-label"></asp:Label>
                </div>
                 <div class="col-8">
                        <asp:TextBox ID="codeTextBox" runat="server" class="form-control"></asp:TextBox>
                  </div>
            </div>
            <div class="row">
                <div class="col-4">
                     <asp:Label ID="Label2" runat="server" Text="Department" class="control-label"></asp:Label>
                </div>
                 <div class="col-8">
                     <asp:DropDownList ID="departmentDropDownList" runat="server" class="form-control"/>
                  </div>
            </div>
             <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label3" runat="server" Text="Password" class="control-label"></asp:Label>
                </div>
                 <div class="col-8">
                        <asp:TextBox ID="passwordTextBox" runat="server" type="Password" class="form-control"></asp:TextBox>
                  </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label4" runat="server" Text="Retype Password" class="control-label"></asp:Label>
                </div>
                 <div class="col-8">
                        <asp:TextBox ID="retypePasswordTextBox" runat="server" type="Password" class="form-control"></asp:TextBox>
                  </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label5" runat="server" Text="Retype Password" class="control-label"></asp:Label>
                </div>
                 <div class="col-8">
                        <asp:TextBox ID="TextBox1" runat="server" type="Password" class="form-control"></asp:TextBox>
                  </div>
            </div>
            <div class="row">
                <div class="col-4">
                </div>
                 <div class="col-8">
                     <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" class="form-control"/>
                  </div>
            </div>
            <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>


        </div>
    </form>
    
<script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
