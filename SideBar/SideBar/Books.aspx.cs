using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace SideBar
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TransformXML("books.xml", "books.xslt");
        }

        public static void TransformXML(string sXmlPath, string sXslPath)
        {
            try
            {
                /* loading XML */
                XPathDocument myXPathDoc = new XPathDocument(sXmlPath);
                XslCompiledTransform myXslTrans = new XslCompiledTransform();
                /* loading XSLT */
                myXslTrans.Load(sXslPath);
                /* creating Output Stream */
                XmlTextWriter myWriter = new XmlTextWriter("result.xml", null);
                /* XML transformation */
                myXslTrans.Transform(myXPathDoc, null, myWriter);
                myWriter.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception: {0}", e.ToString());
            }
        }
    }
}