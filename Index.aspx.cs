using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Okta.Sdk;
using Okta.Sdk.Configuration;

namespace PocOrgSetup
{    public partial class Index : System.Web.UI.Page
    {
        public string GetSigninPolicyId(string baseUrl, string apiKey)
        {
            var userUrl = baseUrl + "/api/v1/policies?type=OKTA_SIGN_ON";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(userUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            var s = jsonObject[i].ToString();
                            if (s.Contains("id"))
                            {
                                return jsonObject[i].id;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }

        public string GetMfaPolicyId(string baseUrl, string apiKey)
        {
            var userUrl = baseUrl + "/api/v1/policies?type=MFA_ENROLL";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(userUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            var s = jsonObject[i].ToString();
                            if (s.Contains("id"))
                            {
                                return jsonObject[i].id;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }

        public string GetPwdPolicyId(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/policies?type=PASSWORD";
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            var s = jsonObject[i].ToString();
                            if (s.Contains("Password Policy"))
                            {
                                return jsonObject[i].id;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }

        public string GetEverybodyGroup(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/groups";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            var s = jsonObject[i].ToString();
                            if (s.Contains("id"))
                            {
                                return jsonObject[i].id;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }

        public string GetAdminGroupId(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/groups";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            var s = jsonObject[i].ToString();
                            if (s.Contains("Okta Admins"))
                            {
                                return jsonObject[i].id;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }
        public List<string> GetMfaPolicy(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/policies?type=MFA_ENROLL";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        string s1, s2;
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            s1 = jsonObject[i].settings.factors.ToString();
                            if (s1.Contains("okta_push"))
                            {
                                s2 = jsonObject[i].settings.factors.okta_push.enroll.ToString();
                                if (s2.Contains("OPTIONAL"))
                                {
                                    responseList.Add("okta_push enabled");
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }

        public List<string> GetPasswordPolicies(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/policies?type=PASSWORD";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        string s1;
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            s1 = jsonObject[i].settings.password.complexity.dictionary.common.exclude.ToString();
                            responseList.Add(s1);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }

        public List<string> GetSignonPolicies(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/policies?type=OKTA_SIGN_ON";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        string s1;
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            s1 = jsonObject[i].name;
                            responseList.Add(s1);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }

        public List<string> GetAllUsers(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/users/";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        string s1, s2;
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            s1 = jsonObject[i].profile.login;
                            s2 = jsonObject[i].id;
                            responseList.Add(s1 + ", " + s2);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }
        public List<string> GetAllApps(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/apps/";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(fullUrl);
                var webRequest = WebRequest.Create(endpoint) as HttpWebRequest;
                if (webRequest != null)
                {
                    webRequest.Method = "GET";
                    webRequest.Headers.Add("Authorization", "SSWS " + apiKey);
                    webRequest.Accept = "application/json";
                    webRequest.ContentType = "application/json";
                    var response = webRequest.GetResponse();
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        string jsonString = reader.ReadToEnd();
                        dynamic jsonObject = JsonConvert.DeserializeObject(jsonString, typeof(object));
                        string s1, s2;
                        for (int i = 0; i <= jsonObject.Count - 1; i++)
                        {
                            s1 = jsonObject[i].name;
                            s2 = jsonObject[i].id;
                            responseList.Add(s1 + ", " + s2);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }

        public List<string> GetBetaFeatures(string baseUrl, string apiKey)
        {
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var client = new OktaClient(new OktaClientConfiguration
                {
                    OktaDomain = baseUrl,
                    Token = apiKey,
                });
                var returnList = client.Features.ListFeatures().ToEnumerable();
                foreach (var featureObj in returnList)
                {
                    responseList.Add(featureObj.Name);
                }
            }
            catch (Exception ex)
            {
                responseList.Add(ex.Message);
                return responseList;
            }
            return responseList;
        }

        public string CreatePasswordPolicy(string baseUrl, string apiKey, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/policies";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreatePasswordRule(string baseUrl, string apiKey, string policyId, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", TextBoxKey.Text);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreateUserInGroup(string baseUrl, string apiKey, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/users?activate=true";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string EnablePushNotification(string baseUrl, string apiKey, string policyId, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string EnableNewEndUserExperience(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/features/ftr02ksFB76Vla0gGMRm/enable?mode=force";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string EnableQuickAccessApps(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/features/ftrFDVSQ9wBWPnDqohOS/enable?mode=force";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", TextBoxKey.Text);
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreateMFAEnrollRule(string baseUrl, string apiKey, string policyId, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreateSignInRule(string baseUrl, string apiKey, string policyId, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string MakeGroupSuperAdmin(string baseUrl, string apiKey, string groupId, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/groups/" + groupId + "/roles";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreateAdminGroup(string baseUrl, string apiKey, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/groups";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string EnableThreatInsight(string baseUrl, string apiKey, string postData)
        {
            var fullUrl = baseUrl + "/api/v1/threats/configuration";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(postData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public string ActivateOktaPush(string baseUrl, string apiKey)
        {
            var fullUrl = baseUrl + "/api/v1/org/factors/okta_push/lifecycle/activate";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(fullUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Button19.Attributes["onclick"] = "javascript: Button19.style.cursor = 'wait';";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = GetMfaPolicyId(TextBoxOrg.Text, TextBoxKey.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var postResult = ActivateOktaPush(TextBoxOrg.Text, TextBoxKey.Text).ToString();
            TextBoxRes2.Text = postResult;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var threatData = TextBoxReq3.Text;
            TextBoxRes3.Text = EnableThreatInsight(TextBoxOrg.Text, TextBoxKey.Text, threatData);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var resultsList = GetPasswordPolicies(TextBoxOrg.Text, TextBoxKey.Text);
            foreach (var resultObj in resultsList)
            {
                TextBoxRes4.Text += resultObj.ToString() + Environment.NewLine;
            }

            string rawString = TextBoxReq4.Text;
            string replacedString = rawString.Replace("{{groupId}}", TextBox8.Text);
            TextBoxRes4.Text = CreatePasswordPolicy(TextBoxOrg.Text, TextBoxKey.Text, replacedString);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox5.Text = GetPwdPolicyId(TextBoxOrg.Text, TextBoxKey.Text);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            var pwdPolicyId = TextBox5.Text;
            var ruleData = TextBoxReq6.Text;

            TextBoxRes6.Text = CreatePasswordRule(TextBoxOrg.Text, TextBoxKey.Text, pwdPolicyId, ruleData);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var policyData = TextBoxReq7.Text;
            var policyId = TextBox1.Text;

            TextBoxRes7.Text = CreateMFAEnrollRule(TextBoxOrg.Text, TextBoxKey.Text, policyId, policyData);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            var policyData = TextBoxReq9.Text;
            var policyId = TextBox10.Text;

            TextBoxRes9.Text = CreateSignInRule(TextBoxOrg.Text, TextBoxKey.Text, policyId, policyData);
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            var groupData = TextBoxReq11.Text; 
            TextBoxRes11.Text = CreateAdminGroup(TextBoxOrg.Text, TextBoxKey.Text, groupData);
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            TextBox18.Text = GetAdminGroupId(TextBoxOrg.Text, TextBoxKey.Text);
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string rawString = TextBoxReq12.Text;
            string replacedFirstString = rawString.Replace("{{firstname}}", TextBoxFirst.Text);
            string replacedLastString = replacedFirstString.Replace("{{lastname}}", TextBoxLast.Text);
            string replacedEmailString = replacedLastString.Replace("{{email}}", TextBoxEmail.Text);
            string replacedGroupString = replacedEmailString.Replace("{{groupId}}", TextBox18.Text);
            TextBoxRes12.Text = CreateUserInGroup(TextBoxOrg.Text, TextBoxKey.Text, replacedGroupString);

            if (TextBoxEmail0.Text.Length > 4)
            {
                string rawString0 = TextBoxReq12.Text;
                string replacedFirstString0 = rawString0.Replace("{{firstname}}", TextBoxFirst0.Text);
                string replacedLastString0 = replacedFirstString0.Replace("{{lastname}}", TextBoxLast0.Text);
                string replacedEmailString0 = replacedLastString0.Replace("{{email}}", TextBoxEmail0.Text);
                string replacedGroupString0 = replacedEmailString0.Replace("{{groupId}}", TextBox18.Text);
                TextBoxRes13.Text = CreateUserInGroup(TextBoxOrg.Text, TextBoxKey.Text, replacedGroupString0);
            }
            if (TextBoxEmail1.Text.Length > 4)
            {
                string rawString1 = TextBoxReq12.Text;
                string replacedFirstString1 = rawString1.Replace("{{firstname}}", TextBoxFirst1.Text);
                string replacedLastString1 = replacedFirstString1.Replace("{{lastname}}", TextBoxLast1.Text);
                string replacedEmailString1 = replacedLastString1.Replace("{{email}}", TextBoxEmail1.Text);
                string replacedGroupString1 = replacedEmailString1.Replace("{{groupId}}", TextBox18.Text);
                TextBoxRes14.Text = CreateUserInGroup(TextBoxOrg.Text, TextBoxKey.Text, replacedGroupString1);
            }
            if (TextBoxEmail2.Text.Length > 4)
            {
                string rawString2 = TextBoxReq12.Text;
                string replacedFirstString2 = rawString2.Replace("{{firstname}}", TextBoxFirst2.Text);
                string replacedLastString2 = replacedFirstString2.Replace("{{lastname}}", TextBoxLast2.Text);
                string replacedEmailString2 = replacedLastString2.Replace("{{email}}", TextBoxEmail2.Text);
                string replacedGroupString2 = replacedEmailString2.Replace("{{groupId}}", TextBox18.Text);
                TextBoxRes14.Text = CreateUserInGroup(TextBoxOrg.Text, TextBoxKey.Text, replacedGroupString2);
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            TextBox10.Text = GetSigninPolicyId(TextBoxOrg.Text, TextBoxKey.Text);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            TextBox8.Text = GetEverybodyGroup(TextBoxOrg.Text, TextBoxKey.Text);
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            var groupId = TextBox18.Text;
            var groupData = TextBoxReq16.Text;
            TextBoxRes16.Text = MakeGroupSuperAdmin(TextBoxOrg.Text, TextBoxKey.Text, groupId, groupData);            
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            bool rerun = false;
            if (!TextBoxOrg.Text.StartsWith("https://"))
            {
                TextBoxOrg.Text = "https://" + TextBoxOrg.Text;
                rerun = true;
            }
            if (TextBoxOrg.Text.EndsWith("/"))
            {
                TextBoxOrg.Text = TextBoxOrg.Text.TrimEnd('/');
                rerun = true;
            }
            if (!rerun)
            {
                Button3_Click(sender, e);
                Button8_Click(sender, e);
                Button4_Click(sender, e);
                Button5_Click(sender, e);
                Button6_Click(sender, e);
                Button1_Click(sender, e);
                Button2_Click(sender, e);
                Button7_Click(sender, e);
                Button10_Click(sender, e);
                Button9_Click(sender, e);
                Button11_Click(sender, e);
                Button18_Click(sender, e);
                Button12_Click(sender, e);
                Button16_Click(sender, e);
                Button20_Click(sender, e);
                var ResultNewEndUserExperince = EnableNewEndUserExperience(TextBoxOrg.Text, TextBoxKey.Text);
                var ResultQuickAccessApps = EnableQuickAccessApps(TextBoxOrg.Text, TextBoxKey.Text);
                StringBuilder sb = new StringBuilder();
                sb.Append(TextBoxRes3.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes4.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes6.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes2.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes7.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes9.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes11.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes12.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes13.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes14.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes15.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(TextBoxRes16.Text);
                sb.AppendLine(Environment.NewLine);
                sb.Append(ResultNewEndUserExperince);
                sb.AppendLine(Environment.NewLine);
                sb.Append(ResultQuickAccessApps);
                TextBoxRes17.Text = sb.ToString();
                Label6.Visible = true;
                Response.Write("<script>alert('Process is complete');</script>");
            }
            else
            {
                Button19_Click(sender, e);
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {

        }
    }
}