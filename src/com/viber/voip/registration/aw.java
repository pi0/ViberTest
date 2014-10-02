package com.viber.voip.registration;

import com.viber.voip.util.am;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

class aw
{
  private final InputStream a;
  
  aw(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("The inputStream argument can not be null");
    }
    try
    {
      byte[] arrayOfByte2 = am.a(paramInputStream, 10, 100000);
      arrayOfByte1 = arrayOfByte2;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
        byte[] arrayOfByte1 = new byte[0];
      }
    }
    new String(arrayOfByte1);
    this.a = new ByteArrayInputStream(arrayOfByte1);
  }
  
  public CountryCode a()
  {
    int i;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    for (;;)
    {
      XmlPullParser localXmlPullParser;
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
        str1 = null;
        localObject2 = null;
        localObject3 = null;
        localObject4 = null;
        localObject5 = null;
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
      bool1 = localXmlPullParser.isWhitespace();
      str2 = localXmlPullParser.getText();
      if (("CountryCode".equalsIgnoreCase(str1)) && (!bool1))
      {
        localObject3 = str2;
      }
      else if ("CountryIDDCode".equalsIgnoreCase(str1))
      {
        localObject4 = str2;
      }
      else if ("CountryName".equalsIgnoreCase(str1))
      {
        localObject5 = str2;
      }
      else
      {
        bool2 = "CountryLocalCode".equalsIgnoreCase(str1);
        if (bool2) {
          localObject2 = str2;
        }
      }
    }
    String str1 = null;
    while (i == 1)
    {
      boolean bool1;
      String str2;
      boolean bool2;
      this.a.close();
      return new CountryCode(localObject3, localObject4, localObject5, localObject2);
    }
    switch (i)
    {
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.aw
 * JD-Core Version:    0.7.0.1
 */