using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CSharpBrasil.Web.Controls.Test
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadTableDemo();
            LoadGlyphicons();
        }

        private void LoadTableDemo()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Age", typeof(string));

            for (int i = 0; i < 3; i++)
            {
                int id = i + 1;
                DataRow row = dt.NewRow();
                row["Id"] = id;
                row["Name"] = "Name " + id;
                row["Age"] = id * 10;

                dt.Rows.Add(row);
            }

            Table1.DataSource = dt;
            Table1.DataBind();

            Table2.DataSource = dt;
            Table2.DataBind();

            Table3.DataSource = dt;
            Table3.DataBind();

            Table4.DataSource = dt;
            Table4.DataBind();

            Table5.DataSource = dt;
            Table5.DataBind();
        }

        private void LoadGlyphicons()
        {
            var glyphiconTypes = Enum.GetValues(typeof(Bootstrap.GlyphiconTypes));

            foreach (var item in glyphiconTypes)
            {
                HtmlGenericControl container = new HtmlGenericControl("li");
                container.Attributes.Add("class", "list-group-item text-center col-md-2");

                Bootstrap.GlyphiconTypes glyphiconType = (Bootstrap.GlyphiconTypes)Enum.Parse(typeof(Bootstrap.GlyphiconTypes), item.ToString());
                Bootstrap.Glyphicon glyphicon = new Bootstrap.Glyphicon();
                glyphicon.GlyphiconType = glyphiconType;

                container.Controls.Add(glyphicon);
                container.Controls.Add(new Literal() { Text = "<br /><br />" });
                container.Controls.Add(new Literal() { Text = item.ToString() });

                PlaceHolder1.Controls.Add(container);
            }
        }
    }
}