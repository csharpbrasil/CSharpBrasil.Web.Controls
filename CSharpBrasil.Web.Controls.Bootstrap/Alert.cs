﻿using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpBrasil.Web.Controls.Bootstrap
{
    [ToolboxData("<{0}:Alert runat=server />")]
    [ParseChildren(true, "Content")]
    public class Alert : WebControl, INamingContainer
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

        /// <summary>
        /// Initializes a new instance of the <see cref="Alert" /> class.
        /// </summary>
        public Alert()
        {
            this.AlertType = AlertTypes.Warning;
        }

        /// <summary>
        /// Gets or sets the type of the alert.
        /// </summary>
        /// <value>
        /// The type of the alert.
        /// </value>
        [Category("Appearance")]
        [DefaultValue(AlertTypes.Warning)]
        public AlertTypes AlertType
        {
            get { return (AlertTypes)ViewState["AlertType"]; }
            set { ViewState["AlertType"] = value; }
        }

        /// <summary>
        /// Gets or sets the content.
        /// </summary>
        /// <value>
        /// The content.
        /// </value>
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateContainer(typeof(Alert))]
        [TemplateInstance(TemplateInstance.Single)]
        public virtual ITemplate Content
        {
            get;
            set;
        }

        /// <summary>
        /// Renders the HTML opening tag of the control to the specified writer. This method is used primarily by control developers.
        /// </summary>
        /// <param name="writer">A <see cref="T:System.Web.UI.HtmlTextWriter" /> that represents the output stream to render HTML content on the client.</param>
        public override void RenderBeginTag(HtmlTextWriter writer)
        {
            writer.RenderBeginTag(HtmlTextWriterTag.Div);
        }

        /// <summary>
        /// Renders the HTML closing tag of the control into the specified writer. This method is used primarily by control developers.
        /// </summary>
        /// <param name="writer">A <see cref="T:System.Web.UI.HtmlTextWriter" /> that represents the output stream to render HTML content on the client.</param>
        public override void RenderEndTag(HtmlTextWriter writer)
        {
            writer.RenderEndTag();
        }

        /// <summary>
        /// Renders the control to the specified HTML writer.
        /// </summary>
        /// <param name="writer">The <see cref="T:System.Web.UI.HtmlTextWriter" /> object that receives the control content.</param>
        protected override void Render(HtmlTextWriter writer)
        {
            this.AddCssClass(this.CssClass);
            this.AddCssClass("alert");

            switch (this.AlertType)
            {
                case AlertTypes.Success:
                    this.AddCssClass("alert-success");
                    break;
                case AlertTypes.Danger:
                    this.AddCssClass("alert-danger");
                    break;
                case AlertTypes.Info:
                    this.AddCssClass("alert-info");
                    break;
                case AlertTypes.Warning:
                default:
                    this.AddCssClass("alert-warning");
                    break;
            }

            writer.AddAttribute(HtmlTextWriterAttribute.Id, this.ClientID);
            writer.AddAttribute(HtmlTextWriterAttribute.Name, this.UniqueID);
            if (!String.IsNullOrEmpty(this.sCssClass)) writer.AddAttribute(HtmlTextWriterAttribute.Class, this.sCssClass);

            base.Render(writer);
        }

        /// <summary>
        /// Renders the contents.
        /// </summary>
        /// <param name="output">The output.</param>
        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write("<button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>");
            this.RenderChildren(output);
        }

        /// <summary>
        /// Raises the <see cref="E:System.Web.UI.Control.Init" /> event.
        /// </summary>
        /// <param name="e">An <see cref="T:System.EventArgs" /> object that contains the event data.</param>
        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);

            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        /// <summary>
        /// Called by the ASP.NET page framework to notify server controls that use composition-based implementation to create any child controls they contain in preparation for posting back or rendering.
        /// </summary>
        protected override void CreateChildControls()
        {
            var container = new Control();
            this.Content.InstantiateIn(container);

            this.Controls.Clear();
            this.Controls.Add(container);
        }
    }
}
