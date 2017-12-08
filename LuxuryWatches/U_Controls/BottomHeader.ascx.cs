﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxuryWatches.U_Controls
{
    public partial class BottomHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTuKhoa.Value;
            Response.RedirectToRoute("timkiem", new { tukhoa = tukhoa });
        }
    }
}