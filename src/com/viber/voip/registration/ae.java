package com.viber.voip.registration;

import android.util.Xml;
import com.viber.voip.w;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

final class ae
{
  static
  {
    if (!ae.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ae()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static String a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, String paramString)
  {
    XmlSerializer localXmlSerializer = Xml.newSerializer();
    StringWriter localStringWriter = new StringWriter();
    localXmlSerializer.setOutput(localStringWriter);
    localXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    localXmlSerializer.startTag(null, "ActivateUserRequest");
    String[] arrayOfString1 = new String[5];
    if (paramCharSequence1 == null) {}
    for (String str = "";; str = paramCharSequence1.toString())
    {
      arrayOfString1[0] = str;
      arrayOfString1[1] = paramCharSequence2.toString();
      arrayOfString1[2] = "8";
      arrayOfString1[3] = paramString;
      arrayOfString1[4] = w.e();
      String[] arrayOfString2 = { "UDID", "ActivationCode", "ProtocolVersion", "Language", "System" };
      for (int i = 0; i < arrayOfString1.length; i++) {
        if (arrayOfString1[i] != null)
        {
          localXmlSerializer.startTag(null, arrayOfString2[i]);
          localXmlSerializer.text(arrayOfString1[i]);
          localXmlSerializer.endTag(null, arrayOfString2[i]);
        }
      }
    }
    localXmlSerializer.endTag(null, "ActivateUserRequest");
    localXmlSerializer.endDocument();
    return localStringWriter.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ae
 * JD-Core Version:    0.7.0.1
 */