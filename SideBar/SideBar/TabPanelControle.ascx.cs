using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SideBar
{
    public partial class TabPanelControle : System.Web.UI.UserControl
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dataSet = new DataSet();
            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand("SELECT * FROM Blog", conn))
            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                try
                {
                    conn.Open();

                    adapter.Fill(dataSet);

                    GridView1.DataSource = dataSet;
                    GridView1.DataBind();
                    command.Dispose();
                    conn.Close();
                }
                catch (SqlException ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            
        }

    }
}