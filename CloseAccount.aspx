<%@ Page Title="" Language="C#" MasterPageFile="~/Banking.Master" AutoEventWireup="true" CodeBehind="CloseAccount.aspx.cs" Inherits="BANKINGPROJECT.CloseAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lblCloseAccount" runat="server" Text="Close Account"></asp:Label>
        <br />
        <br />
        <strong>
        <asp:Label ID="lblAreYouSure" runat="server" Text="ARE YOU SURE WANT TO CLOSE YOUR ACCOUNT ?" ForeColor="Red"></asp:Label>
        </strong>
        <br />
        <br />
&nbsp;<strong><asp:Button ID="btnNo" runat="server" Text="CANCEL" Width="150px" OnClick="btnNo_Click" CausesValidation="False" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnYes" runat="server" Text="DELETE" Width="163px" OnClick="btnYes_Click" />
    </div>
</asp:Content>
