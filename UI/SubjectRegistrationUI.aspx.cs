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
    public partial class SubjectRegistrationUI : System.Web.UI.Page
    {

        SubjectRegistrationManeger aSubjectRegistrationManeger = new SubjectRegistrationManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if(!IsPostBack)
            //{
            //    subjectCheckBoxList.DataSource = aSubjectRegistrationManeger.GetAllCourse();
            //    subjectCheckBoxList.DataTextField = "CourseId";
            //    subjectCheckBoxList.DataValueField = "Id";
            //    subjectCheckBoxList.DataBind();

            //}


            //if (Session["StudentId"] == null)
            //{
            //    Response.Redirect("MainUI.aspx");
            //}
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            SubjectRegistration aSubjectRegistration = new SubjectRegistration();


            for (int i = 0; i < subjectCheckBoxList.Items.Count; i++)
            {
                if (subjectCheckBoxList.Items[i].Selected)
                {
                    aSubjectRegistration.Student = Convert.ToInt32(Session["StudentId"]);
                    aSubjectRegistration.Course = Convert.ToInt32(subjectCheckBoxList.Items[i].Value);
                   result.Text= aSubjectRegistrationManeger.SaveSubjectRegistration(aSubjectRegistration);
                }

            }
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MainUI.aspx");
        }
    }
}