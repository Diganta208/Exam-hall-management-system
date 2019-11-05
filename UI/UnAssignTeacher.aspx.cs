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

    public partial class UnAssignTeacher : System.Web.UI.Page
    {
        UnAssignTeacherManeger aUnAssignTeacherManeger = new UnAssignTeacherManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void unassignButton_Click(object sender, EventArgs e)
        {

            string Action = Convert.ToString(1);
            string newAction = Convert.ToString(0);

            if (aUnAssignTeacherManeger.IsTeacherExsists(Action))
            {
                foreach (AssignTeacher aSeatInfo in aUnAssignTeacherManeger.GetAllTeacher(Action))
                {
                    ResultLabel.Text = aUnAssignTeacherManeger.UpdateTeacherInfo(aSeatInfo.Id, newAction);

                }
            }
            else
            {
                ResultLabel.Text = "Alrerady Unassigned";
            }
           
        }
    }
}