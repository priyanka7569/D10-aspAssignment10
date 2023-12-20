<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10_ProductRegFrm.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 14%;
        }
        .auto-style5 {
            width: 16%;
        }
        .auto-style6 {
            width: 161px;
        }
        .auto-style7 {
            width: 61%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Product Image:</td>
                    <td class="auto-style5">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/IMG_20200805_113926.jpg" Width="35px" />
                        <asp:Image ID="Image3" runat="server" Height="66px" ImageUrl="~/Image/IMG_20200805_113926.jpg" Width="176px" />
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Product Name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtPName" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPName" ErrorMessage="Enter your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Category:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DBList" runat="server">
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem Enabled="False">Blue</asp:ListItem>
                            <asp:ListItem Enabled="False">Green</asp:ListItem>
                            <asp:ListItem Enabled="False">Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DBList" ErrorMessage="Select Catagory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Price:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtPrice" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Price Confirmation:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtPrice1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TxtPrice" ControlToValidate="TxtPrice1" ErrorMessage="Enter Price in digits Only" ForeColor="Red" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Description:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtDes" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDes" ErrorMessage="description Needed!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Release Date:</td>
                    <td class="auto-style5">
                        <asp:Calendar ID="Calender" runat="server"></asp:Calendar>
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="PDR" runat="server" OnClick="PDR_Click" Text="register" />
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    </form>
</body>
</html>