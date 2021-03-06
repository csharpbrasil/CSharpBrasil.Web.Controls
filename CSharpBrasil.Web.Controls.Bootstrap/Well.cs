﻿using System;
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
    [ToolboxData("<{0}:Well runat=server></{0}:Well>")]
    public class Well : WebControl
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

        public Well() : base("div")
        {
            this.WellType = WellTypes.Normal;
        }


        [Category("Appearance")]
        [DefaultValue(WellTypes.Normal)]
        public WellTypes WellType
        {
            get { return (WellTypes)ViewState["WellType"]; }
            set { ViewState["WellType"] = value; }
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
            this.AddCssClass("well");

            switch (this.WellType)
            {
                case WellTypes.Small:
                    this.AddCssClass("well-sm");
                    break;
                case WellTypes.Large:
                    this.AddCssClass("well-lg");
                    break;
                case WellTypes.Normal:
                default:
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
