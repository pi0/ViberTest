package com.viber.voip.registration;

import android.text.TextUtils;
import android.util.Xml;
import com.viber.voip.util.aj;
import com.viber.voip.w;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

class cm
{
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, boolean paramBoolean, cn paramcn)
  {
    XmlSerializer localXmlSerializer = Xml.newSerializer();
    StringWriter localStringWriter = new StringWriter();
    localXmlSerializer.setOutput(localStringWriter);
    localXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    localXmlSerializer.startDocument("utf-8", null);
    localXmlSerializer.startTag(null, "RegisterUserRequest");
    String[] arrayOfString1 = new String[18];
    arrayOfString1[0] = paramString1;
    arrayOfString1[1] = paramString2;
    arrayOfString1[2] = paramString3;
    arrayOfString1[3] = paramString4;
    arrayOfString1[4] = paramString5;
    arrayOfString1[5] = paramString6;
    arrayOfString1[6] = w.e();
    arrayOfString1[7] = w.b();
    arrayOfString1[8] = paramString7;
    arrayOfString1[9] = paramString8;
    arrayOfString1[10] = paramString9;
    arrayOfString1[11] = "1";
    arrayOfString1[12] = paramString12;
    arrayOfString1[13] = paramcn.a;
    arrayOfString1[14] = paramcn.b;
    arrayOfString1[15] = paramcn.c;
    arrayOfString1[16] = paramcn.d;
    arrayOfString1[17] = paramcn.e;
    String[] arrayOfString2 = { "PhoneNumber", "PushToken", "CountryIDDCode", "UDID", "DeviceType", "SystemVersion", "System", "ViberVersion", "MCC", "MNC", "CC", "VoIP", "Language", "ANDROID_ID", "SERIAL_NUMBER", "WIFI_MAC_ADDRESS", "IMEI", "BT_MAC_ADDRESS" };
    int i = 0;
    for (;;)
    {
      if (i < arrayOfString1.length)
      {
        if (arrayOfString1[i] != null) {
          localXmlSerializer.startTag(null, arrayOfString2[i]);
        }
        try
        {
          localXmlSerializer.text(arrayOfString1[i]);
          localXmlSerializer.endTag(null, arrayOfString2[i]);
          i++;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          for (;;)
          {
            String str2 = arrayOfString1[i];
            int j = 0;
            if (j < str2.length())
            {
              int k = str2.charAt(j);
              if (((k >= 32) && (k <= 55295)) || ((k >= 57344) && (k <= 65533))) {}
              for (int m = 1;; m = 0)
              {
                if (m == 0) {
                  str2 = str2.replace(Character.toString(k), "");
                }
                j++;
                break;
              }
            }
            localXmlSerializer.text(str2);
          }
        }
      }
    }
    if ((paramString10.equals("1")) && (paramString11 != null) && (!TextUtils.isEmpty(paramString11)))
    {
      byte[] arrayOfByte1 = aj.a(paramString11 + "login", "fca536d85836e112b4e4f8bc7747159acb84118b8578bd5bd3ee53ecd0");
      String str1 = String.valueOf(System.currentTimeMillis());
      byte[] arrayOfByte2 = aj.a(paramString4 + w.e() + str1, aj.a(arrayOfByte1));
      localXmlSerializer.startTag(null, "Reinstall");
      localXmlSerializer.startTag(null, "Timestamp");
      localXmlSerializer.text(str1);
      localXmlSerializer.endTag(null, "Timestamp");
      localXmlSerializer.startTag(null, "SignatureNPT");
      localXmlSerializer.text(aj.a(arrayOfByte2));
      localXmlSerializer.endTag(null, "SignatureNPT");
      localXmlSerializer.endTag(null, "Reinstall");
    }
    localXmlSerializer.startTag(null, "ReRegisterState");
    localXmlSerializer.text(paramString10);
    localXmlSerializer.endTag(null, "ReRegisterState");
    localXmlSerializer.endTag(null, "RegisterUserRequest");
    localXmlSerializer.endDocument();
    return localStringWriter.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cm
 * JD-Core Version:    0.7.0.1
 */