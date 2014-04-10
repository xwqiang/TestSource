<%@ CODEPAGE=65001 %> 
<%@ Response.CodePage=65001%> 
<%@ Response.Charset="65001" %> 
<%@ Charset="65001" %> 
<%@ LANGUAGE="VBSCRIPT" CODEPAGE="65001"%> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=65001"/>
</head>
<%
private void Button1_Click(object sender, System.EventArgs e)
  {
  Response.ContentEncoding = System.Text.Encoding.UTF8;
   HttpWebRequest req = null;
   try
   {
    string url = "http://localhost:58031/pushdeal.asp";
   //创建一个HttpWebRequest对象
    req =  (HttpWebRequest) HttpWebRequest.Create(url);
   //设置它提交数据的方式post
    req.Method = "POST";
   //设置 Content-type HTTP 标头的值
    req.ContentType = "text/xml";// "application/x-www-form-urlencoded;charset=gb2312";
    
    using (StreamWriter requestWriter = new StreamWriter(req.GetRequestStream()));
    {
     requestWriter.WriteLine("abc");//将读取的内容写入到RequestStream中。
    }
    Response.Write("success");
   }
   catch(Exception ex)
   {
    throw ex;
   }
   finally{
   }
}

%>

<input type="button" value="push"></input>