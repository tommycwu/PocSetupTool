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
            var userUrl = baseUrl + "/api/v1/policies?type=PASSWORD";
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
            var userUrl = baseUrl + "/api/v1/groups";
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
        public List<string> GetMfaPolicy(string baseUrl, string apiKey)
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
            var userUrl = baseUrl + "/api/v1/policies?type=PASSWORD";
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
            var userUrl = baseUrl + "/api/v1/users/";
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
            var appsUrl = baseUrl + "/api/v1/apps/";
            List<string> responseList = new List<string>(new string[] { "" });
            try
            {
                var endpoint = new Uri(appsUrl);
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
                    Token = apiKey
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

        public string CreatePasswordPolicy(string baseUrl, string apiKey, string policyData)
        {
            var policyUrl = baseUrl + "/api/v1/policies";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(policyUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(policyData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string CreatePasswordRule(string baseUrl, string apiKey, string policyId, string ruleData)
        {
            var policyUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(policyUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(ruleData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }


        public string EnablePushNotification(string baseUrl, string apiKey, string policyId, string policyData)
        {
            var policyUrl = baseUrl + "/api/v1/policies/" + policyId + "/rules";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(policyUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(policyData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string EnableThreatInsight(string baseUrl, string apiKey, string configData)
        {
            var threatUrl = baseUrl + "/api/v1/threats/configuration";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(threatUrl)
                    };
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("SSWS", apiKey);
                    request.Content = new StringContent(configData, Encoding.UTF8, "application/json");
                    var response = client.SendAsync(request);
                    return response.Result.Content.ReadAsStringAsync().Result;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public string ActivateOktaOtp(string baseUrl, string apiKey)
        {
            var policyUrl = baseUrl + "/api/v1/org/factors/okta_otp/lifecycle/activate";
            try
            {
                using (var client = new HttpClient())
                {
                    var request = new HttpRequestMessage
                    {
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(policyUrl)
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var oktaDomain = TextBox1.Text;
            var apiKey = TextBox2.Text;

            //oktaDomain = "https://nextpoc.okta.com";
            //apiKey = "00_66otAllJp2xgJB4zryTt76xeQcHN3syuCRztDhE";
            oktaDomain = "https://dev-8964037.okta.com";
            apiKey = "004PwPLvNfDegg9U0UG9P2GIoBdr5LDTKHbP8BVGpk";

            TextBoxPolicyId1.Text = GetMfaPolicyId(oktaDomain, apiKey);
            TextBoxGroupId.Text = GetEverybodyGroup(oktaDomain, apiKey);
            TextBoxPolicyId2.Text = GetPwdPolicyId(oktaDomain, apiKey);
            var featuresList = GetSignonPolicies(oktaDomain, apiKey);
            //foreach (var featureObj in featuresList)
            //{
            //    TextBoxBetaFeatures.Text += featureObj.ToString() + Environment.NewLine;
            //}
            //var mfaList = GetMfaPolicy(oktaDomain, apiKey);
            //foreach (var mfaObj in mfaList)
            //{
            //    TextBoxMfaPolicies.Text += mfaObj.ToString() + Environment.NewLine;
            //}
            //var usersList = GetPasswordPolicies(oktaDomain, apiKey);
            //foreach (var userObj in usersList)
            //{
            //    TextBoxPwdPolicies.Text += userObj.ToString() + Environment.NewLine;
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var oktaDomain = TextBox1.Text;
            var apiKey = TextBox2.Text;
            var policyData = TextBoxReq2.Text;
            var policyId = TextBoxPolicyId1.Text;

            //oktaDomain = "https://nextpoc.okta.com";
            //apiKey = "00_66otAllJp2xgJB4zryTt76xeQcHN3syuCRztDhE";
            oktaDomain = "https://dev-8964037.okta.com";
            apiKey = "004PwPLvNfDegg9U0UG9P2GIoBdr5LDTKHbP8BVGpk";

            //var postResult = ActivateOktaOtp(oktaDomain, apiKey).ToString();
            //TextBoxPostReturn.Text = postResult;
            TextBoxRes2.Text = EnablePushNotification(oktaDomain, apiKey, policyId, policyData);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var oktaDomain = TextBox1.Text;
            var apiKey = TextBox2.Text;
            var threatData = TextBoxReq3.Text;

            TextBoxRes3.Text = EnableThreatInsight(oktaDomain, apiKey, threatData);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var oktaDomain = TextBox1.Text;
            var apiKey = TextBox2.Text;
            var pwdPolicyId = TextBoxPolicyId2.Text;
            var ruleData = TextBoxReq5.Text;

            //oktaDomain = "https://nextpoc.okta.com";
            //apiKey = "00_66otAllJp2xgJB4zryTt76xeQcHN3syuCRztDhE";
            oktaDomain = "https://dev-8964037.okta.com";
            apiKey = "004PwPLvNfDegg9U0UG9P2GIoBdr5LDTKHbP8BVGpk";

            TextBoxPolicyId1.Text = GetMfaPolicyId(oktaDomain, apiKey);
            TextBoxGroupId.Text = GetEverybodyGroup(oktaDomain, apiKey);
            var featuresList = GetSignonPolicies(oktaDomain, apiKey);

            var resultsList = GetPasswordPolicies(oktaDomain, apiKey);
            foreach (var resultObj in resultsList)
            {
                TextBoxRes4.Text += resultObj.ToString() + Environment.NewLine;
            }

            string rawString = TextBoxReq4.Text;
            string replacedString = rawString.Replace("{{groupId}}", TextBoxGroupId.Text);
            TextBoxRes4.Text = CreatePasswordPolicy(oktaDomain, apiKey, replacedString);
            TextBoxRes5.Text = CreatePasswordRule(oktaDomain, apiKey, pwdPolicyId, ruleData);
        }
    }
}