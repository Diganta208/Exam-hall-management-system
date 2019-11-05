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
    public partial class GetHallUI : System.Web.UI.Page
    {
        ReserveHallManeger aReserveHallManeger = new ReserveHallManeger();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["AdminId"] == null)
            //{
            //    Response.Redirect("MainUI.aspx");
            //}
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            ReserveHall aReserveHall = new ReserveHall();

            if(txtDate.Text=="")
            {
                outputLabel.Text = "Please Enter a Date";
            }
            else
            {
                string forDate = txtDate.Text;
                DateTime thisDate = DateTime.Parse(forDate);
                if (aReserveHallManeger.IsDateExsists(aReserveHall.Date))
                {
                    outputLabel.Text = "Already exists";
                }
                else
                {
                    foreach (RoomInfo aRoom in aReserveHallManeger.GetAllRoom())
                    {
                        if (aRoom.Seat <= 10)
                        {
                            aReserveHall.Room = aRoom.Id;
                            aReserveHall.Building = aRoom.Building;
                            aReserveHall.AvailableSeat = aRoom.Seat;
                            aReserveHall.Date = thisDate;
                            aReserveHall.Teacher = 1;
                            outputLabel.Text = aReserveHallManeger.GetRoom(aReserveHall);
                        }
                        else if (aRoom.Seat > 10 && aRoom.Seat <= 20)
                        {

                            aReserveHall.Room = aRoom.Id;
                            aReserveHall.Building = aRoom.Building;
                            aReserveHall.AvailableSeat = aRoom.Seat;
                            aReserveHall.Date = thisDate;
                            aReserveHall.Teacher = 2;
                            outputLabel.Text = aReserveHallManeger.GetRoom(aReserveHall);
                        }

                        else
                        {
                            aReserveHall.Room = aRoom.Id;
                            aReserveHall.Building = aRoom.Building;
                            aReserveHall.AvailableSeat = aRoom.Seat;
                            aReserveHall.Date = thisDate;
                            aReserveHall.Teacher = 3;
                            outputLabel.Text = aReserveHallManeger.GetRoom(aReserveHall);
                        }
                }
           
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