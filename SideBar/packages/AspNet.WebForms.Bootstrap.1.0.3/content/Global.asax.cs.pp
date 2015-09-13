using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace $rootnamespace$
{
	public class Global : HttpApplication
	{
		void Application_Start(object sender, EventArgs e)
		{
			BundleConfig.RegisterBundles(BundleTable.Bundles);
		}

		void Application_End(object sender, EventArgs e)
		{
		}

		void Application_Error(object sender, EventArgs e)
		{
		}
	}
}