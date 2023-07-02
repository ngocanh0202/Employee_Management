<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="total_earnings.aspx.cs" Inherits="Employee_Management.total_earnings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField HeaderText="Employee ID">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Employee_ID") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Full Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fullname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Shareholder">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Shareholder_Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Employee Status">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Employment_Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="department">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</asp:Content>
