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
    public partial class TeacherLogIn : System.Web.UI.Page
    {
        TeacherManeger aTeacherManeger = new TeacherManeger();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            string TeacherId = TeacherIdTextBox.Text;
            string Password = passwordTextBox.Text;
            if (aTeacherManeger.IsTeacherExsists(TeacherId))
            {
                TeacherInfo aTeacherInfo = aTeacherManeger.GetTeacher(TeacherId);
                if (Password == aTeacherInfo.Password)
                {
                    Session["TeacherId"] = aTeacherInfo.Id;
                    Response.Redirect("TeacherHome.aspx");
                }
                else
                {
                    ResultLabel.Text = "Check Password";
                }
            }
        }
    }
}