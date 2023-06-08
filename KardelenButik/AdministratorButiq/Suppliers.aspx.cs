﻿using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KardelenButik.AdministratorButiq
{
    public partial class Suppliers : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_supplierList.DataSource = dm.supplierList();
            lv_supplierList.DataBind();
        }
    }
}