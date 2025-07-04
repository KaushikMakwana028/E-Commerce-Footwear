﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Footwear.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else
            {
                form1.Attributes.Remove("class");
                //Load the Control
                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");

                // Add the control to the panel
                pnlSliderUC.Controls.Add(sliderUserControl);
            }

            if (Session["userId"] == null)
            {
                lbLoginOrLogout.Text = "Login";
                Session["cartCount"] = "0";
            }
            else
            {
                lbLoginOrLogout.Text = "Logout";
                Utils utils = new Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"])).ToString();
            }
        }

        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                lbLoginOrLogout.ToolTip = "User Profile";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                lbLoginOrLogout.ToolTip = "User Registration";
                Response.Redirect("Registration.aspx");
            }
        }
    }
}