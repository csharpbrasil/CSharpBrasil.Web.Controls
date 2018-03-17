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
    [ToolboxData("<{0}:LoginForm runat=server></{0}:LoginForm>")]
    public class LoginForm : Control, INamingContainer
    {
        #region Events

        private static readonly object SubmitEvent = new object();

        public event EventHandler Submit
        {
            add
            {
                Events.AddHandler(SubmitEvent, value);
            }
            remove
            {
                Events.RemoveHandler(SubmitEvent, value);
            }
        }

        protected virtual void OnSubmit(LoginFormSubmitEventArgs e)
        {
            EventHandler submitEventDelegate = (EventHandler)Events[SubmitEvent];

            if (submitEventDelegate != null)
            {
                submitEventDelegate(this, e);
            }
        }

        #endregion

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("Please sign in")]
        [Localizable(true)]
        public string Title { get; set; }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("OK")]
        [Localizable(true)]
        public string OkButtonText { get; set; }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("Cancel")]
        [Localizable(true)]
        public string CancelButtonText { get; set; }

        private List<TextField> _LoginFieldTemplate = new List<TextField>();

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public List<TextField> LoginFieldTemplate
        {
            get { return _LoginFieldTemplate; }
        }

        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);

            this.CreateChildControls();
            this.ChildControlsCreated = true;
        }

        protected override void CreateChildControls()
        {
            if (this.LoginFieldTemplate != null)
            {
                foreach (TextField item in this.LoginFieldTemplate)
                {
                    this.Controls.Add(item);
                }

                LoginButton loginButton = new LoginButton();
                loginButton.Text = this.OkButtonText;
                loginButton.Click += loginButton_Click;

                this.Controls.Add(loginButton);
            }
        }

        void loginButton_Click(object sender, EventArgs e)
        {
            OnSubmit(new LoginFormSubmitEventArgs(string.Empty, string.Empty));
        }

        protected override void AddParsedSubObject(object obj)
        {
            if (obj is TextField)
            {
                LoginFieldTemplate.Add((TextField)obj);
                return;
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            Page.VerifyRenderingInServerForm(this);

            writer.AddAttribute(HtmlTextWriterAttribute.Class, "form-signin");
            writer.AddAttribute("role", "form");
            writer.RenderBeginTag(HtmlTextWriterTag.Div);

            writer.AddAttribute(HtmlTextWriterAttribute.Class, "form-signin-heading");
            writer.RenderBeginTag(HtmlTextWriterTag.H2);
            writer.Write(this.Title);
            writer.RenderEndTag();

            base.Render(writer);

            writer.RenderEndTag();
        }
    }

    public class LoginFormSubmitEventArgs : EventArgs
    {
        public string Login { get; set; }
        public string Password { get; set; }

        public LoginFormSubmitEventArgs(string _login, string _password)
        {
            this.Login = _login;
            this.Password = _password;
        }
    }


    [ToolboxItem(false)]
    [ToolboxData("<{0}:LoginField runat=server></{0}:LoginField>")]
    public class TextField : Control, INamingContainer
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string PlaceHolder { get; set; }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue(false)]
        [Localizable(true)]
        public bool Required { get; set; }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public FieldTypes FieldType { get; set; }

        public TextField()
        {
            this.FieldType = FieldTypes.TextField;
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (!string.IsNullOrEmpty(this.PlaceHolder)) writer.AddAttribute("placeholder", this.PlaceHolder);
            if (this.Required) writer.AddAttribute("required", "required");

            writer.AddAttribute("class", "form-control");
            writer.RenderBeginTag(HtmlTextWriterTag.Input);

            base.Render(writer);

            writer.RenderEndTag();
        }
    }

    [ToolboxItem(false)]
    [ToolboxData("<{0}:PasswordField runat=server></{0}:PasswordField>")]
    public class PasswordField : TextField
    {
        public PasswordField()
        {
            this.FieldType = FieldTypes.PasswordField;
        }
    }

    [ToolboxItem(false)]
    public class LoginButton : Button, IPostBackEventHandler
    {
        public event EventHandler Click;

        public string Text { get; set; }

        protected virtual void OnClick(EventArgs e)
        {

            if (Click != null) Click(this, e);
        }

        public void RaisePostBackEvent(string eventArgument)
        {
            OnClick(new EventArgs());
        }

        protected override void Render(HtmlTextWriter output)
        {
            output.Write(string.Format("<input type=\"submit\" class=\"{0}\" name=\"{1}\" value=\"{2}\" />", "btn btn-lg btn-primary btn-block", this.UniqueID, this.Text));
        }
    }

    public enum FieldTypes
    {
        TextField = 0,
        PasswordField = 1,
        RememberMeField = 3
    }
}
