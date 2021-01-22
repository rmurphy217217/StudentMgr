<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StdentMgt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>

    <br>
        <br>

    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentMgtConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Id], [First Name] AS First_Name, [Last Name] AS Last_Name, [Email] FROM [Student]"></asp:SqlDataSource>


</asp:Content>
