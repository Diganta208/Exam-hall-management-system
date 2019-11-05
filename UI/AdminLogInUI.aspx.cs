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
    public partial class AdminLogInUI : System.Web.UI.Page
    {
        AdminManeger aAdminManeger = new AdminManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {

            if (adminCodeTextBox.Text == "")
            {

                ResultLabel.Text = "Please Enter a Admin Code";

            }
            else if (passwordTextBox.Text=="")
            {
                ResultLabel.Text = "Please Enter a Password";
            }
            else
            {
                string code = adminCodeTextBox.Text;
                string Password = passwordTextBox.Text;
                if (aAdminManeger.IsAdminExsists(code))
                {
                    AdminInfo aAdminInfo = aAdminManeger.GetAdmin(code);
                    if (Password == aAdminInfo.Password)
                    {
                        Session["AdminId"] = aAdminInfo.Id;
                        Response.Redirect("GetHallUI.aspx");
                    }
                    else
                    {
                        ResultLabel.Text = "Check Password";
                    }
                }

                else
                {
                    ResultLabel.Text = "Admin does not exist";
                }
            }
          
        }
    }
}