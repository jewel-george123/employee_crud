<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewemployee.aspx.cs" Inherits="WebApplication1.viewemployee1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
      <br />

      <br />
      <br />
      <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table align-items-center table-flush" DataKeyNames="Employeeid" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"  PageSize="3"  OnRowEditing="GridView1_RowEditing"  OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
    
       

            <asp:TemplateField HeaderText="SL.NO">
                <ItemTemplate>
                    <%# Container.DataItemIndex+1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" id="ch" value='<%#Eval("Employeeid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Employeename" HeaderText="Employee Name" />
            <asp:BoundField DataField="Employeediscription" HeaderText="Employee discription" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
            <asp:CommandField EditText="Delete" HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <br />
     <asp:Button ID="Button1" runat="server" CssClass="table align-items-center table-flush" Text ="DeleteAll" OnClick="Button1_Click" /> 
</asp:Content>
