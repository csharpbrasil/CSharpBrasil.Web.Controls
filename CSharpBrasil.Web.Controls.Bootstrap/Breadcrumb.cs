using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpBrasil.Web.Controls.Bootstrap
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:Breadcrumb runat=server></{0}:Breadcrumb>")]
    public class Breadcrumb : System.Web.UI.WebControls.BulletedList
    {
        #region CssClass method

        string sCssClass = "";

        /// <summary>
        /// Adds the CSS class.
        /// </summary>
        /// <param name="cssClass">The CSS class.</param>
        private void AddCssClass(string cssClass)
        {
            if (String.IsNullOrEmpty(this.sCssClass))
            {
                this.sCssClass = cssClass;
            }
            else
            {
                this.sCssClass += " " + cssClass;
            }
        }

        #endregion

        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            this.AddCssClass(this.CssClass);
            this.AddCssClass("breadcrumb");

            this.CssClass = this.sCssClass;

            base.Render(writer);
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(Text);
            base.RenderContents(output);
        }
    }
}
