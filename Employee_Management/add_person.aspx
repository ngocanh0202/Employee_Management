<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="add_person.aspx.cs" Inherits="Employee_Management.add_person" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Employee ID</td>
            <td>
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>First Name
            </td>
            <td>
                <asp:TextBox ID="txt_FN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name
            </td>
            <td>
                <asp:TextBox ID="txt_LN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Middle Initial
            </td>
            <td>
                <asp:TextBox ID="txt_MI" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ethnicity
            </td>
            <td>
                <asp:TextBox ID="txt_Ethnicity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Gender
            </td>
            <td>
                <asp:RadioButtonList ID="genderRadioButtonList" runat="server">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Shareholder Status
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                    <asp:ListItem Text="No" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Employment Status
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                    <asp:ListItem Text="Full-time" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Part-time" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Department
            </td>
            <td>

            </td>
        </tr>
    </table>
</asp:Content>
