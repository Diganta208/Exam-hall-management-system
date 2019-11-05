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
    public partial class RoomInfoUI : System.Web.UI.Page
    {
        RoomManeger aRoomManeger = new RoomManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if(!IsPostBack)
            //{
            //    buildingDropDownList.DataSource = aRoomManeger.GetAllBuilding();
            //    buildingDropDownList.DataTextField = "Name";
            //    buildingDropDownList.DataValueField = "Id";
            //    buildingDropDownList.DataBind();
            //    buildingDropDownList.Items.Insert(0, new ListItem("Select Buiding"));

            //}
            //if (Session["AdminId"] == null)
            //{
            //    Response.Redirect("MainUI.aspx");
            //}
            
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            RoomInfo aRoomInfo = new RoomInfo();
            aRoomInfo.Code = codeTextBox.Text.ToString();
            aRoomInfo.Building = Convert.ToInt32(buildingDropDownList.SelectedValue);
            aRoomInfo.Seat = Convert.ToInt32(seatTextBox.Text);
            resultLabel.Text = aRoomManeger.SaveRoom(aRoomInfo);

            codeTextBox.Text = "";
            seatTextBox.Text = "";
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MainUI.aspx");
        }
    }
}