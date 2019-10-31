<%@ Page Title="" Language="C#" MasterPageFile="~/Banking.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="BANKINGPROJECT.Balance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 451px;
        }
        .auto-style2 {
            width: 451px;
            height: 50px;
        }
        .auto-style3 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:50%;">
        <tr>
            <td colspan="2" align="center"><strong>ACCOUNT BALANCE</strong></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td colspan="2"><strong><u>Chequing Account</u></strong></td>
        </tr>
        <tr>
            <td class="auto-style1">
                Account #:</td>
            <td>
                Balance:</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <strong>
                <asp:Label ID="chequingAccNum" runat="server"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:Label ID="chequingBalance" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td colspan="2"><strong><u>Savings Account</u></strong></td>
        </tr>
        <tr>
            <td class="auto-style1">
                Account #:</td>
            <td>
                Balance:</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <strong>
                <asp:Label ID="savingsAccNum" runat="server"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:Label ID="savingsBalance" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
