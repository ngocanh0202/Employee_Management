<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home-page.aspx.cs" Inherits="Employee_Management.home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/home.css" />
    <asp:Button ID="Button1" CssClass="button_add" runat="server" Text="ADD" OnClick="Button1_Click" />
    <div class="data_gridview">
        <asp:GridView ID="GridView1" CssClass="table_gridview" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Mã nhân viên">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Employee_ID") %>' Text='<%# Eval("Employee_ID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên nhân viên">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("fullname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dân tộc">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ethnicity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giới tính">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
