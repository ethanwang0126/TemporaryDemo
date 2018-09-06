<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DemoWebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" DataSourceID="StudentDataSource">
        <EmptyDataTemplate>No Students to display</EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="StudentDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListALLStudents" TypeName="BackEnd.BLL.StudentController"></asp:ObjectDataSource>
</asp:Content>
