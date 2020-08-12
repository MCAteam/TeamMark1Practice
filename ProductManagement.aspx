<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="TeamMark1.ProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <asp:Button CssClass="btn btn-success btn-block btn-lg" runat="server" ID="button1" Text="Add Product" OnClick="button1_Click"/>
                            </div>
                            <div class="col">
                                <asp:Button CssClass="btn-danger btn-block btn-lg" runat="server" ID="button2" Text="Remove Product" OnClick="button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
           
    </div>
</asp:Content>
