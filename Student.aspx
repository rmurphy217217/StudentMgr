<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StdentMgt.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table style="width: 50%;">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> </td>
            <td><asp:TextBox ID="txtFirstName" runat="server" Width="305px"></asp:TextBox></td>
        </tr>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" controltovalidate="txtFirstName" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label> </td>
            <td><asp:TextBox ID="txtLastName" runat="server" Width="299px"></asp:TextBox></td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" controltovalidate="txtLastName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Email"></asp:Label> </td>
            <td><asp:TextBox ID="txtEmail" runat="server" Width="398px"></asp:TextBox></td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" controltovalidate="txtEmail" ErrorMessage="EMail Required"></asp:RequiredFieldValidator>
        </tr>
    </table>
   <br />
            <asp:Button ID="Button1" runat="server" Text="Add Student" OnClick="Button1_Click" />
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Update Student" OnClick="Button2_Click"  />
         
            &nbsp;
         
            <br />
        </div>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
