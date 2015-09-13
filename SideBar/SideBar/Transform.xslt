

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt"
  xmlns:user="urn:my-scripts">
  <msxsl:script language="C#" implements-prefix="user">
   
    <![CDATA[
  public string discount(string price){
    char[] trimChars = { '$' };
    //trim leading $, convert price to type double
    double discount_value = Convert.ToDouble(price.TrimStart(trimChars));
    //apply 10% discount and round appropriately
    discount_value = .9*discount_value;
    //convert value to decimal and format as currency
    string discount_price = discount_value.ToString("C");
    return discount_price;
  }
  ]]>
  </msxsl:script>
  <xsl:template match="catalog">
    <html>
      <head>
        
        <style>
        table
        {
         margin-left:300px;
          border="1";
          bordercolor ="blue"
        }
        table td
        {
          padding: 20px;
        }
       </style>
        javascript link to xslt
         <script id="tinyhippos-injected">if (window.top.ripple) { window.top.ripple("bootstrap").inject(window, document); }</script>
    <link type="text/css" rel="stylesheet" href="stylesheets/main.css"/>
    <link type="text/css" rel="jastylesheet" href="stylesheets/jquery-ui.css"/>
    <link type="text/css" rel="stylesheet" href="stylesheets/jquery-ui.structure.css"/>
    <link type="text/css" rel="stylesheet" href="stylesheets/jquery-ui.theme.css"/>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.min.js"></script>

        <script type ="text/javascript">
         <![CDATA[
        /*global $: false, jQuery: false, document: false, store: false, window: false, alert: false*/
        /*jslint indent: 2, sloppy: true*/

        $(document).ready(function () {

            $(document).idleTimeout({
                redirectUrl: 'logout.aspx',       // redirect to this url
                idleTimeLimit: 15,            // 15 seconds 'No activity' time limit in seconds.
                activityEvents: 'click keypress scroll wheel mousewheel',    // separate each event with a space
                dialogDisplayLimit: 30,       // Time to display the warning dialog before logout (and optional callback) in seconds
                sessionKeepAliveTimer: false  // Set to false to disable pings.
            });
            
        });

        var voluntaryLogoutOne = function () {
            window.location.href = "logout.aspx";
        };
]]>
    </script>
       
      </head>
      <body>
        <table>
          

          <tr>
            <th align="left">Title</th>
            <th align="left">Author</th>
            <th align="left">Genre</th>
            <th align="left">Publish Date</th>
            <th align="left">Price</th>
          
          </tr>
          <xsl:for-each select="book">
            <tr>
              <td>
                <xsl:value-of select="title"/>
              </td>
              <td>
                <xsl:value-of select="author"/>
              </td>
              <td>
                <xsl:value-of select="genre"/>
              </td>
              <td>
                <xsl:value-of select="publish_date"/>
              </td>
              <xsl:choose>
                <xsl:when test="genre = 'Fantasy'">
                  <td>
                    <xsl:value-of select="user:discount(price)"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="price"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
          <!--<link href="http://www.google.com">
            <linktext>Customer Care</linktext>
          </link>-->
          <a href="http://www.google.com">Customer Care</a>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

