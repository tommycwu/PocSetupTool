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
        .auto-style10 {
            width: 20px;
        }
        .auto-style11 {
            width: 21px;
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
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" Text="Org:"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7"><asp:TextBox ID="TextBox1" runat="server" Width="360px">https://nextpoc.okta.com</asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="Key:"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7"><asp:TextBox ID="TextBox2" runat="server" Width="360px">00_66otAllJp2xgJB4zryTt76xeQcHN3syuCRztDhE</asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enable Threat" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq3" runat="server" Height="30px" Width="360px" TextMode="MultiLine">{&quot;action&quot;: &quot;block&quot;,&quot;excludeZones&quot;: []}</asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes3" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button8" runat="server" OnClick="Button1_Click" Text="Get GroupId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" Text="[Everybody] GroupId:"></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBoxGroupId" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Password Policy" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq4" runat="server" Height="30px" Width="360px" TextMode="MultiLine">{
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
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes4" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Get Password PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBoxPolicyId2" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Create Password Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq5" runat="server" Height="30px" Width="360px" TextMode="MultiLine">{
  &quot;type&quot;: &quot;PASSWORD&quot;,
  &quot;name&quot;: &quot;Password Reset&quot;,
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
    },
    &quot;selfServiceUnlock&quot;: {
      &quot;access&quot;: &quot;ALLOW&quot;
    }
  }
}</asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes5" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Get MFA PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td><asp:TextBox ID="TextBoxPolicyId1" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enable Push" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes2" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Create MFA Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq6" runat="server" Height="30px" Width="360px" TextMode="MultiLine">{
    &quot;type&quot;: &quot;MFA_ENROLL&quot;,
    &quot;status&quot;: &quot;ACTIVE&quot;,
    &quot;name&quot;: &quot;MFA Enroll&quot;,
    &quot;system&quot;: false,
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
        &quot;enroll&quot;: {
            &quot;self&quot;: &quot;CHALLENGE&quot;
        }
    }
}</asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes6" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button10" runat="server" OnClick="Button1_Click1" Text="Get Sign In PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBoxPolicyId3" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Create Sign On Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxReq7" runat="server" Height="30px" Width="360px" TextMode="MultiLine">{
    &quot;type&quot;: &quot;SIGN_ON&quot;,
    &quot;name&quot;: &quot;MFA Enforce&quot;,
    &quot;conditions&quot;: {
      &quot;people&quot;: {
        &quot;users&quot;: {
          &quot;include&quot;: [],
          &quot;exclude&quot;: []
        },
        &quot;groups&quot;: {
          &quot;include&quot;: [],
          &quot;exclude&quot;: []
        }
      },
      &quot;network&quot;: {
        &quot;connection&quot;: &quot;ANYWHERE&quot;
      },
      &quot;authContext&quot;: {
        &quot;authType&quot;: &quot;ANY&quot;
      }
    },
    &quot;actions&quot;: {
      &quot;signon&quot;: {
        &quot;access&quot;: &quot;ALLOW&quot;,
        &quot;requireFactor&quot;: true,
        &quot;primaryFactor&quot;: &quot;PASSWORD_IDP&quot;,
        &quot;factorPromptMode&quot;: &quot;ALWAYS&quot;,
        &quot;rememberDeviceByDefault&quot;: false,
        &quot;session&quot;: {
          &quot;usePersistentCookie&quot;: false,
          &quot;maxSessionIdleMinutes&quot;: 120,
          &quot;maxSessionLifetimeMinutes&quot;: 0
        }
      }      
    }
}</asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBoxRes7" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
