<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PocOrgSetup.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style35 {
            width: 248px;
        }
        .auto-style37 {
            width: 248px;
            height: 23px;
        }
        .auto-style40 {
            width: 80px;
        }
        .auto-style41 {
            height: 23px;
            width: 80px;
        }
        .auto-style42 {
            width: 80px;
            font-family: Arial;
            font-size: small;
        }
        .auto-style43 {
            height: 23px;
            width: 80px;
            font-family: Arial;
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" Text="*Https is optional in org url.    **Must have at least one first, last and email customer admin account. "></asp:Label>
                <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" Text="Org URL:"></asp:Label>
                </td>
                <td class="auto-style35"><asp:TextBox ID="TextBoxOrg" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="API Key:"></asp:Label>
                </td>
                <td class="auto-style35"><asp:TextBox ID="TextBoxKey" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style40">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42">
                    Admin 1:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBoxFirst" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    Last:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBoxLast" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    Email:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">
                    Admin 2:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBoxFirst0" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    Last:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBoxLast0" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    Email:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail0" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">
                    Admin 3:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBoxFirst1" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    Last:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBoxLast1" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    Email:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxEmail1" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">
                    Admin 4:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBoxFirst2" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    Last:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBoxLast2" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    Email:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxEmail2" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">
                    &nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">
        <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Run" Height="24px" Width="75px" Font-Bold="True" />
                </td>
                <td class="auto-style37">
        &nbsp;
        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" Text="*Org setup complete" Visible="False" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            </table>
        <br />
        <asp:TextBox ID="TextBoxRes17" runat="server" Height="300px" TextMode="MultiLine" Width="1000px" Font-Size="Smaller"></asp:TextBox>
                <br />
        <br />
        <asp:TextBox ID="TextBoxReq16" runat="server" Height="30px" Width="246px" TextMode="MultiLine" Visible="False">{ &quot;type&quot;: &quot;SUPER_ADMIN&quot; }</asp:TextBox>
        <asp:TextBox ID="TextBoxRes16" runat="server" Height="30px" TextMode="MultiLine" Width="216px" Visible="False"></asp:TextBox>
        <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Make Admin Group Super" Height="24px" Width="75px" Visible="False" />
        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Create User In Group" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBoxRes12" runat="server" Height="30px" TextMode="MultiLine" Width="178px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxRes13" runat="server" Height="30px" TextMode="MultiLine" Width="195px" Visible="False"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBoxRes14" runat="server" Height="30px" TextMode="MultiLine" Width="63px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxRes15" runat="server" Height="30px" TextMode="MultiLine" Width="68px" Visible="False"></asp:TextBox>

        <asp:TextBox ID="TextBoxReq12" runat="server" Height="30px" Width="178px" TextMode="MultiLine" Visible="False">{
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
                    <asp:TextBox ID="TextBox18" runat="server" Width="30px" Visible="False"></asp:TextBox>
        <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Get Admin GroupId" Height="24px" Width="75px" Visible="False" />
        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Create Okta Admin Group" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBoxRes11" runat="server" Height="30px" TextMode="MultiLine" Width="30px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq11" runat="server" Height="30px" Width="100px" TextMode="MultiLine" Visible="False">{
  &quot;profile&quot;: {
    &quot;name&quot;: &quot;Okta Admins&quot;,
    &quot;description&quot;: &quot;Okta Administrators&quot;
  }
}</asp:TextBox>
        <asp:TextBox ID="TextBoxRes9" runat="server" Height="30px" TextMode="MultiLine" Width="30px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq9" runat="server" Height="30px" Width="119px" TextMode="MultiLine" Visible="False">{
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
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Create Sign On Rule" Height="24px" Width="75px" Visible="False" />
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Get Sign In PolicyId" Height="24px" Width="75px" Visible="False" />
                    <asp:TextBox ID="TextBox10" runat="server" Width="30px" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Create MFA Rule" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBoxRes7" runat="server" Height="30px" TextMode="MultiLine" Width="30px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxRes2" runat="server" Height="30px" TextMode="MultiLine" Width="246px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq7" runat="server" Height="30px" Width="30px" TextMode="MultiLine" Visible="False">{
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
            &quot;self&quot;: &quot;LOGIN&quot;
        }
    }
}</asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enable Push" Height="24px" Width="75px" Visible="False" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get MFA PolicyId" Height="24px" Width="75px" Visible="False" />
                <asp:TextBox ID="TextBox1" runat="server" Width="30px" Visible="False"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Create Password Rule" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBoxRes6" runat="server" Height="30px" TextMode="MultiLine" Width="30px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq6" runat="server" Height="30px" Width="194px" TextMode="MultiLine" Visible="False">{
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
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Get Password PolicyId" Height="24px" Width="75px" Visible="False" />
                    <asp:TextBox ID="TextBox5" runat="server" Width="30px" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Password Policy" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBoxRes4" runat="server" Height="30px" TextMode="MultiLine" Width="64px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq4" runat="server" Height="30px" Width="196px" TextMode="MultiLine" Visible="False">{
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
           &quot;status&quot;: &quot;ACTIVE&quot;
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
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Get Everybody GroupId" Height="24px" Width="75px" Visible="False" />
        <asp:TextBox ID="TextBox8" runat="server" Width="30px" Visible="False"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enable Threat" Height="24px" Width="75px" Visible="False" />
        <script type="text/javascript">
            $(function () {
                $("#Button3").click(function () {
                    $("#dialog").dialog({
                        modal: true,
                        title: "jQuery Dialog",
                       width: 300,
                        height: 150,
                        open: function (event, ui) {
                            setTimeout(function () {
                                $("#dialog").dialog("close");
                            }, 5000);
                        }
                    });
                });
            });
        </script>        
        <asp:TextBox ID="TextBoxRes3" runat="server" Height="30px" TextMode="MultiLine" Width="113px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxReq3" runat="server" Height="30px" Width="173px" TextMode="MultiLine" Visible="False">{&quot;action&quot;: &quot;block&quot;,&quot;excludeZones&quot;: []}</asp:TextBox>
        <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="test" Height="24px" Width="161px" Visible="False" />
        <br />
    </form>
</body>
</html>
