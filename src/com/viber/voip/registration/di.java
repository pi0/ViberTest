package com.viber.voip.registration;

import android.util.Xml;
import com.viber.voip.ViberApplication;
import com.viber.voip.w;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

public final class di
{
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    int i = 0;
    XmlSerializer localXmlSerializer = Xml.newSerializer();
    StringWriter localStringWriter = new StringWriter();
    localXmlSerializer.setOutput(localStringWriter);
    localXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    localXmlSerializer.startTag(null, "UpdatePhoneRequest");
    String[] arrayOfString1 = new String[4];
    arrayOfString1[0] = paramString1;
    arrayOfString1[1] = paramString2;
    arrayOfString1[2] = paramString3;
    arrayOfString1[3] = w.e();
    String[] arrayOfString2 = { "PushToken", "UDID", "SystemVersion", "System" };
    while (i < arrayOfString1.length)
    {
      if (arrayOfString1[i] != null)
      {
        localXmlSerializer.startTag(null, arrayOfString2[i]);
        localXmlSerializer.text(arrayOfString1[i]);
        localXmlSerializer.endTag(null, arrayOfString2[i]);
      }
      i++;
    }
    localXmlSerializer.endTag(null, "UpdatePhoneRequest");
    localXmlSerializer.endDocument();
    String str = localStringWriter.toString();
    ViberApplication.log(4, "-trace-", "UpdatePhoneMRequestBuilder.getXml():\n" + str);
    return str;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.di
 * JD-Core Version:    0.7.0.1
 */