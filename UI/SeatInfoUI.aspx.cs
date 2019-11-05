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
    public partial class SeatInfoUI : System.Web.UI.Page
    {

        SeatInfoManeger aSeatInfoManeger = new SeatInfoManeger();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                courseDropDownList.DataSource = aSeatInfoManeger.GetAllCourse();
                courseDropDownList.DataTextField = "CourseName";
                courseDropDownList.DataValueField = "Id";
                courseDropDownList.DataBind();
                courseDropDownList.Items.Insert(0, new ListItem("Select Course"));

            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            int subjectId = Convert.ToInt32(courseDropDownList.SelectedValue);
            string forDate = txtDate.Text;
            DateTime thisDate = DateTime.Parse(forDate);
             string action = Convert.ToString(1);


             if (aSeatInfoManeger.IsRoomExsists(thisDate))
             {
                 foreach (SubjectRegistration aStudent in aSeatInfoManeger.GetAllStudentBySubject(subjectId))
                 {

                     foreach (ReserveHall aReserveHall in aSeatInfoManeger.GetAllHall(thisDate))
                     {
                         if (!aSeatInfoManeger.IsStudentExsists(aStudent, action))
                         {


                             SeatInfo aSeatInfo = new SeatInfo();
                             aSeatInfo.Student = aStudent.Student;
                             aSeatInfo.Course = aStudent.Course;
                             aSeatInfo.Room = aReserveHall.Room;
                             aSeatInfo.Building = aReserveHall.Building;
                             aSeatInfo.Date = thisDate;
                             aSeatInfo.Action = action;
                             resultLabel.Text = aSeatInfoManeger.SaveSeatInfo(aSeatInfo, aReserveHall);
                         }
                     }

                 }
             }
                       
             else
             {
                 resultLabel.Text = "exam hall not registered for this date";
             }
                               
        }
    }
}