using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Globalization;

namespace Assignment10_ProductRegFrm
{

    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void PDR_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            LblMsg.Text = "<br/>Product Name" + TxtPName.Text;
            LblMsg.Text += "<br/>Product Catagory" + DBList.Text;
            LblMsg.Text += "<br/>Product Price" + TxtPrice.Text;
            LblMsg.Text += "<br/>Description" + TxtDes.Text;
            LblMsg.Text += "<br/>Relase Date" + Calender.SelectedDate.ToShortDateString();
        }
    }
}

