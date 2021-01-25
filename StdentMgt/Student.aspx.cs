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
        public string StudentId;

        protected void Page_Load(object sender, EventArgs e)
        {

            StudentId = Request["id"];



            if (!IsPostBack)
            {

                DropDownList2.Visible = false;
                Button4.Visible = false;

                SqlDataSource sqlDS = new SqlDataSource();
                sqlDS.ConnectionString = "Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True";
                sqlDS.SelectCommand = "SELECT  Id,[Course Name] FROM [StudentMgt].[dbo].[Course]";


                DropDownList2.DataSource = sqlDS;
                DropDownList2.DataTextField = "Course Name";
                DropDownList2.DataValueField = "Id";

                DropDownList2.DataBind();


                if (StudentId is null)

                {
                    Button1.Visible = true;
                    Button2.Visible = false;
                }
                else
                {
                    Button1.Visible = false;
                    Button2.Visible = true;
                    string constr = @"Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True";
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT [Id],[First Name],[Last Name],[Email] FROM [StudentMgt].[dbo].[Student] where Id = " + StudentId))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = con;
                            con.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                sdr.Read();
                                txtFirstName.Text = sdr["First Name"].ToString();
                                txtLastName.Text = sdr["Last Name"].ToString();
                                txtEmail.Text = sdr["Email"].ToString();
                            }
                            con.Close();
                        }


                    }

                    SqlCommand command = new SqlCommand();
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    //int i = 0;
                    //string sql = null;
                    string connetionString = "Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True";
                    SqlConnection connection = new SqlConnection(connetionString);
                    connection.Open();
                    command.Connection = connection;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "sp_Enrollment";
                    command.Parameters.Add("@StudentId", SqlDbType.Int);
                    command.Parameters["@StudentId"].Value = StudentId;
                    adapter = new SqlDataAdapter(command);
                    adapter.Fill(ds);
                    connection.Close();
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();

                }



            }



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
            Response.Write("<script LANGUAGE='JavaScript' >alert('Student Added')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand("sp_Update_student", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = StudentId;
                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtEmail.Text;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Write("<script LANGUAGE='JavaScript' >alert('Student Updated')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           DropDownList2.Visible = true;
           DropDownList2.Visible = true;
            Button4.Visible = true;
        }



        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = StudentMgt; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand("sp_AddEnrollment", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@StudentId", SqlDbType.VarChar).Value = StudentId;
                    cmd.Parameters.Add("@CourseId", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("~/Student.aspx/Student?Id=" + StudentId);  
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

                DropDownList list = (DropDownList)sender;
                string value = (string)list.SelectedValue;
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList list = (DropDownList)sender;
            string value = (string)list.SelectedValue;
        }

        protected void DropDownList2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/default.aspx");
             
        }
    }
    }
