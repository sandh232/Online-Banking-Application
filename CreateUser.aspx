<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="BANKINGPROJECT.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 308px;
            height: 50px;
        }
        .auto-style3 {
            height: 50px;
            width: 1863px;
        }
        .auto-style4 {
            width: 93%;
        }
        .auto-style6 {
            width: 308px;
        }
        .auto-style7 {
            width: 1863px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4" align="center">
                <tr>
                    <td colspan="2"><strong>Create Account</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Name: </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Email:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Invalid format for Email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Phone Number: </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtPhone" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="* Invalid format for Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Card Number: </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCardNum" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtCardNum"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCardNum" ErrorMessage="* Please provide your 16 digit card #" ForeColor="Red" MaximumValue="1000000000000000" MinimumValue="9999999999999999"></asp:RangeValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Pin:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtPin"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPin" ErrorMessage="* Please provide your 4 digit card pin #" ForeColor="Red" MaximumValue="1000" MinimumValue="9999"></asp:RangeValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Password: </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Cannot be blank" ForeColor="Red" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="regNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="* Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Confirm Password: </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ErrorMessage="* Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnCreateAcc" runat="server" Text="Create Account" OnClick="btnCreateAcc_Click" Width="310px" />
                    </td>
                </tr>
            </table>
            &nbsp;<br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
