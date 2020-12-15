<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PocOrgSetup.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style7 {
            width: 372px;
        }
        .auto-style9 {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style9">
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" Text="Org:"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TextBox1" runat="server" Width="360px">https://nextpoc.okta.com</asp:TextBox>
                </td>
                <td class="auto-style9"><asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="Key:"></asp:Label>
                </td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="360px">00_66otAllJp2xgJB4zryTt76xeQcHN3syuCRztDhE</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GET - PolicyId, GroupId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style9">
        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="PolicyId:"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TextBoxPolicyId" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style9">
        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" Text="[Everybody] GroupId:"></asp:Label>
                </td>
                <td><asp:TextBox ID="TextBoxGroupId" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="POST - Enable Threat" Height="24px" Width="180px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxPostThreatData" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{&quot;action&quot;: &quot;block&quot;,&quot;excludeZones&quot;: []}</asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxPostThreatReturn" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="POST - Enable Push" Height="24px" Width="180px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxPostPushData" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{&quot;type&quot;: &quot;MFA_ENROLL&quot;,&quot;status&quot;: &quot;ACTIVE&quot;,&quot;name&quot;: &quot;MFA Enroll&quot;,&quot;priority&quot;: 1,&quot;system&quot;: false,&quot;conditions&quot;: {&quot;people&quot;: {&quot;users&quot;: {&quot;exclude&quot;: []}},&quot;network&quot;: {&quot;connection&quot;: &quot;ANYWHERE&quot;}},&quot;actions&quot;: {&quot;enroll&quot;: {&quot;self&quot;: &quot;LOGIN&quot;}}}</asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxPostPushReturn" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
