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
    [ToolboxData("<{0}:PageHeader runat=server />")]
    public class PageHeader : Control, INamingContainer
    {
        public PageHeader()
        {
            this.TitleType = TitleTypes.H1;
        }

        [Category("Appearance")]
        [DefaultValue(TitleTypes.H1)]
        public TitleTypes TitleType { get; set; }
        
        /// <summary>
        /// Gets or sets the title.
        /// </summary>
        /// <value>
        /// The title.
        /// </value>
        [Category("Appearance")]
        [DefaultValue("")]
        public string Title
        {
            get { return (string)ViewState["Title"]; }
            set { ViewState["Title"] = value; }
        }

        /// <summary>
        /// Gets or sets the sub title.
        /// </summary>
        /// <value>
        /// The sub title.
        /// </value>
        [Category("Appearance")]
        [DefaultValue("")]
        public string SubTitle
        {
            get { return (string)ViewState["SubTitle"]; }
            set { ViewState["SubTitle"] = value; }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            writer.AddAttribute(HtmlTextWriterAttribute.Id, this.ClientID);
            writer.AddAttribute(HtmlTextWriterAttribute.Name, this.UniqueID);
            writer.AddAttribute(HtmlTextWriterAttribute.Class, "page-header");
            writer.RenderBeginTag(HtmlTextWriterTag.Div);
            
            writer.RenderBeginTag(GetTitleTag(this.TitleType));
            writer.Write(this.Title);

            if (!string.IsNullOrEmpty(this.SubTitle))
            {
                writer.RenderBeginTag(HtmlTextWriterTag.Small);
                writer.Write(this.SubTitle);
                writer.RenderEndTag();
            }

            writer.RenderEndTag();

            writer.RenderEndTag();
        }

        private HtmlTextWriterTag GetTitleTag(TitleTypes titleType)
        {
            HtmlTextWriterTag tag = HtmlTextWriterTag.H1;

            switch (titleType)
            {
                case TitleTypes.H1:
                    tag = HtmlTextWriterTag.H1;
                    break;
                case TitleTypes.H2:
                    tag = HtmlTextWriterTag.H2;
                    break;
                case TitleTypes.H3:
                    tag = HtmlTextWriterTag.H3;
                    break;
                case TitleTypes.H4:
                    tag = HtmlTextWriterTag.H4;
                    break;
                case TitleTypes.H5:
                    tag = HtmlTextWriterTag.H5;
                    break;
                case TitleTypes.H6:
                    tag = HtmlTextWriterTag.H6;
                    break;
                default:
                    break;
            }

            return tag;
        }
    }
}
