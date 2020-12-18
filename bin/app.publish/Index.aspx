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
        .auto-style12 {
            width: 130px;
            height: 23px;
        }
        .auto-style13 {
            width: 20px;
            height: 23px;
        }
        .auto-style14 {
            width: 372px;
            height: 23px;
        }
        .auto-style15 {
            width: 21px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 130px;
            height: 28px;
        }
        .auto-style18 {
            width: 20px;
            height: 28px;
        }
        .auto-style19 {
            width: 372px;
            height: 28px;
        }
        .auto-style20 {
            width: 21px;
            height: 28px;
        }
        .auto-style21 {
            height: 28px;
        }
        .auto-style22 {
            width: 375px;
        }
        .auto-style23 {
            width: 375px;
            height: 23px;
        }
        .auto-style24 {
            width: 375px;
            height: 28px;
        }
        .auto-style25 {
            width: 130px;
            height: 40px;
        }
        .auto-style26 {
            width: 20px;
            height: 40px;
        }
        .auto-style27 {
            width: 372px;
            height: 40px;
        }
        .auto-style28 {
            width: 21px;
            height: 40px;
        }
        .auto-style29 {
            width: 375px;
            height: 40px;
        }
        .auto-style30 {
            height: 40px;
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
                <td class="auto-style7"><asp:TextBox ID="TextBoxOrg" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="Key:"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7"><asp:TextBox ID="TextBoxKey" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" Text="First Name: "></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxFirst" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="Last Name: "></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxLast" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" Text="Email: "></asp:Label>
                </td>
                <td class="auto-style13">
                    </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
        <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Execute Everything Below" Height="24px" Width="180px" Font-Bold="True" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enable Threat" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes3" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq3" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{&quot;action&quot;: &quot;block&quot;,&quot;excludeZones&quot;: []}</asp:TextBox>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Get Everybody GroupId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox8" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Password Policy" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes4" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq4" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
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
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Get Password PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Create Password Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes6" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq6" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
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
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get MFA PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    </td>
                <td class="auto-style7"><asp:TextBox ID="TextBox1" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enable Push" Height="24px" Width="180px" />
                </td>
                <td class="auto-style26">
                    </td>
                <td class="auto-style27">
        <asp:TextBox ID="TextBoxRes2" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style29">
                    &nbsp;</td>
                <td class="auto-style30">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Create MFA Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes7" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq7" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
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
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Get Sign In PolicyId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox10" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Create Sign On Rule" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes9" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq9" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
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
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Create Okta Admin Group" Height="24px" Width="180px" />
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style19">
        <asp:TextBox ID="TextBoxRes11" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style20">
        <asp:TextBox ID="TextBoxReq11" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
  &quot;profile&quot;: {
    &quot;name&quot;: &quot;Okta Admins&quot;,
    &quot;description&quot;: &quot;Okta Administrators&quot;
  }
}</asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
        <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Get Admin GroupId" Height="24px" Width="180px" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox18" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Create User In Group" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes12" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq12" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{
  &quot;profile&quot;: {
    &quot;firstName&quot;: &quot;{{firstname}}&quot;,
    &quot;lastName&quot;: &quot;{{lastname}}&quot;,
    &quot;email&quot;: &quot;{{email}}&quot;,
    &quot;login&quot;: &quot;{{email}}&quot;
  },
  &quot;groupIds&quot;: [
    &quot;{{groupId}}&quot;
  ]
}</asp:TextBox>
                </td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Make Admin Group Super" Height="24px" Width="180px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBoxRes16" runat="server" Height="30px" TextMode="MultiLine" Width="360px"></asp:TextBox>
                </td>
                <td class="auto-style11">
        <asp:TextBox ID="TextBoxReq16" runat="server" Height="30px" Width="360px" TextMode="MultiLine" Visible="False">{ &quot;type&quot;: &quot;SUPER_ADMIN&quot; }</asp:TextBox>
                </td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" Text="*Org setup complete" Visible="False"></asp:Label>
        <br />
    </form>
</body>
</html>
