<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .mod
        {
            color:Gray;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#666666" 
                        BorderStyle="Dotted" BorderWidth="1px" Height="170px" Width="200px">
                        <table class="style1">
                            <tr>
                                <td align="center" 
                                    
                                    style="margin-left: 80px; text-decoration: blink; font-size: large; color: #000000; font-style: oblique;">
                                    <em>Log In</em></td>
                            </tr>
                            <tr>
                                <td align="center" style="margin-left: 80px">
                                    <asp:TextBox ID="txtun" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtun_TextBoxWatermarkExtender" 
                                        runat="server" Enabled="True" TargetControlID="txtun" 
                                        WatermarkText=" UserName" WatermarkCssClass="mod">
                                    </asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                                        ToolTip="Enter Your Password"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtpassword_TextBoxWatermarkExtender" 
                                        runat="server" Enabled="True" TargetControlID="txtpassword" 
                                        WatermarkCssClass="mod" WatermarkText=" Password">
                                    </asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="btnLogin" runat="server" Text="Log In" Width="153px" 
                                        BackColor="#00289F" ForeColor="White" Height="23px"  onclick="btnLogin_Click"  />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderColor="#333333" 
                        BorderStyle="Dotted" BorderWidth="1px" Height="30px" Width="200px">
                        <table class="style1">
                            <tr>
                                <td align="center" style="font-size: x-small">
                                    2014 Project Management</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    
    </div>
    </form>
</body>
</html>
