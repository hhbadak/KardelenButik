using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KardelenButik.AdministratorButiq
{
    public partial class Rooms : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_roomList.DataSource = dm.roomList();
            lv_roomList.DataBind();
        }
    }
}