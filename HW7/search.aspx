<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw7_nfl_teams %>" SelectCommand="SELECT * FROM [lzimanek_hw7_nfl_teams]"></asp:SqlDataSource>
    <br />
    <asp:TextBox ID="tbSearch" runat="server" Width="188px"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="848px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="team_name" HeaderText="team_name" SortExpression="team_name" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="year_established" HeaderText="year_established" SortExpression="year_established" />
            <asp:BoundField DataField="field_name" HeaderText="field_name" SortExpression="field_name" />
            <asp:BoundField DataField="head_coach" HeaderText="head_coach" SortExpression="head_coach" />
            <asp:BoundField DataField="team_colors" HeaderText="team_colors" SortExpression="team_colors" />
            <asp:BoundField DataField="superbowl_appearances" HeaderText="superbowl_appearances" SortExpression="superbowl_appearances" />
            <asp:BoundField DataField="superbowl_wins" HeaderText="superbowl_wins" SortExpression="superbowl_wins" />
        </Columns>
    </asp:GridView>
</asp:Content>

