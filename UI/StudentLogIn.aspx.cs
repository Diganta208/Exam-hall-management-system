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


    public partial class StudentLogIn : System.Web.UI.Page
    {
        StudentManeger aStudentManeger = new StudentManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            string StudentId = StudentIdTextBox.Text;
            string Password = passwordTextBox.Text;
            if(aStudentManeger.IsStudentExsists(StudentId))
            {
                StudentInfo aStudentInfo =aStudentManeger.GetStudent(StudentId);
                if(Password== aStudentInfo.Password)
                {
                    Session["StudentId"] = aStudentInfo.Id;
                    Response.Redirect("GetStudentSeatInformation.aspx");
                }
                else
                {
                    ResultLabel.Text = "Check Password";
                }
            }

            else
            {
                ResultLabel.Text = "Student does not exist";
            }
        }
    }
}