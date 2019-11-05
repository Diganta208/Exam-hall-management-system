using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamHallManagentSystemApp.BLL;
using ExamHallManagentSystemApp.DAL.Models;
namespace ExamHallManagentSystemApp.UI
{
    public partial class TeacherInfoUI : System.Web.UI.Page
    {

        TeacherManeger aTeacherManeger = new TeacherManeger();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if(!IsPostBack)
            {
                departmentDropDownList.DataSource = aTeacherManeger.GetAllDepartment();
                departmentDropDownList.DataTextField = "Name";
                departmentDropDownList.DataValueField = "Id";
                departmentDropDownList.DataBind();
                departmentDropDownList.Items.Insert(0, new ListItem("Select Department"));
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

             if (passwordTextBox.Text == retypePasswordTextBox.Text)
             {
                 TeacherInfo aTeacherInfo = new TeacherInfo();
                 aTeacherInfo.Code = codeTextBox.Text;
                 aTeacherInfo.Department = Convert.ToInt32(departmentDropDownList.SelectedValue);
                 aTeacherInfo.Password = passwordTextBox.Text;
                 resultLabel.Text= aTeacherManeger.SaveTeacher(aTeacherInfo);
             }
             else
             {
                 resultLabel.Text = "Check Password";
             }
        }
    }
}