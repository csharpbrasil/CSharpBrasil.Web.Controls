using System;
using System.ComponentModel;
using System.Web.UI;

namespace CSharpBrasil.Web.Controls.Bootstrap
{
    [ToolboxData("<{0}:Button runat=server />")]
    [DefaultProperty("Text")]
    public class Button : System.Web.UI.WebControls.LinkButton
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

        [Category("Appearance")]
        [DefaultValue(ButtonTypes.Default)]
        public ButtonTypes ButtonType
        {
            get { return (ButtonTypes)ViewState["ButtonType"]; }
            set { ViewState["ButtonType"] = value; }
        }

        [Category("Appearance")]
        [DefaultValue("")]
        public string TargetModalID
        {
            get { return (string)ViewState["TargetModalID"]; }
            set { ViewState["TargetModalID"] = value; }
        }

        public Button()
        {

        }
        
        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            string buttonType = string.Empty;

            switch (this.ButtonType)
            {
                case ButtonTypes.Default:
                    buttonType = "btn-default";
                    break;
                case ButtonTypes.Primary:
                    buttonType = "btn-primary";
                    break;
                case ButtonTypes.Success:
                    buttonType = "btn-success";
                    break;
                case ButtonTypes.Info:
                    buttonType = "btn-info";
                    break;
                case ButtonTypes.Warning:
                    buttonType = "btn-warning";
                    break;
                case ButtonTypes.Danger:
                    buttonType = "btn-danger";
                    break;
                case ButtonTypes.Link:
                    buttonType = "btn-link";
                    break;
                default:
                    break;
            }

            if (string.IsNullOrEmpty(this.Text)) this.Text = this.ID;

            if (!string.IsNullOrEmpty(this.TargetModalID))
            {
                writer.AddAttribute("data-toggle", "modal");
                writer.AddAttribute("data-target", string.Format("#{0}", this.TargetModalID));
            }

            this.AddCssClass(this.CssClass);
            this.AddCssClass("btn");
            this.AddCssClass(buttonType);
            this.CssClass = this.sCssClass;

            base.Render(writer);
        }
    }
}
