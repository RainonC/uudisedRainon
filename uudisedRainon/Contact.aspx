<%@ Page Title="Ilmateade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="uudisedRainon.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lisa ilmateade</h2>
<p>&nbsp;</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ilm_id" DataSourceID="SqlDataSource1_ilm" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ilm_id" HeaderText="ilm_id" InsertVisible="False" ReadOnly="True" SortExpression="ilm_id" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:BoundField DataField="temp" HeaderText="temp" SortExpression="temp" />
            <asp:TemplateField HeaderText="uudis_id" SortExpression="uudis_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_uudis2" DataTextField="uudiseTeema" DataValueField="uudis_id" SelectedValue='<%# Bind("uudis_id") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1_uudis2" runat="server" ConnectionString="<%$ ConnectionStrings:uudisteBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema]) VALUES (@uudiseTeema)" SelectCommand="SELECT [uudis_id], [uudiseTeema] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema WHERE [uudis_id] = @uudis_id">
                        <DeleteParameters>
                            <asp:Parameter Name="uudis_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="uudiseTeema" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="uudiseTeema" Type="String" />
                            <asp:Parameter Name="uudis_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1_ilm" runat="server" ConnectionString="<%$ ConnectionStrings:uudisteBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [ilm] WHERE [ilm_id] = @ilm_id" InsertCommand="INSERT INTO [ilm] ([kuupaev], [temp], [uudis_id]) VALUES (@kuupaev, @temp, @uudis_id)" SelectCommand="SELECT * FROM [ilm]" UpdateCommand="UPDATE [ilm] SET [kuupaev] = @kuupaev, [temp] = @temp, [uudis_id] = @uudis_id WHERE [ilm_id] = @ilm_id">
        <DeleteParameters>
            <asp:Parameter Name="ilm_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="temp" Type="Int32" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="temp" Type="Int32" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
            <asp:Parameter Name="ilm_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
    
</asp:Content>
