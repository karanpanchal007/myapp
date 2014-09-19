<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Incidents.aspx.cs" Inherits="Incidents" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .modal
        {
            background-color:Gray;
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
    .style3
    {
        width: 112px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="Incidents"></asp:Label></h2>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
        <div style="width: 1275px; height: 291px" popupcontrolid="pnlUpdate">
        <h2 style="font-size: x-small; font-weight: bold">
            &nbsp;<asp:Panel ID="Panel1" runat="server" Height="250px" Width="800px" ScrollBars="Auto">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Button ID="BtnNew" runat="server" BackColor="White" Height="20px" 
                                Text="NEW" onclick="BtnNew_Click"
                                />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="2" ForeColor="Black"
                                Height="128px" Width="770px">
                                <Columns>
                                    <asp:BoundField DataField="Titel_Inc" HeaderText="Titel" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/pen_paper_2-512.png" 
                                                 Width="16px" onclick="ImageButton1_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    <asp:BoundField DataField="Requester" HeaderText="Requester" />
                                    <asp:BoundField DataField="Incident_On" HeaderText="Incident On" />
                                    <asp:BoundField DataField="Level" HeaderText="Level" />
                                    <asp:BoundField DataField="Start_Date" HeaderText="Start Date" />
                                    <asp:BoundField DataField="Due_Date" HeaderText="Due Date" />
                                    <asp:BoundField DataField="Estimated_Hour" HeaderText="Estimated Hours" />
                                    <asp:BoundField DataField="Project" HeaderText="Project" />
                                    <asp:BoundField DataField="Inc_complited" HeaderText="% complited" />
                                    <asp:BoundField DataField="Engineer_Ids" HeaderText="Engineer Ids" />
                                    <asp:BoundField DataField="Assigned_To" HeaderText="Assigned To" />
                                    <asp:BoundField DataField="Testing_Team" HeaderText="Testing Team" />
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
            
                 &nbsp;<asp:Panel ID="PnlInsert" runat="server" Height="448px" Width="375px" BorderColor="#999999"
                BackColor="White" Style="display: none;" >
                <table style="width: 100%; margin-left: 0px; height: 448px;">
                    <tr>
                        <td colspan="2" style="background-color: #666666">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Titel
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Description
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="style3">
                            Requester
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Incident On
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox14_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox14" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Level
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Start Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox15_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox15" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Due Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox16_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox16" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Estimated Hours
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Project
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            % complited
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Engineer Ids
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Assigned To
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Testing Team
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="BtnInsert" runat="server" BackColor="White" Height="22px" 
                                OnClick="BtnInsert_Click" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" BackColor="White" Height="22px" 
                                Text="Cancel" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </h2>
            <h2 style="font-size: x-small; font-weight: bold">
            <asp:Button ID="Btnshowpoup" runat="server" Style="display: none;" />
                &nbsp;<asp:Panel ID="PnlUpdate" runat="server" Height="448px" Width="375px" BorderColor="#999999"
                BackColor="White" >
                <table style="width: 100%; margin-left: 0px; height: 448px;">
                    <tr>
                        <td colspan="2" style="background-color: #666666">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Titel
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Description
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="style3">
                            Requester
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Incident On
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                Enabled="True" TargetControlID="TextBox4" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Level
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Start Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                                Enabled="True" TargetControlID="TextBox6" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Due Date
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender3" runat="server" 
                                Enabled="True" TargetControlID="TextBox7" Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Estimated Hours
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Project
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            % complited
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Engineer Ids
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Assigned To
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Testing Team
                        </td>
                        <td>
                            :&nbsp;
                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" BackColor="White" Height="22px" 
                                 Text="Update" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="White" Height="22px" 
                                Text="Cancel" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </h2>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="BtnNew" BackgroundCssClass="modal" CancelControlID="Button4" PopupControlID="PnlInsert">
            </asp:ModalPopupExtender>
            <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Btnshowpoup" BackgroundCssClass="modal" CancelControlID="Button2" PopupControlID="pnlUpdate">
            </asp:ModalPopupExtender>
        </div>
        </asp:Content>



       