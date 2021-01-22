using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StdentMgt
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlDataSource sqlDS = new SqlDataSource();
            sqlDS.ConnectionString = "Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True";
            sqlDS.SelectCommand = "SELECT  Id,[Course Name] FROM [StudentMgt].[dbo].[Course]";


            DropDownList1.DataSource = sqlDS;
            DropDownList1.DataTextField = "Course Name";
            DropDownList1.DataValueField = "Id";

            DropDownList1.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}