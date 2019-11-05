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
    public partial class StudentInfoUI : System.Web.UI.Page
    {
        StudentManeger aStudentManeger = new StudentManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            StudentInfo aStudentInfo = new StudentInfo();

            if (passwordTextBox.Text == retypePasswordTextBox.Text)
            {
                aStudentInfo.StudentId = studintIdTextBox.Text.ToString();
                aStudentInfo.Name = nameTextBox.Text.ToString();
                aStudentInfo.Password = passwordTextBox.Text.ToString();
                result.Text = aStudentManeger.SaveAdmin(aStudentInfo);
                studintIdTextBox.Text = "";
                nameTextBox.Text = "";
                passwordTextBox.Text = "";
                retypePasswordTextBox.Text = "";

            }
            else
            {
                result.Text = "Check Password";
            }

        }
    }
}