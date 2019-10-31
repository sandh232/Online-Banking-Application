<%@ Page Title="" Language="C#" MasterPageFile="~/Banking.Master" AutoEventWireup="true" CodeBehind="PasswordChange.aspx.cs" Inherits="BANKINGPROJECT.PasswordChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 478px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <strong>
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
            <strong>
            <asp:Label ID="lblChangePassword" runat="server" Text="Change Password"></asp:Label>
            </strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="New Password:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="reqNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Please Set A New Password!" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="regNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character&quot;" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Enter Your New Password Again!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Doesn't match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
            <asp:Button ID="btnOkay" runat="server" OnClick="btnOkay_Click" Text="Okay" />
                    </td>
                </tr>
            </table>
            </strong>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <br />
            <br />
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
</asp:Content>
