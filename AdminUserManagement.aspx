<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserManagement.aspx.cs" Inherits="TeamMark1.AdminUserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>Customer Details</h4></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><img width="100px" src="img/userlogin.jpg" /></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                <div class="input-group">
                                <asp:TextBox class="form-control" ID="textbox1" runat="server" />
                                <asp:Button class="btn btn-primary" ID="button5" runat="server" Text="Go" />
                                </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                <asp:TextBox class="form-control" ID="textbox2" runat="server" ReadOnly="true" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control mr-1" ID="textbox3" runat="server" ReadOnly="true" />
                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="linkbutton1" runat="server" Text="A">
                                            <i class="fas fa-check-circle"></i> 
                                        </asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning mr-1" ID="linkbutton2" runat="server" Text="P">
                                            <i class="fas fa-pause-circle"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-danger mr-1" ID="linkbutton3" runat="server" Text="D">
                                            <i class="fas fa-times-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>DOB</label>
                                <div class="form-group">
                                <asp:TextBox class="form-control" ID="textbox4" runat="server" TextMode="Date" ReadOnly="true" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                <asp:TextBox class="form-control" ID="textbox5" runat="server" TextMode="Number" ReadOnly="true" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="textbox6" runat="server" TextMode="Email" ReadOnly="true" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Button CssClass="btn btn-danger btn-lg btn-block" ID="button4" runat="server" Text="Delete User Permanently" /> 
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
                                <center><h4>Customer List</h4></center>
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
