<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="add_person.aspx.cs" Inherits="Employee_Management.add_person" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-decoration: underline">ADD PERSON</h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table>
        <tr>
            <td>Employee ID</td>
            <td>
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ForeColor="red" ControlToValidate="txt_id" ValidationExpression="^\d+$" runat="server" ErrorMessage="Vui lòng nhập số "></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt_id" runat="server" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
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
                    <asp:ListItem Selected="True" Text="Male" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Shareholder Status
            </td>
            <td>
                <asp:RadioButtonList ID="shareholderButtonList1" runat="server">
                    <asp:ListItem Selected="True" Text="Yes" Value="1"></asp:ListItem>
                    <asp:ListItem Text="No" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Employment Status
            </td>
            <td>
                <asp:RadioButtonList ID="employmentButtonList2" runat="server">
                    <asp:ListItem Selected="True" Text="Full-time" Value="Full-time"></asp:ListItem>
                    <asp:ListItem Text="Part-time" Value="Part-time"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Department
            </td>
            <td>
                <asp:TextBox ID="txt_department" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Job Title
            </td>
            <td>
                <asp:TextBox ID="txt_job_title" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Start_Date
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txt_start_date" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/calendar.png" Width="25px" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" />
                        <asp:Calendar ID="Calendar1" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>End_Date
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txt_end_date" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/calendar.png" Width="25px" ImageAlign="AbsBottom" OnClick="ImageButton2_Click" />
                        <asp:Calendar ID="Calendar2" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>Social Security Number (SSN)
            </td>
            <td>
                <asp:TextBox ID="txt_ssn" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="red" ControlToValidate="txt_ssn" ValidationExpression="^\d+$" runat="server" ErrorMessage="Vui lòng nhập số "></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt_ssn" runat="server" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Pay Amount</td>
            <td>
                <asp:TextBox ID="txt_pay_amount" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txt_pay_amount" ValidationExpression="^\d+$" runat="server" ErrorMessage="Vui lòng nhập số "></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txt_pay_amount" runat="server" ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Vacation days</td>
            <td>
                <asp:TextBox ID="txt_vacationdays" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="red" ControlToValidate="txt_vacationdays" ValidationExpression="^\d+$" runat="server" ErrorMessage="Vui lòng nhập số "></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Salary type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True" Value="1" Text="Monthly"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Daily"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Benefit Plan
            </td>
            <td>
                <asp:DropDownList ID="DropDown_benefit_plan" runat="server">
                    <asp:ListItem Selected="True" Value="10" Text="Basic Plan"> </asp:ListItem>
                    <asp:ListItem Value="20" Text="Standard Plan"></asp:ListItem>
                    <asp:ListItem Value="30" Text="Premium Plan"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="btn_add" runat="server" Text="ADD" OnClick="btn_add_Click" />
</asp:Content>
