package com.viber.voip.registration;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;

public class bh
{
  private static final String f = bh.class.getSimpleName();
  private final Context a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e;
  
  public bh(Context paramContext)
  {
    this.a = paramContext;
    c();
    d();
    f();
    e();
  }
  
  /* Error */
  private bi a(org.xmlpull.v1.XmlPullParser paramXmlPullParser)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 48 1 0
    //   6: iconst_1
    //   7: if_icmpeq +104 -> 111
    //   10: aload_1
    //   11: invokeinterface 48 1 0
    //   16: iconst_2
    //   17: if_icmpne +83 -> 100
    //   20: aload_1
    //   21: invokeinterface 51 1 0
    //   26: ldc 53
    //   28: invokevirtual 59	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   31: ifeq +69 -> 100
    //   34: aload_1
    //   35: aconst_null
    //   36: ldc 61
    //   38: invokeinterface 65 3 0
    //   43: astore 5
    //   45: aload_1
    //   46: aconst_null
    //   47: ldc 67
    //   49: invokeinterface 65 3 0
    //   54: astore 6
    //   56: aload 6
    //   58: invokestatic 73	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   61: ifeq +29 -> 90
    //   64: iconst_1
    //   65: istore 7
    //   67: getstatic 78	android/os/Build:MODEL	Ljava/lang/String;
    //   70: aload 5
    //   72: invokevirtual 82	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   75: ifeq +25 -> 100
    //   78: new 84	com/viber/voip/registration/bi
    //   81: dup
    //   82: aload 5
    //   84: iload 7
    //   86: invokespecial 87	com/viber/voip/registration/bi:<init>	(Ljava/lang/String;I)V
    //   89: areturn
    //   90: aload 6
    //   92: invokestatic 93	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   95: istore 7
    //   97: goto -30 -> 67
    //   100: aload_1
    //   101: invokeinterface 96 1 0
    //   106: pop
    //   107: goto -107 -> 0
    //   110: astore_3
    //   111: aconst_null
    //   112: areturn
    //   113: astore_2
    //   114: goto -3 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	bh
    //   0	117	1	paramXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   113	1	2	localIOException	java.io.IOException
    //   110	1	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   43	40	5	str1	String
    //   54	37	6	str2	String
    //   65	31	7	i	int
    // Exception table:
    //   from	to	target	type
    //   0	64	110	org/xmlpull/v1/XmlPullParserException
    //   67	90	110	org/xmlpull/v1/XmlPullParserException
    //   90	97	110	org/xmlpull/v1/XmlPullParserException
    //   100	107	110	org/xmlpull/v1/XmlPullParserException
    //   0	64	113	java/io/IOException
    //   67	90	113	java/io/IOException
    //   90	97	113	java/io/IOException
    //   100	107	113	java/io/IOException
  }
  
  private static void a(String paramString) {}
  
  private void c()
  {
    bi localbi = a(this.a.getResources().getXml(2131034113));
    if ((localbi != null) && (localbi.b == 0)) {}
    for (boolean bool = true;; bool = false)
    {
      this.c = bool;
      return;
    }
  }
  
  private void d()
  {
    if (a(this.a.getResources().getXml(2131034115)) != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.b = bool;
      return;
    }
  }
  
  private void e()
  {
    if (a(this.a.getResources().getXml(2131034124)) != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.d = bool;
      return;
    }
  }
  
  private void f()
  {
    if (a(this.a.getResources().getXml(2131034116)) != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.e = bool;
      return;
    }
  }
  
  public boolean a()
  {
    String str = Build.MODEL;
    a("isInSmsWhiteList model:" + str + " value:" + this.d);
    return this.d;
  }
  
  public boolean b()
  {
    String str = Build.MODEL;
    a("isInProximityWhiteList model:" + str + " value:" + this.e);
    return this.e;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bh
 * JD-Core Version:    0.7.0.1
 */