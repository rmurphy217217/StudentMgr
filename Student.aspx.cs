using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StdentMgt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True"))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_Add_student", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                        cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;
                        cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtEmail.Text;
                    
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand("sp_Update_student", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtEmail.Text;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}