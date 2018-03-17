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
    [ToolboxData("<{0}:Label runat=server />")]
    public class Label : System.Web.UI.WebControls.Label
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

        public Label()
        {
            this.LabelType = LabelTypes.Default;
        }

        [Category("Appearance")]
        [DefaultValue(LabelTypes.Default)]
        public LabelTypes LabelType
        {
            get { return (LabelTypes)ViewState["LabelType"]; }
            set { ViewState["LabelType"] = value; }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            this.AddCssClass(this.CssClass);
            this.AddCssClass("label");

            switch (this.LabelType)
            {
                case LabelTypes.Primary:
                    this.AddCssClass("label-primary");
                    break;
                case LabelTypes.Success:
                    this.AddCssClass("label-success");
                    break;
                case LabelTypes.Info:
                    this.AddCssClass("label-info");
                    break;
                case LabelTypes.Warning:
                    this.AddCssClass("label-warning");
                    break;
                case LabelTypes.Danger:
                    this.AddCssClass("label-danger");
                    break;
                case LabelTypes.Default:
                default:
                    this.AddCssClass("label-default");
                    break;
            }

            this.CssClass = this.sCssClass;

            base.Render(writer);
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(this.Text);

            this.RenderChildren(output);
        }
    }
}
