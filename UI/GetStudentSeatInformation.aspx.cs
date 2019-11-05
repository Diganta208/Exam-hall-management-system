using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamHallManagentSystemApp.BLL;
using ExamHallManagentSystemApp.DAL.Models;
using ExamHallManagentSystemApp.DAL.Models.ViewModel;


namespace ExamHallManagentSystemApp.UI
{
    public partial class GetStudentSeatInformation : System.Web.UI.Page
    {
        GetStudentSeatInfoManager aGetStudentSeatInfoManager = new GetStudentSeatInfoManager();
        protected void Page_Load(object sender, EventArgs e)
        {

       
            if(!IsPostBack)
            {
                SubjectDropDownList.DataSource = aGetStudentSeatInfoManager.GetAllCourseByStudentId(Convert.ToInt32(Session["StudentId"]));
                SubjectDropDownList.DataTextField = "CourseCode";
                SubjectDropDownList.DataValueField = "Id";
                SubjectDropDownList.DataBind();

                SubjectDropDownList.Items.Insert(0, new ListItem("Select Course"));
            }
            if (Session["StudentId"] == null)
            {
                Response.Redirect("MainUI.aspx");
            }
        }

        protected void getButton_Click(object sender, EventArgs e)
        {
            string action = Convert.ToString(0);
            int StudentId = Convert.ToInt32(Session["StudentId"]);
            int CourseId = Convert.ToInt32(SubjectDropDownList.SelectedValue);

            StudentInfoViewModel aStudentInfoViewModel = aGetStudentSeatInfoManager.GetSeatInfoByStudentId(StudentId, CourseId, action);
            StudentLabel.Text = aStudentInfoViewModel.StudentName;
            BuildingLabel.Text = aStudentInfoViewModel.BuildingName;
            RoomLabel.Text = aStudentInfoViewModel.RoomCode;
        }
    }
}