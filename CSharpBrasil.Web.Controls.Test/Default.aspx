<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CSharpBrasil.Web.Controls.Test._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="page-header">
                <h1>Bootstrap<sup>*</sup> Controls for ASP.NET <small>by C# Brasil (www.csharpbrasil.com.br)</small></h1>
            </div>
            <div class="row">
                <div class="col-xs-4">
                    <h2>Alerts</h2>
                    <Bootstrap:Alert ID="Alert1" runat="server" AlertType="Danger"><p>Alert Danger</p></Bootstrap:Alert>
                    <Bootstrap:Alert ID="Alert2" runat="server" AlertType="Info"><p>Alert Info</p></Bootstrap:Alert>
                    <Bootstrap:Alert ID="Alert3" runat="server" AlertType="Success"><p>Alert Success</p></Bootstrap:Alert>
                    <Bootstrap:Alert ID="Alert4" runat="server" AlertType="Warning"><p>Alert Warning</p></Bootstrap:Alert>
                </div>
                <div class="col-xs-4">
                    <h2>Buttons</h2>
                    <Bootstrap:Button ID="Button1" runat="server" Text="Button 1" ButtonType="Danger" />
                    <Bootstrap:Button ID="Button2" runat="server" Text="Button 2" ButtonType="Default" />
                    <Bootstrap:Button ID="Button3" runat="server" Text="Button 3" ButtonType="Info" />
                    <Bootstrap:Button ID="Button4" runat="server" Text="Button 4" ButtonType="Link" />
                    <Bootstrap:Button ID="Button5" runat="server" Text="Button 5" ButtonType="Primary" />
                    <Bootstrap:Button ID="Button6" runat="server" Text="Button 6" ButtonType="Success" />
                    <Bootstrap:Button ID="Button7" runat="server" Text="Button 7" ButtonType="Warning" />
                </div>
                <div class="col-xs-4">
                    <Bootstrap:PageHeader ID="PageHeader1" runat="server" Title="PageHeader" SubTitle="SubTitle PageHeader" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3">
                    <h2>Table Bordered</h2>
                    <Bootstrap:Table ID="Table1" runat="server" Bordered="true">
                        <Columns>
                            <Bootstrap:BoundColumn FieldName="Id" Header="Id" />
                            <Bootstrap:BoundColumn FieldName="Name" Header="Name" />
                            <Bootstrap:BoundColumn FieldName="Age" Header="Age" />
                        </Columns>
                    </Bootstrap:Table>
                </div>
                <div class="col-xs-3">
                    <h2>Table Condensed</h2>
                    <Bootstrap:Table ID="Table2" runat="server" Condensed="true">
                        <Columns>
                            <Bootstrap:BoundColumn FieldName="Id" Header="Id" />
                            <Bootstrap:BoundColumn FieldName="Name" Header="Name" />
                            <Bootstrap:BoundColumn FieldName="Age" Header="Age" />
                        </Columns>
                    </Bootstrap:Table>
                </div>
                <div class="col-xs-3">
                    <h2>Table Striped</h2>
                    <Bootstrap:Table ID="Table3" runat="server" Striped="true">
                        <Columns>
                            <Bootstrap:BoundColumn FieldName="Id" Header="Id" />
                            <Bootstrap:BoundColumn FieldName="Name" Header="Name" />
                            <Bootstrap:BoundColumn FieldName="Age" Header="Age" />
                        </Columns>
                    </Bootstrap:Table>
                </div>
                <div class="col-xs-3">
                    <h2>Table Hover</h2>
                    <Bootstrap:Table ID="Table4" runat="server" Hover="true">
                        <Columns>
                            <Bootstrap:BoundColumn FieldName="Id" Header="Id" />
                            <Bootstrap:BoundColumn FieldName="Name" Header="Name" />
                            <Bootstrap:BoundColumn FieldName="Age" Header="Age" />
                        </Columns>
                    </Bootstrap:Table>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h2>Images</h2>
                    <div class="row">
                        <div class="col-xs-3 text-center">
                            <Bootstrap:Image ID="Image1" runat="server" ImageType="Rounded" ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDAiIGhlaWdodD0iMTQwIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjcwIiB5PSI3MCIgc3R5bGU9ImZpbGw6I2FhYTtmb250LXdlaWdodDpib2xkO2ZvbnQtc2l6ZToxMnB4O2ZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2RvbWluYW50LWJhc2VsaW5lOmNlbnRyYWwiPjE0MHgxNDA8L3RleHQ+PC9zdmc+" />
                            <br />
                            Rounded
                        </div>
                        <div class="col-xs-3 text-center">
                            <Bootstrap:Image ID="Image2" runat="server" ImageType="Thumbnail" ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDAiIGhlaWdodD0iMTQwIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjcwIiB5PSI3MCIgc3R5bGU9ImZpbGw6I2FhYTtmb250LXdlaWdodDpib2xkO2ZvbnQtc2l6ZToxMnB4O2ZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2RvbWluYW50LWJhc2VsaW5lOmNlbnRyYWwiPjE0MHgxNDA8L3RleHQ+PC9zdmc+" />
                            <br />
                            Thumbnail
                        </div>
                        <div class="col-xs-3 text-center">
                            <Bootstrap:Image ID="Image3" runat="server" ImageType="Circle" ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDAiIGhlaWdodD0iMTQwIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjcwIiB5PSI3MCIgc3R5bGU9ImZpbGw6I2FhYTtmb250LXdlaWdodDpib2xkO2ZvbnQtc2l6ZToxMnB4O2ZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2RvbWluYW50LWJhc2VsaW5lOmNlbnRyYWwiPjE0MHgxNDA8L3RleHQ+PC9zdmc+" />
                            <br />
                            Circle
                        </div>
                        <div class="col-xs-3 text-center">
                            <Bootstrap:Image ID="Image4" runat="server" ImageType="None" ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDAiIGhlaWdodD0iMTQwIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjcwIiB5PSI3MCIgc3R5bGU9ImZpbGw6I2FhYTtmb250LXdlaWdodDpib2xkO2ZvbnQtc2l6ZToxMnB4O2ZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2RvbWluYW50LWJhc2VsaW5lOmNlbnRyYWwiPjE0MHgxNDA8L3RleHQ+PC9zdmc+" />
                            <br />
                            None
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <h2>Panel</h2>

                    <Bootstrap:Panel ID="Panel1" runat="server" PanelType="Primary" ShowPanelFooter="true" ShowPanelTitle="true" ShowPanelBody="true">
                        <TitleTemplate>
                            This is the title panel
                        </TitleTemplate>
                        <BodyTemplate>
                            <p>This is the body panel</p>
                        </BodyTemplate>
                        <TableTemplate>
                            <Bootstrap:Table ID="Table5" runat="server" Hover="true">
                                <Columns>
                                    <Bootstrap:BoundColumn FieldName="Id" Header="Id" />
                                    <Bootstrap:BoundColumn FieldName="Name" Header="Name" />
                                    <Bootstrap:BoundColumn FieldName="Age" Header="Age" />
                                </Columns>
                            </Bootstrap:Table>
                        </TableTemplate>
                        <FooterTemplate>
                            This is the footer panel
                        </FooterTemplate>
                    </Bootstrap:Panel>

                </div>
                <div class="col-xs-6">
                    <h2>Carousel</h2>
                    
                <Bootstrap:Carousel ID="Carousel1" runat="server" GlyphiconNext="ChevronRight" GlyphiconPrev="ChevronLeft">
                    <CarouselTemplate>
                        <Bootstrap:CarouselItem AlternativeText="First slide" 
                            ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzc3NyIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNTU1O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+Rmlyc3Qgc2xpZGU8L3RleHQ+PC9zdmc+">
                            <CarouselCaptionTemplate>
                                <h4>First slide</h4>
                                <p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </CarouselCaptionTemplate>
                        </Bootstrap:CarouselItem>
                        <Bootstrap:CarouselItem AlternativeText="Second slide" 
                            ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzY2NiIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNDQ0O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+U2Vjb25kIHNsaWRlPC90ZXh0Pjwvc3ZnPg==">
                            <CarouselCaptionTemplate>
                                <h4>Second slide</h4>
                                <p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </CarouselCaptionTemplate>
                        </Bootstrap:CarouselItem>
                        <Bootstrap:CarouselItem AlternativeText="Third slide" ImageUrl="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzU1NSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojMzMzO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+VGhpcmQgc2xpZGU8L3RleHQ+PC9zdmc+">
                            <CarouselCaptionTemplate>
                                <h4>Third slide</h4>
                                <p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </CarouselCaptionTemplate>
                        </Bootstrap:CarouselItem>
                    </CarouselTemplate>
                </Bootstrap:Carousel>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <h2>List Group</h2>
                    <Bootstrap:ListGroup ID="ListGroup1" runat="server" Linked="true">
                        <ListGroupItens>
                            <Bootstrap:ListGroupItem ActiveItem="true">
                                <Content>
                                    <h4 class="list-group-item-heading">List group item heading</h4>
                                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </Content>
                            </Bootstrap:ListGroupItem>
                            <Bootstrap:ListGroupItem>
                                <Content>
                                    <h4 class="list-group-item-heading">List group item heading</h4>
                                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </Content>
                            </Bootstrap:ListGroupItem>
                            <Bootstrap:ListGroupItem>
                                <Content>
                                    <h4 class="list-group-item-heading">List group item heading</h4>
                                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </Content>
                            </Bootstrap:ListGroupItem>
                        </ListGroupItens>
                    </Bootstrap:ListGroup>
                </div>
                <div class="col-xs-6">
                    <h2>Collapse</h2>
