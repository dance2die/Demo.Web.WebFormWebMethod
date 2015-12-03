using System;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using Newtonsoft.Json;

namespace Demo.Web.WebFormWebMethod.WebForms
{
	public partial class Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		[WebMethod]
		[ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
		public static string GetData()
		{
			var data = new {data = "Hello World"};
			return JsonConvert.SerializeObject(data);
		}
	}
}