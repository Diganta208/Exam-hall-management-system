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

    public partial class CourseUI : System.Web.UI.Page
    {

        CourseManeger aCourseManeger = new CourseManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["AdminId"] == null)
            {
                Response.Redirect("MainUI.aspx");
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Course aCourse = new Course();

            if (courseIdTextBox.Text=="")
            {
                resultLabel.Text = "Please Enter a Course Id";
            }
            else if (courseNameTextBox.Text=="")
            {
                resultLabel.Text = "Please Enter a Course Name";
            }

            else if (creditTextBox.Text == "")
            {
                resultLabel.Text = "Please Enter the Ctrdit of this Course";
            }

            else
            {
                aCourse.CourseId = courseIdTextBox.Text;
                aCourse.CourseName = courseNameTextBox.Text;
                aCourse.Credit = Convert.ToInt32(creditTextBox.Text);

                resultLabel.Text = aCourseManeger.SaveCourse(aCourse);
            }
          
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MainUI.aspx");
        }
    }
}