<Bootstrap:Collapse ID="Collapse1" runat="server">
    <CollapseTemplate>
        <Bootstrap:CollapseItem ID="CollapseItem1" runat="server" Opened="true">
            <HeaderTemplate>
                Collapsible Group Item #1
            </HeaderTemplate>
            <BodyTemplate>
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>

                <Bootstrap:Button ID="Button11" runat="server" ButtonType="Danger" Text="Button Sample" />

            </BodyTemplate>
        </Bootstrap:CollapseItem>
        <Bootstrap:CollapseItem ID="CollapseItem2" runat="server" Opened="false">
            <HeaderTemplate>
                Collapsible Group Item #2
            </HeaderTemplate>
            <BodyTemplate>
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>

                <Bootstrap:Button ID="Button12" runat="server" ButtonType="Success" Text="Button Sample" />
            </BodyTemplate>
        </Bootstrap:CollapseItem>
        <Bootstrap:CollapseItem ID="CollapseItem3" runat="server" Opened="false">
            <HeaderTemplate>
                Collapsible Group Item #3
            </HeaderTemplate>
            <BodyTemplate>
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>

                <Bootstrap:Button ID="Button13" runat="server" ButtonType="Warning" Text="Button Sample" />
            </BodyTemplate>
        </Bootstrap:CollapseItem>
        <Bootstrap:CollapseItem ID="CollapseItem4" runat="server" Opened="false">
            <HeaderTemplate>
                Collapsible Group Item #4
            </HeaderTemplate>
            <BodyTemplate>
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>

                <Bootstrap:Button ID="Button14" runat="server" ButtonType="Info" Text="Button Sample" />
            </BodyTemplate>
        </Bootstrap:CollapseItem>
    </CollapseTemplate>
