<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="TeamMark1.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center><img width="100px" src="img/userlogin.jpg" /></center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center><h3>User Registration</h3></center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label><br />
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="textbox1" runat="server" placeholder="Full Name"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label><br />
                                <div class="form-group">
                                <asp:TextBox cssclass="form-control" ID="textbox2" runat="server" placeholder="Date of Birth" TextMode="Date"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label><br />
                                <div class="from-group">
                                <asp:TextBox CssClass="form-control" ID="textbox3" runat="server" placeholder="Contact Number" TextMode="Number"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label><br />
                                <div class="from-group">
                                <asp:TextBox CssClass="form-control" ID="textbox4" runat="server" placeholder="Email" TextMode="Email"/>
                                </div>
                            </div>
                        </div>
                        
                        <br />

                        <div class="row">
                            <div class="col">  
                                <center><span class="badge badge-pill badge-dark"> Login Credentials</span></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label><br />
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="textbox8" runat="server" placeholder="UserID"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label><br />
                                <div class="from-group">
                                <asp:TextBox CssClass="form-control" ID="textbox9" runat="server" placeholder="Password" TextMode="password"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button" runat="server" text="Sign Up" OnClick="Button_Click"/>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            
                <a href="homepage.aspx"> << go to homepage</a><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
