package com.viber.voip.registration;

import android.util.Xml;
import com.viber.voip.ViberApplication;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

public final class ct
{
  public static String a(String paramString1, String paramString2)
  {
    int i = 0;
    XmlSerializer localXmlSerializer = Xml.newSerializer();
    StringWriter localStringWriter = new StringWriter();
    localXmlSerializer.setOutput(localStringWriter);
    localXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    localXmlSerializer.startTag(null, "ResendActivationCodeRequest");
    String[] arrayOfString1 = { paramString1, "AndroidTablet", paramString2 };
    String[] arrayOfString2 = { "UDID", "System", "CanonizedPhoneNumber" };
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
    localXmlSerializer.endTag(null, "ResendActivationCodeRequest");
    localXmlSerializer.endDocument();
    String str = localStringWriter.toString();
    ViberApplication.log(4, "-trace-", "ResendActivationCodeRequestBuilder.getXml():\n" + str);
    return str;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.ct
 * JD-Core Version:    0.7.0.1
 */