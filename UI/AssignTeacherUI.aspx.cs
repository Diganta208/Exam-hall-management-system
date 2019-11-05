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
    public partial class AssignTeacherUI : System.Web.UI.Page
    {

        AssignTeacherManeger aAssignTeacherManeger = new AssignTeacherManeger();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            
            string forDate = txtDate.Text;
            DateTime thisDate = DateTime.Parse(forDate);
            string action = Convert.ToString(1);


            if (aAssignTeacherManeger.IsRoomExsists(thisDate))
            {
                foreach (TeacherInfo aTeacher in aAssignTeacherManeger.GetAllTeacher())
                {

                    foreach (ReserveHall aReserveHall in aAssignTeacherManeger.GetAllHall(thisDate))
                    {
                        if (!aAssignTeacherManeger.IsTeacherExsists(aTeacher.Id,action))
                        {


                            AssignTeacher aAssignTeacher = new AssignTeacher();
                            aAssignTeacher.TeacherId = aTeacher.Id;

                            aAssignTeacher.Room = aReserveHall.Room;
                            aAssignTeacher.Building = aReserveHall.Building;
                            aAssignTeacher.Date = thisDate;
                            aAssignTeacher.Action = action;
                            resultLabel.Text = aAssignTeacherManeger.SaveTeacherInfo(aAssignTeacher, aReserveHall);
                        }
                    }

                }
            }

            else
            {
                resultLabel.Text = "exam hall not registered for this date";
            }
                    
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MainUI.aspx");
        }
    }
}