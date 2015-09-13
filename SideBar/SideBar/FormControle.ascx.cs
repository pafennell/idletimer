using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace SideBar
{
    public partial class FormControle : System.Web.UI.UserControl
    {
        string Connection = "Data Source=\\SQLEXPRESS;Inital Catalog=TestDB;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void open()
        {
            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(Connection))
            using (SqlCommand command = new SqlCommand("Select * FROM Property", conn))
            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                conn.Open();
                adapter.Fill(dataset, "Pr");
               
            }
        }
    }
}