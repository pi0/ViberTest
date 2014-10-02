package com.viber.voip.registration;

import android.util.Xml;
import com.viber.voip.ViberEnv;
import com.viber.voip.util.am;
import com.viber.voip.util.http.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

public abstract class cq<RES>
{
  protected String a;
  protected StringWriter b;
  protected XmlSerializer c;
  protected String d;
  protected String e;
  protected RES f;
  protected HashMap<String, String> g = new HashMap();
  private String h;
  
  public cq(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.h = getClass().getSimpleName();
    this.d = paramString2;
    this.e = paramString3;
    this.b = new StringWriter();
    this.c = Xml.newSerializer();
    this.c.setOutput(this.b);
    this.c.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    this.c.startTag(null, paramString2);
  }
  
  protected void a(InputStream paramInputStream)
  {
    int i = 0;
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(am.a(paramInputStream, 10, 100000));
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str;
      try
      {
        XmlPullParser localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
        localXmlPullParser.setInput(localByteArrayInputStream, "utf-8");
        localStringBuilder = new StringBuilder();
        int j = localXmlPullParser.nextTag();
        str = null;
        if (j == 1) {
          break;
        }
        if (j == 2)
        {
          str = localXmlPullParser.getName();
          if (this.e.equalsIgnoreCase(str)) {
            i = 1;
          }
          j = localXmlPullParser.next();
          continue;
        }
        if (j == 4)
        {
          localStringBuilder.append(localXmlPullParser.getText());
          continue;
        }
        if (j != 3) {
          continue;
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        throw new IOException(localXmlPullParserException.getMessage());
      }
      finally
      {
        localByteArrayInputStream.close();
      }
      if (!this.e.equalsIgnoreCase(str))
      {
        a(str, localStringBuilder.toString().trim());
        localStringBuilder.setLength(0);
        str = null;
      }
    }
    if (i == 0) {
      throw new IOException("XML response malformed, expected root tag not found: " + this.e);
    }
    localByteArrayInputStream.close();
  }
  
  protected abstract void a(String paramString1, String paramString2);
  
  protected abstract RES b();
  
  public void b(String paramString1, String paramString2)
  {
    this.c.startTag(null, paramString1);
    this.c.text(paramString2);
    this.c.endTag(null, paramString1);
  }
  
  public RES c()
  {
    this.c.endTag(null, this.d);
    this.c.endDocument();
    String str = this.b.toString();
    this.b = null;
    this.c = null;
    this.d = null;
    HttpRequest localHttpRequest = ViberEnv.newHttpRequest(this.a);
    localHttpRequest.setPost(true);
    localHttpRequest.addParam("XMLDOC", str);
    Iterator localIterator = this.g.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHttpRequest.addParam((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    this.f = b();
    a(localHttpRequest.getInputStream());
    return this.f;
  }
  
  public void c(String paramString1, String paramString2)
  {
    this.g.put(paramString1, paramString2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cq
 * JD-Core Version:    0.7.0.1
 */