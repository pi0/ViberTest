package com.viber.voip.registration;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

class bo
{
  private final InputStream a;
  private final List<bp> b = new ArrayList(5);
  
  public bo(InputStream paramInputStream)
  {
    this.a = paramInputStream;
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((bp)localIterator.next()).a(paramString1, paramString2, paramString3, paramString4);
    }
  }
  
  void a()
  {
    int i;
    for (;;)
    {
      XmlPullParser localXmlPullParser;
      Object localObject2;
      try
      {
        localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
        localXmlPullParser.setInput(this.a, "utf-8");
      }
      catch (XmlPullParserException localXmlPullParserException1)
      {
        int j;
        throw new IOException(localXmlPullParserException1.getMessage());
      }
      try
      {
        i = localXmlPullParser.nextTag();
        localObject2 = null;
        str1 = null;
      }
      catch (XmlPullParserException localXmlPullParserException2)
      {
        throw new IOException(localXmlPullParserException2.getMessage());
      }
      finally
      {
        this.a.close();
      }
      j = localXmlPullParser.next();
      i = j;
      break;
      str1 = localXmlPullParser.getName();
      continue;
      bool = localXmlPullParser.isWhitespace();
      str2 = localXmlPullParser.getText();
      if (("key".equalsIgnoreCase(str1)) && (!bool))
      {
        localObject2 = str2;
      }
      else if (("string".equalsIgnoreCase(str1)) && (localObject2 != null) && (str2 != null))
      {
        a(localObject2, str2, "@string/" + localObject2, "0");
        localObject2 = null;
      }
    }
    String str1 = null;
    while (i == 1)
    {
      boolean bool;
      String str2;
      this.a.close();
      return;
    }
    switch (i)
    {
    }
  }
  
  void a(bp parambp)
  {
    this.b.add(parambp);
  }
  
  void b()
  {
    this.b.clear();
  }
  
  void c()
  {
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.bo
 * JD-Core Version:    0.7.0.1
 */