<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw7_nfl_teams %>" SelectCommand="SELECT * FROM [lzimanek_hw7_nfl_teams]"></asp:SqlDataSource>
    
    <% If Not IsPostBack Then%>
    Search for a team:
    <asp:TextBox ID="tbSearch" runat="server" Width="188px"></asp:TextBox>
    <br />
    <br />

    <% Else%>

    Search for another team:
    <asp:TextBox ID="tbSearch2" runat="server" Width="162px"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="cssgridview" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="848px" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="team_name" HeaderText="Team Name" SortExpression="team_name" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="year_established" HeaderText="Year Established" SortExpression="year_established" />
            <asp:BoundField DataField="field_name" HeaderText="Field Name" SortExpression="field_name" />
            <asp:BoundField DataField="head_coach" HeaderText="Head Coach" SortExpression="head_coach" />
            <asp:BoundField DataField="team_colors" HeaderText="Team Colors" SortExpression="team_colors" />
            <asp:BoundField DataField="superbowl_appearances" HeaderText="Superbowl Appearances" SortExpression="superbowl_appearances" />
            <asp:BoundField DataField="superbowl_wins" HeaderText="Superbowl Wins" SortExpression="superbowl_wins" />
        </Columns>
    </asp:GridView>

    <% End If%>

</asp:Content>

