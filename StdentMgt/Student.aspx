<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StdentMgt.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

button,
select {
  text-transform: none;
}
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
        .auto-style1 {
            width: 928px;
        }
        .auto-style2 {
            width: 82%;
        }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style2">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> 


            </td>
            <td class="auto-style1"><asp:TextBox ID="txtFirstName" runat="server" Width="305px"></asp:TextBox></td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Home" Width="115px" />
            </td>
        </tr>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" controltovalidate="txtFirstName" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label> </td>
            <td class="auto-style1"><asp:TextBox ID="txtLastName" runat="server" Width="299px"></asp:TextBox></td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" controltovalidate="txtLastName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Email"></asp:Label> </td>
            <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" Width="398px"></asp:TextBox></td>
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
        <p>
            &nbsp;</p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Add Course" Width="156px" OnClick="Button3_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>

            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="74px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" OnTextChanged="DropDownList2_TextChanged" Width="275px">
            </asp:DropDownList>


        </p>
        <p>

            &nbsp;</p>
        <p>

            &nbsp;</p>
        <p>

            &nbsp;</p>
        <asp:Button ID="Button4" runat="server" Text="Add Selected Course to Student" Width="349px" OnClick="Button4_Click" />


    </form>
</body>
</html>
