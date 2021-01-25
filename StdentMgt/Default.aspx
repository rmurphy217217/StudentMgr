<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StdentMgt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True"  OnSelectedIndexChanging="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:HyperLinkField NavigateUrl="~/Student.aspx" Text="Select" />
        </Columns>
    </asp:GridView>

    <br>
        <br>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentMgtConnectionString %>"  SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>


    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Student" />
    <br />
</asp:Content>
