<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="BANKINGPROJECT.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblForgotPassword" runat="server" ClientIDMode="Predictable" Enabled="False" Text="Forgot Password"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCardNumber" runat="server" Text="Card #"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="reqCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Please Enter A Card Number!" ForeColor="Red"></asp:RequiredFieldValidator>
            </strong>
            <br />
            <asp:Label ID="lblPin" runat="server" Text="PIN:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPin" runat="server" Width="160px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="reqPin" runat="server" ControlToValidate="txtPin" ErrorMessage="Please Enter A PIN Number!" ForeColor="Red"></asp:RequiredFieldValidator>
            </strong>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btnOkay" runat="server" Text="Okay" OnClick="btnOkay_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
