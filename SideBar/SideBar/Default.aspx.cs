using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SideBar
{
    public partial class Default : System.Web.UI.Page
    {
        private string Connection = "Data Source=.\\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void adduser()
        {
            string username = Convert.ToString(Username.Text);

            using (SqlConnection conn = new SqlConnection(Connection))
            using(SqlCommand command = new SqlCommand("userRegisteration", conn))
            {
                command.CommandType = CommandType.StoredProcedure;
                try{
                    conn.Open();
                    command.Parameters.AddWithValue("@username", username);
                    command.ExecuteNonQuery(); 
                    conn.Close();
                    command.Dispose();
                    Username.Text = "";
                }
                catch(Exception)
                {

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adduser();
        }
    }
}