<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large" align="center">employee info manage form<br />
            <br />
            <br />
            <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a  href="viewemployee.aspx" cssclass="form-control">employee View</a>
            <br />
            <br />
            <br />
        </div>
   <br />
 
        <table class="nav-justified">
            <tr>
                <td style="height: 19px; width: 345px;"></td>
                <td style="height: 19px; width: 350px">Employee ID</td>
                <td style="height: 19px">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter employee id" BackColor="White" ControlToValidate="TextBox1" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 345px">&nbsp;</td>
                <td style="width: 350px" class="modal-sm">Employee Name</td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter employee name" ControlToValidate="TextBox2" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 345px">&nbsp;</td>
                <td style="width: 350px" class="modal-sm">Employe Discription</td>
                <td>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="270px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter employee description" ControlToValidate="TextBox3" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 345px">&nbsp;</td>
                <td style="width: 350px" class="modal-sm">&nbsp;</td>
                <td>
                    <br />
                    
                    <div style="margin-left: 100px;">
    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Font-Bold="True" Font-Size="Medium" ForeColor="#6666FF" OnClick="Button1_Click" Text="insert" />
</div>
                
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
 
        </div>
  
</asp:Content>
