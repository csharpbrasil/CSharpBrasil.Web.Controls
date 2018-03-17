<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExemploGridSystem.aspx.cs" Inherits="CSharpBrasil.Web.Controls.Test.ExemploGridSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <Bootstrap:GridSystem ID="GridSystem1" runat="server">
            <GridSystemTemplate>
                <Bootstrap:GridSystemRow>
                    <GridSystemRowTemplate>
                        <Bootstrap:GridSystemColumn ColumnSize="12">
                            <GridSystemColumnTemplate>
                                <Bootstrap:PageHeader ID="PageHeader1" runat="server" Title="Bootstrap Controls for ASP.NET" SubTitle="by C# Brasil (www.csharpbrasil.com.br)" />
                            </GridSystemColumnTemplate>
                        </Bootstrap:GridSystemColumn>
                    </GridSystemRowTemplate>
                </Bootstrap:GridSystemRow>
                <Bootstrap:GridSystemRow>
                    <GridSystemRowTemplate>
                        <Bootstrap:GridSystemColumn ColumnSize="4">
                            <GridSystemColumnTemplate>
                                <Bootstrap:PageHeader ID="PageHeader2" runat="server" Title="Alert" TitleType="H2" />

                                <Bootstrap:Alert ID="Alert1" runat="server" AlertType="Danger"><p>Alert Danger</p></Bootstrap:Alert>
                                <Bootstrap:Alert ID="Alert2" runat="server" AlertType="Info"><p>Alert Info</p></Bootstrap:Alert>
                                <Bootstrap:Alert ID="Alert3" runat="server" AlertType="Success"><p>Alert Success</p></Bootstrap:Alert>
                                <Bootstrap:Alert ID="Alert4" runat="server" AlertType="Warning"><p>Alert Warning</p></Bootstrap:Alert>

                            </GridSystemColumnTemplate>
                        </Bootstrap:GridSystemColumn>
                        
                        <Bootstrap:GridSystemColumn ColumnSize="4">
                            <GridSystemColumnTemplate>
                                <Bootstrap:PageHeader ID="PageHeader3" runat="server" Title="Buttons" TitleType="H2" />

                                <Bootstrap:Button ID="Button1" runat="server" Text="Button 1" ButtonType="Danger" />
                                <Bootstrap:Button ID="Button2" runat="server" Text="Button 2" ButtonType="Default" />
                                <Bootstrap:Button ID="Button3" runat="server" Text="Button 3" ButtonType="Info" />
                                <Bootstrap:Button ID="Button4" runat="server" Text="Button 4" ButtonType="Link" />
                                <Bootstrap:Button ID="Button5" runat="server" Text="Button 5" ButtonType="Primary" />
                                <Bootstrap:Button ID="Button6" runat="server" Text="Button 6" ButtonType="Success" />
                                <Bootstrap:Button ID="Button7" runat="server" Text="Button 7" ButtonType="Warning" />

                            </GridSystemColumnTemplate>
                        </Bootstrap:GridSystemColumn>
                        
                        <Bootstrap:GridSystemColumn ColumnSize="4">
                            <GridSystemColumnTemplate>
                                <Bootstrap:PageHeader ID="PageHeader4" runat="server" Title="Label" TitleType="H2" />

                                <Bootstrap:Label ID="Label1" runat="server" Text="Label 1" LabelType="Default" />
                                <Bootstrap:Label ID="Label2" runat="server" Text="Label 2" LabelType="Danger" />
                                <Bootstrap:Label ID="Label3" runat="server" Text="Label 3" LabelType="Info" />
                                <Bootstrap:Label ID="Label4" runat="server" Text="Label 4" LabelType="Primary" />
                                <Bootstrap:Label ID="Label5" runat="server" Text="Label 5" LabelType="Success" />
                                <Bootstrap:Label ID="Label6" runat="server" Text="Label 6" LabelType="Warning" />

                            </GridSystemColumnTemplate>
                        </Bootstrap:GridSystemColumn>
                    </GridSystemRowTemplate>
                </Bootstrap:GridSystemRow>
            </GridSystemTemplate>
        </Bootstrap:GridSystem>
    </form>
    <script src="Content/js/jquery-1.11.0.js" type="text/javascript"></script>
    <script src="Content/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
