<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BANKINGPROJECT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 315px;
        }
        .auto-style4 {
            width: 1461px;
        }
        .auto-style5 {
            width: 315px;
            height: 30px;
        }
        .auto-style6 {
            width: 1461px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr align="center">
                    <td colspan="2">WELCOME TO SHERIDAN ONLINE BANKING SERVICES<br />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="auto-style1">CARD NUMBER:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCardnum" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtCardnum"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCardnum" ErrorMessage="* Please provide your 16 digit card #" ForeColor="Red" MaximumValue="1000000000000000" MinimumValue="9999999999999999" Type="Integer"></asp:RangeValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">PASSWORD: </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnCreate" runat="server" Text="Create New Account" OnClick="btnCreate_Click" Width="367px" CausesValidation="False" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnForgot" runat="server" Text="Forgot Password" OnClick="btnForgot_Click" CausesValidation="False" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
