<%@ Page Title="" Language="C#" MasterPageFile="~/Banking.Master" AutoEventWireup="true" CodeBehind="ChequeBook.aspx.cs" Inherits="BANKINGPROJECT.ChequeBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
            <tr>
                <td class="auto-style12">REQUEST FOR CHEQUE BOOK.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">SELECT THE ACCOUNT:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style7" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Value="savings">SAVINGS ACCOUNT</asp:ListItem>
                        <asp:ListItem Value="chequing">CHEQUING ACCOUNT</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">SIZE OF THE BOOK</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;LEAVES</td>
            </tr>
            <tr>
                <td class="auto-style1">YOUR BOOK WILL COST:</td>
                <td class="auto-style1">
                    <strong>
                    <asp:Label ID="lblCost" runat="server"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Text="CANCEL" Width="186px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="CONFIRM" Width="188px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
</asp:Content>
