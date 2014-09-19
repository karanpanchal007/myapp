<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="pro.aspx.cs" Inherits="pro" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
   <script type="text/javascript">
       function panel3validate() {

           var message = "";
           var a = document.getElementById('ContentPlaceHolder1_TextBox25').value;
           var b = document.getElementById('ContentPlaceHolder1_TextBox12').value;
           var c = document.getElementById('ContentPlaceHolder1_TextBox13').value;
           var d = document.getElementById('ContentPlaceHolder1_TextBox14').value;
           var e = document.getElementById('ContentPlaceHolder1_TextBox8').value;
           var f = document.getElementById('ContentPlaceHolder1_TextBox15').value;
           var g = document.getElementById('ContentPlaceHolder1_TextBox16').value;
           var h = document.getElementById('ContentPlaceHolder1_TextBox17').value;
           var i = document.getElementById('ContentPlaceHolder1_TextBox18').value;
           var j = document.getElementById('ContentPlaceHolder1_TextBox19').value;
           var k = document.getElementById('ContentPlaceHolder1_TextBox20').value;
           var l = document.getElementById('ContentPlaceHolder1_TextBox21').value;
           var m = document.getElementById('ContentPlaceHolder1_TextBox22').value;
           var n = document.getElementById('ContentPlaceHolder1_TextBox23').value;
           var o = document.getElementById('ContentPlaceHolder1_TextBox24').value;
           
            if (a == "" || b == "" || c == "" || d == "" || e == "" || f == "" || g == "" || h == "" || i == "" || j == "" || k == "" || l == "" || m == "" || n == "" || o == "" ) {
                message = 'All contants are Must';
                
           }
           var exp = /^[0-9]/;
           if (exp.test(a) == true && exp.test(c) == true && exp.test(d) == true) {

           }
           else {
               message += "\nProject No & Estimated Hours & Estimated Cost Must be Numeric ";
           }
           if (message != "") {

               alert(message);
                return false;
            }
            else {
                return true
            }
        }
        
   </script>
   
    <style type="text/css">
        .modal
        {
            background-color: Gray;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .style1
        {
            width: 131px;
        }
        .style2
        {
            width: 100%;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div style="width: 1275px; height: 291px">
        <h2 style="font-size: x-small; font-weight: bold">
            &nbsp;<asp:Panel ID="Panel1" runat="server" Height="250px" Width="800px" ScrollBars="Auto">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Button ID="BtnNew" runat="server" BackColor="White" Height="20px" Text="NEW" CommandArgument='<%# Eval("ID")%>' OnClientClick = "return confirm('Do you want to New Project')"
                               OnClick="BtnNew_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="2" ForeColor="Black"
                                Height="128px" Width="777px">
                                <Columns>
                                    <asp:BoundField DataField="Po_No" HeaderText="No" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/pen_paper_2-512.png" OnClick="ImageButton1_Click"
                                                 Width="16px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Titel" HeaderText="Titel" />
                                    <asp:BoundField DataField="Estimated_Hours" HeaderText="Hours" />
                                    <asp:BoundField DataField="Estimated_Cost" HeaderText="Cost" />
                                    <asp:BoundField DataField="Client" HeaderText="Client" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="Project_Type" HeaderText="PType" />
                                    <asp:BoundField DataField="QA" HeaderText="QA" />
                                    <asp:BoundField DataField="Approver" HeaderText="Approver" />
                                    <asp:BoundField DataField="Manager" HeaderText="Manager" />
                                    <asp:BoundField DataField="Start_Date" HeaderText="Start Date" />
                                    <asp:BoundField DataField="End_date" HeaderText="End Date" />
                                    <asp:BoundField DataField="Team" HeaderText="Team" />
                                    <asp:BoundField DataField="Site" HeaderText="Site" />
                                    <asp:BoundField DataField="type" HeaderText="Type" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#003399" />
                                <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="#666666" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#999999" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </h2>
        <h2 style="font-size: x-small; font-weight: bold">
            <asp:Button ID="Btnshowpoup" runat="server" Style="display: none;" />
            <asp:Panel ID="Panel2" runat="server" Height="466px" Width="429px" BorderColor="#999999"
                BackColor="White" Style="display: none;">
                <table style="width: 100%; margin-left: 0px;">
                    <tr>
                        <td colspan="2" style="background-color: #666666">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Project No
                        </td>
                        <td>
                            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblno" Font-Bold="True" runat="server" Font-Overline="False" Font-Size="Larger"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Titel
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Estimated Hours
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Estimated Cost
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            &nbsp;$
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Client
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Status
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Project Type
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            QA
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Approver
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Manager
                        </td>
                        <td>
                            :&nbsp;
                            <asp:DropDownList ID="DdlMan" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Start Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            End Date
                        </td>k
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Team
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Site
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="texsite" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Type
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="textype" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="BtnUpdate" runat="server" Text="Update" BackColor="White" 
                                onclick="BtnUpdate_Click"  />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="White" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Height="506px" Width="429px" BorderColor="#999999"
                BackColor="White"  Style="display: none;">
                <table style="width: 100%; margin-left: 0px;">
                    <tr>
                        <td colspan="2" style="background-color: #666666">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Project No
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Titel
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Estimated Hours
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Estimated Cost
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            &nbsp;$
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Client
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Status
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Project Type
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            QA
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Approver
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Manager
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Start Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox20_CalendarExtender" runat="server" Enabled="True"
                                TargetControlID="TextBox20" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            End Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox21_CalendarExtender" runat="server" Enabled="True"
                                TargetControlID="TextBox21" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Team
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Site
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Type
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="BtnInsert" runat="server" Text="Insert" BackColor="White" OnClientClick="return panel3validate()" OnClick="BtnInsert_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Text="Cancel" BackColor="White" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Btnshowpoup"
                PopupControlID="Panel2" CancelControlID="Button2" BackgroundCssClass="modal"
                Drag="True">
            </asp:ModalPopupExtender>
            <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="BtnNew"
                PopupControlID="Panel3" CancelControlID="Button2" BackgroundCssClass="modal"
                Drag="True" >
            </asp:ModalPopupExtender>
        </h2>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="Projects"></asp:Label></h2>
</asp:Content>
