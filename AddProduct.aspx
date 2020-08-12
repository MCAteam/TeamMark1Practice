<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="TeamMark1.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">                        
                        
                        <div class="row">
                            <div class="col-6">
                                <Label>Product Name </Label>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-group" runat="server" ID="textbox1"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <Label>Product Type </Label>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:DropDownList runat="server">
                                        <asp:ListItem>Elephant</asp:ListItem>
                                        <asp:ListItem>Pen</asp:ListItem>
                                        <asp:ListItem>Pen Holder</asp:ListItem>
                                    </asp:DropDownList> <br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <Label>Product Size </Label>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="textbox2" placeholder="gram" />
                                    <asp:TextBox runat="server" ID="textbox3" placeholder="cm" />
                                    <asp:TextBox runat="server" ID="textbox4" placeholder="cm" />           
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Button CssClass="btn-info btn-block" runat="server" Text="Add" />
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center><h4>Product List</h4></center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="gridview1" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        </div>
    </div>
</asp:Content>
