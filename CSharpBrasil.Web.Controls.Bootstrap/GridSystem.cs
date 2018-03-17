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
    [ParseChildren(true)]
    [PersistChildren(false)]
    [ToolboxData("<{0}:GridSystem runat=server></{0}:GridSystem>")]
    public class GridSystem : Control, INamingContainer
    {
        private List<GridSystemRow> _GridSystemTemplate = new List<GridSystemRow>();

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public List<GridSystemRow> GridSystemTemplate
        {
            get { return _GridSystemTemplate; }
            set { _GridSystemTemplate = value; }
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        protected override void CreateChildControls()
        {
            if (this.GridSystemTemplate != null)
            {
                foreach (GridSystemRow item in this.GridSystemTemplate)
                {
                    this.Controls.Add(item);
                }
            }
        }

        protected override void AddParsedSubObject(object obj)
        {
            if (obj is GridSystemRow)
            {
                base.AddParsedSubObject(obj);
                return;
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            writer.AddAttribute(HtmlTextWriterAttribute.Class, "container");
            writer.RenderBeginTag(HtmlTextWriterTag.Div);

            base.Render(writer);

            writer.RenderEndTag();
        }
    }

    [ParseChildren(true)]
    [PersistChildren(false)]
    [ToolboxItem(false)]
    public class GridSystemRow : Control, INamingContainer
    {
        private List<GridSystemColumn> _GridSystemRowTemplate = new List<GridSystemColumn>();

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public List<GridSystemColumn> GridSystemRowTemplate
        {
            get { return _GridSystemRowTemplate; }
            set { _GridSystemRowTemplate = value; }
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        protected override void CreateChildControls()
        {
            if (this.GridSystemRowTemplate != null)
            {
                foreach (GridSystemColumn item in this.GridSystemRowTemplate)
                {
                    this.Controls.Add(item);
                }
            }
        }

        protected override void AddParsedSubObject(object obj)
        {
            if (obj is GridSystemColumn)
            {
                base.AddParsedSubObject(obj);
                return;
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            writer.AddAttribute(HtmlTextWriterAttribute.Class, "row");
            writer.RenderBeginTag(HtmlTextWriterTag.Div);

            base.Render(writer);

            writer.RenderEndTag();
        }
    }

    [ParseChildren(true)]
    [PersistChildren(false)]
    [ToolboxItem(false)]
    public class GridSystemColumn : Control, INamingContainer
    {
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateContainer(typeof(GridSystemColumnTemplate))]
        [TemplateInstance(TemplateInstance.Single)]
        public ITemplate GridSystemColumnTemplate { get; set; }

        [Bindable(false)]
        [Localizable(true)]
        [Browsable(true)]
        [DefaultValue(12)]
        public int ColumnSize { get; set; }

        public GridSystemColumn()
        {
            this.ColumnSize = 12;
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        public override void DataBind()
        {
            base.OnDataBinding(EventArgs.Empty);

            Controls.Clear();
            ClearChildViewState();
            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        protected override void CreateChildControls()
        {
            if (this.GridSystemColumnTemplate != null)
            {
                GridSystemColumnTemplate gridSystemColumnTemplate = new GridSystemColumnTemplate();
                this.GridSystemColumnTemplate.InstantiateIn(gridSystemColumnTemplate);
                Controls.Add(gridSystemColumnTemplate);
            }
        }
        
        protected override void Render(HtmlTextWriter writer)
        {
            writer.AddAttribute(HtmlTextWriterAttribute.Class, string.Format("col-xs-{0}", this.ColumnSize));
            writer.RenderBeginTag(HtmlTextWriterTag.Div);

            base.Render(writer);

            writer.RenderEndTag();
        }
    }

    [ParseChildren(true)]
    [PersistChildren(false)]
    [ToolboxItem(false)]
    public class GridSystemColumnTemplate  : Control, INamingContainer
    {

    }
}
