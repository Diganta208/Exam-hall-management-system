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
    public partial class BuildingInfoUI : System.Web.UI.Page
    {
        BuildingManeger aBuildingManeger = new BuildingManeger();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["AdminId"]== null)
            //{
            //    Response.Redirect("MainUI.aspx");
            //}
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if(roomTextBox.Text=="")
            {
                resultLabel.Text = "Please Enter number of Room";
            }
            else if(nameTextBox.Text=="")
            {
                resultLabel.Text = "Please Enter a building name";
            }
            else
            {
                BuildingInfo aBuildingInfo = new BuildingInfo();
                aBuildingInfo.Name = nameTextBox.Text.ToString();
                aBuildingInfo.Room = Convert.ToInt32(roomTextBox.Text);
                resultLabel.Text = aBuildingManeger.SaveBuilding(aBuildingInfo);

                nameTextBox.Text = "";
                roomTextBox.Text = "";
            }
           
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MainUI.aspx");
        }
    }
}