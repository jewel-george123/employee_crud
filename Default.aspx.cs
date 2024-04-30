using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=ddl;Integrated Security=True");
            //con.Open();
            //SqlCommand comm = new SqlCommand("insert into ddemployee values('"+int.Parse(TextBox1.Text)+ "','"+ TextBox2.Text+ "','"+ TextBox3.Text+ "')",con);
            //comm.ExecuteNonQuery();
            //con.Close();
            //ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Successfully inserted');",true);
            var ob = db.exescalar("select count(Employeename) from ddemployee where Employeename='" + TextBox1.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {
                string sql = "insert into ddemployee values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('Employee Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Employee Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
            TextBox1.Text = "";
            //Response.Redirect("viewdistrict.aspx");
        

    }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}