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

    <h3>Manage Courses</h3>
    <asp:ListView ID="CourseListView" runat="server" DataSourceID="CourseDataSource" InsertItemPosition="LastItem" DataKeyNames="CourseId">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("CourseId") %>' runat="server" ID="CourseIdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CourseNumber") %>' runat="server" ID="CourseNumberLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Credits") %>' runat="server" ID="CreditsLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("CourseId") %>' runat="server" ID="CourseIdTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CourseNumber") %>' runat="server" ID="CourseNumberTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Credits") %>' runat="server" ID="CreditsTextBox" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("CourseId") %>' runat="server" ID="CourseIdTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CourseNumber") %>' runat="server" ID="CourseNumberTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Credits") %>' runat="server" ID="CreditsTextBox" /></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("CourseId") %>' runat="server" ID="CourseIdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CourseNumber") %>' runat="server" ID="CourseNumberLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Credits") %>' runat="server" ID="CreditsLabel" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">CourseId</th>
                                <th runat="server">CourseNumber</th>
                                <th runat="server">Credits</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("CourseId") %>' runat="server" ID="CourseIdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CourseNumber") %>' runat="server" ID="CourseNumberLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Credits") %>' runat="server" ID="CreditsLabel" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="CourseDataSource" runat="server" DataObjectTypeName="BackEnd.Entities.Course" DeleteMethod="RemoveCourses" InsertMethod="AddCourses" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllCourses" TypeName="BackEnd.BLL.CourseController" UpdateMethod="UpdateCourses"></asp:ObjectDataSource>
</asp:Content>
