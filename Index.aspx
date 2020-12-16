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
        .auto-style10 {
            width: 20px;
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
                <td class="auto-style10">
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get PolicyId, GroupId..." Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style9">
        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="MFA PolicyId:"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TextBoxPolicyId1" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style9">
        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" Text="[Everybody] GroupId:"></asp:Label>
                </td>
                <td><asp:TextBox ID="TextBoxGroupId" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
        <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Small" Text="Password PolicyId:"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TextBoxPolicyId2" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enable Threat" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq3" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{&quot;action&quot;: &quot;block&quot;,&quot;excludeZones&quot;: []}</asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes3" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Enable Common Password" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq4" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{
    &quot;type&quot;: &quot;PASSWORD&quot;,
    &quot;name&quot;: &quot;Password Policy&quot;,
    &quot;description&quot;: &quot;The policy applies to users with Okta managed passwords.&quot;,
    &quot;conditions&quot;: {
        &quot;people&quot;: {
            &quot;groups&quot;: {
                &quot;include&quot;: [
                    &quot;{{groupId}}&quot;
                ]
            }
        },
        &quot;authProvider&quot;: {
            &quot;provider&quot;: &quot;OKTA&quot;
        }
    },
    &quot;settings&quot;: {
        &quot;password&quot;: {
            &quot;complexity&quot;: {
                &quot;minLength&quot;: 8,
                &quot;minLowerCase&quot;: 1,
                &quot;minUpperCase&quot;: 1,
                &quot;minNumber&quot;: 1,
                &quot;minSymbol&quot;: 0,
                &quot;excludeUsername&quot;: true,
                &quot;dictionary&quot;: {
                    &quot;common&quot;: {
                       &quot;exclude&quot;: true
                    }
                }
            },
            &quot;age&quot;: {
                &quot;maxAgeDays&quot;: 90,
                &quot;expireWarnDays&quot;: 5,
                &quot;minAgeMinutes&quot;: 0,
                &quot;historyCount&quot;: 10
            },
            &quot;lockout&quot;: {
                &quot;maxAttempts&quot;: 10,
                &quot;autoUnlockMinutes&quot;: 60,
                &quot;showLockoutFailures&quot;: true
            }
        },
        &quot;recovery&quot;: {
       &quot;factors&quot;: {
         &quot;recovery_question&quot;: {
           &quot;status&quot;: &quot;ACTIVE&quot;,
           &quot;properties&quot;: {
             &quot;complexity&quot;: {
               &quot;minLength&quot;: 4
             }
           }
         },
         &quot;okta_email&quot;: {
           &quot;status&quot;: &quot;ACTIVE&quot;,
           &quot;properties&quot;: {
             &quot;recoveryToken&quot;: {
               &quot;tokenLifetimeMinutes&quot;: 60
             }
           }
         },
         &quot;okta_sms&quot;: {
           &quot;status&quot;: &quot;INACTIVE&quot;
         },
         &quot;okta_call&quot;: {
           &quot;status&quot;: &quot;INACTIVE&quot;
         }
       }
     },
     &quot;delegation&quot;: {
       &quot;options&quot;: {
         &quot;skipUnlock&quot;: false
       }
     }
   }
  }</asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes4" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq5" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{
  &quot;type&quot;: &quot;PASSWORD&quot;,
  &quot;name&quot;: &quot;Allow All Rule&quot;,
  &quot;conditions&quot;: {
    &quot;people&quot;: {
      &quot;users&quot;: {
        &quot;exclude&quot;: []
      }
    },
    &quot;network&quot;: {
      &quot;connection&quot;: &quot;ANYWHERE&quot;
    }
  },
  &quot;actions&quot;: {
    &quot;passwordChange&quot;: {
      &quot;access&quot;: &quot;ALLOW&quot;
    },
    &quot;selfServicePasswordReset&quot;: {
      &quot;access&quot;: &quot;ALLOW&quot;
    }
  }
}</asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes5" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style10">
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
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enable Push" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq2" runat="server" Height="180px" Width="360px" TextMode="MultiLine">{&quot;type&quot;: &quot;MFA_ENROLL&quot;,&quot;status&quot;: &quot;ACTIVE&quot;,&quot;name&quot;: &quot;MFA Enroll&quot;,&quot;priority&quot;: 1,&quot;system&quot;: false,&quot;conditions&quot;: {&quot;people&quot;: {&quot;users&quot;: {&quot;exclude&quot;: []}},&quot;network&quot;: {&quot;connection&quot;: &quot;ANYWHERE&quot;}},&quot;actions&quot;: {&quot;enroll&quot;: {&quot;self&quot;: &quot;LOGIN&quot;}}}</asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes2" runat="server" Height="180px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
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
                <td class="auto-style10">&nbsp;</td>
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
                <td class="auto-style10">&nbsp;</td>
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
                <td class="auto-style10">&nbsp;</td>
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
                <td class="auto-style10">&nbsp;</td>
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
