using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class viewemployee1 : System.Web.UI.Page
    {

        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from ddemployee", GridView1);

            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from ddemployee", GridView1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;

            foreach (GridViewRow dr in GridView1.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {

                    db.exenonquery("delete from ddemployee where Employeeid=" + chk.Value + "");
                }
            }
            db.fillgrid("select * from ddemployee", GridView1);

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from ddemployee", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtdistrict = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            TextBox txtdescription = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

            int i = db.exenonquery("update ddemployee set Employeename='" + txtdistrict.Text + "', Employeediscription='" + txtdescription.Text + "' where Employeeid='" + id + "'");

            GridView1.EditIndex = -1;
            db.fillgrid("select * from ddemployee", GridView1);
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select  * from  ddemployee", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete  from  ddemployee where Employeeid=" + id + "");
            db.fillgrid("select *  from ddemployee", GridView1);
        }
    }
}