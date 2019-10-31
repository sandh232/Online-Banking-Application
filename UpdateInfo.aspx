<%@ Page Title="" Language="C#" MasterPageFile="~/Banking.Master" AutoEventWireup="true" CodeBehind="UpdateInfo.aspx.cs" Inherits="BANKINGPROJECT.UpdateInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ALIGN="CENTER">
            <strong>UPDATE PERSONAL INFORMATION<br />
            </strong>
            <table class="auto-style1">
                <tr>
                    <td>E-MAIL</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Invalid format for Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>PHONE</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Invalid Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>ADDRESS</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="CANCEL" OnClick="Button2_Click" CausesValidation="False" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="UPDATE" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Content>