</Bootstrap:Collapse>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3">
                    <h2>Wells</h2>
                    <Bootstrap:Well ID="Well1" runat="server" Text="Look, I'm in a well!" WellType="Normal" />
                    <Bootstrap:Well ID="Well2" runat="server" Text="Look, I'm in a well!" WellType="Small" />
                    <Bootstrap:Well ID="Well3" runat="server" Text="Look, I'm in a well!" WellType="Large" />
                </div>
                <div class="col-xs-3">
                    <h2>Label</h2>
                    <Bootstrap:Label ID="Label1" runat="server" Text="Label 1" LabelType="Default" />
                    <Bootstrap:Label ID="Label2" runat="server" Text="Label 2" LabelType="Danger" />
                    <Bootstrap:Label ID="Label3" runat="server" Text="Label 3" LabelType="Info" />
                    <Bootstrap:Label ID="Label4" runat="server" Text="Label 4" LabelType="Primary" />
                    <Bootstrap:Label ID="Label5" runat="server" Text="Label 5" LabelType="Success" />
                    <Bootstrap:Label ID="Label6" runat="server" Text="Label 6" LabelType="Warning" />
                </div>
                <div class="col-xs-3">
                    <h2>Breadcrumbs</h2>
                    <Bootstrap:Breadcrumb ID="Breadcrumb1" runat="server">
                        <asp:ListItem Text="Home" />
                    </Bootstrap:Breadcrumb>

                    <Bootstrap:Breadcrumb ID="Breadcrumb2" runat="server">
                        <asp:ListItem Text="Home" />
                        <asp:ListItem Text="Library" />
                    </Bootstrap:Breadcrumb>

                    <Bootstrap:Breadcrumb ID="Breadcrumb3" runat="server">
                        <asp:ListItem Text="Home" />
                        <asp:ListItem Text="Library" />
                        <asp:ListItem Text="Data" />
                    </Bootstrap:Breadcrumb>
                </div>
                <div class="col-xs-3">
                    <h2>Progress bars</h2>
                    <Bootstrap:ProgressBar ID="ProgressBar1" runat="server" LabelFormat="{0}% Completed" ShowLabel="false" Animated="true" Striped="false" ProgressBarStyle="Danger" MinimumValue="0" MaximumValue="100" CurrentValue="25" />
                    <Bootstrap:ProgressBar ID="ProgressBar2" runat="server" LabelFormat="{0}% Completed" ShowLabel="false" Animated="false" Striped="true" ProgressBarStyle="Info" MinimumValue="0" MaximumValue="100" CurrentValue="50" />
                    <Bootstrap:ProgressBar ID="ProgressBar3" runat="server" LabelFormat="{0}% Completed" ShowLabel="true" Animated="true" Striped="true" ProgressBarStyle="Success" MinimumValue="0" MaximumValue="100" CurrentValue="75" />
                    <Bootstrap:ProgressBar ID="ProgressBar4" runat="server" LabelFormat="{0}% Completed" ShowLabel="true" Animated="true" Striped="true" ProgressBarStyle="Warning" MinimumValue="0" MaximumValue="100" CurrentValue="100" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h2>Modal</h2>
                    <Bootstrap:Button ID="Button8" runat="server" TargetModalID="Modal1" ButtonType="Primary">
                    </Bootstrap:Button>
                    
                    <Bootstrap:Modal ID="Modal1" runat="server" CancelButtonID="Button10">
                        <Header>
                            Modal Title 1 - From Header Template
                        </Header>
                        <Body>
                            <h4>Lorem ipsum dolor sit amet</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu suscipit diam. Praesent nec diam in purus elementum suscipit. In dictum non felis eu fringilla. Phasellus volutpat, turpis ut porttitor vulputate, massa velit dignissim lorem, id lacinia massa felis ac lectus. Curabitur eget lectus nec quam tincidunt dapibus nec a leo. Pellentesque tincidunt ornare luctus. Phasellus quam est, malesuada in porttitor non, ullamcorper id lacus. Aenean tempor sit amet nulla sed ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque in enim vel lectus imperdiet tincidunt vel ut lectus.</p>
                            <p>Vestibulum ultricies neque et libero posuere scelerisque. Nam at dignissim diam, et feugiat sem. Ut in urna vitae arcu dignissim adipiscing a et elit. Duis pellentesque sapien nec interdum porttitor. In dolor justo, pretium id mattis sit amet, molestie gravida leo. Cras mollis, diam at condimentum luctus, tortor libero dictum diam, vitae auctor odio augue id est. Integer pharetra faucibus urna ultrices ultrices. Donec pellentesque id felis quis egestas. Etiam vehicula odio et orci ultrices, nec luctus justo eleifend. Phasellus commodo metus vel eros gravida volutpat. Vivamus eget felis sodales, porta magna et, aliquam orci. Nam non odio in dolor pulvinar elementum. Aenean ipsum ipsum, dictum vitae tincidunt ac, tempor id nibh. Donec eu porta nulla. Morbi a nulla vestibulum quam auctor mattis.</p>
                            <p>Nulla non neque iaculis, luctus metus eget, accumsan libero. Cras hendrerit pellentesque mi, non imperdiet arcu varius ac. Nulla a posuere nisi. Cras semper id mauris ut varius. Aenean suscipit ante ac purus porttitor, sed luctus nisl faucibus. Curabitur sagittis nec dolor sed pretium. Duis in sollicitudin turpis, id rutrum justo.</p>
                        </Body>
                        <Footer>
                            <Bootstrap:Button ID="Button9" runat="server" ButtonType="Default" Text="OK" />
                            <Bootstrap:Button ID="Button10" runat="server" ButtonType="Primary" Text="Cancel" data-dismiss="modal" />
                        </Footer>
                    </Bootstrap:Modal>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h2>Glyphicon</h2>
                    <ul class="list-group list-inline">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <p>* Bootstrap version 3.1.1</p>
                </div>
            </div>
        </div>
    </form>
    <script src="Content/js/jquery-1.11.0.js" type="text/javascript"></script>
    <script src="Content/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
