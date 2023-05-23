<%@ Page Title="Uudised" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="uudisedRainon.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uudised</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="17px" Width="400px" BorderStyle="Double" BorderColor="#336666" BorderWidth="3px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="uudis_id" BackColor="White" CellPadding="4" GridLines="Horizontal" >
        <Columns>
            
            
            <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
           
            <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
           
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisteBaas2ConnectionString1 %>" SelectCommand="SELECT [uudiseTeema], [kirjeldus], [kuupaev], [uudis_id] FROM [uudised]" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema], [kirjeldus], [kuupaev]) VALUES (@uudiseTeema, @kirjeldus, @kuupaev)" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema, [kirjeldus] = @kirjeldus, [kuupaev] = @kuupaev WHERE [uudis_id] = @uudis_id">
        <DeleteParameters>
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h3>
        <br />
        <br />
        <br />
        Lisa uudis<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" InsertVisible="False" ReadOnly="True" SortExpression="uudis_id" />
                <asp:CommandField ShowInsertButton="True" CancelText="Loobu" InsertText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
    </h3>

</asp:Content>
