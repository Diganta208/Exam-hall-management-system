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
    public partial class AdminRegistationUI : System.Web.UI.Page
    {

        AdminManeger aAdminManeger = new AdminManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            AdminInfo aAdminInfo = new AdminInfo();
            if (adminCodeTextBox.Text == "")
            {

                result.Text = "Please Enter a Admin Code";

            }
            else if (adminNameTextBox.Text=="")
            {
                result.Text = "Please Enter a Admin Name";
            }
            else if (passwordTextBox.Text == "")
            {
                result.Text = "Please Enter a Password";
            }
            else if (retypePasswordTextBox.Text == "")
            {
                result.Text = "Please retype your Password";
            }
            else
            {
                if (passwordTextBox.Text == retypePasswordTextBox.Text)
                {
                    aAdminInfo.Code = adminCodeTextBox.Text.ToString();
                    aAdminInfo.Name = adminNameTextBox.Text.ToString();
                    aAdminInfo.Password = passwordTextBox.Text.ToString();
                    result.Text = aAdminManeger.SaveAdmin(aAdminInfo);
                    adminNameTextBox.Text = "";
                    adminCodeTextBox.Text = "";
                    passwordTextBox.Text = "";
                    retypePasswordTextBox.Text = "";

                }
                else
                {
                    result.Text = "Check Password";
                }

            }
          

        }
    }
}