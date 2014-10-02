package com.viber.voip.billing;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.SystemClock;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.process.k;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.http.HttpRequest;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static an b;
  private static a c;
  private r d;
  private long e;
  private Map<String, ah> f = new HashMap();
  private Map<String, List<ai>> g = new HashMap();
  
  public static a a()
  {
    if ((c == null) && (k.a() == k.a)) {
      c = new a();
    }
    return c;
  }
  
  /* Error */
  public static m a(String paramString, Map<String, String> paramMap, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: iconst_0
    //   4: istore 6
    //   6: aload_0
    //   7: astore 7
    //   9: iload 6
    //   11: iconst_5
    //   12: if_icmpge +470 -> 482
    //   15: aload 7
    //   17: iload_3
    //   18: invokestatic 65	com/viber/voip/billing/a:c	(Ljava/lang/String;I)Lcom/viber/voip/util/http/HttpRequest;
    //   21: astore 19
    //   23: aload_1
    //   24: ifnull +110 -> 134
    //   27: aload 19
    //   29: iconst_1
    //   30: invokeinterface 71 2 0
    //   35: aload_1
    //   36: invokeinterface 77 1 0
    //   41: invokeinterface 83 1 0
    //   46: astore 24
    //   48: aload 24
    //   50: invokeinterface 89 1 0
    //   55: ifeq +79 -> 134
    //   58: aload 24
    //   60: invokeinterface 93 1 0
    //   65: checkcast 95	java/util/Map$Entry
    //   68: astore 25
    //   70: aload 19
    //   72: aload 25
    //   74: invokeinterface 98 1 0
    //   79: checkcast 100	java/lang/String
    //   82: aload 25
    //   84: invokeinterface 103 1 0
    //   89: checkcast 100	java/lang/String
    //   92: invokeinterface 107 3 0
    //   97: goto -49 -> 48
    //   100: astore 23
    //   102: aload 23
    //   104: astore 14
    //   106: aload 19
    //   108: astore 13
    //   110: aload 13
    //   112: invokeinterface 111 1 0
    //   117: ifnonnull +266 -> 383
    //   120: new 113	com/viber/voip/billing/m
    //   123: dup
    //   124: aload 14
    //   126: invokespecial 116	com/viber/voip/billing/m:<init>	(Ljava/io/IOException;)V
    //   129: astore 17
    //   131: aload 17
    //   133: areturn
    //   134: aload 19
    //   136: iconst_0
    //   137: invokeinterface 119 2 0
    //   142: aload 19
    //   144: invokeinterface 123 1 0
    //   149: istore 20
    //   151: iload 20
    //   153: tableswitch	default:+43 -> 196, 301:+78->231, 302:+78->231, 303:+78->231, 304:+43->196, 305:+43->196, 306:+43->196, 307:+78->231
    //   197: istore 8
    //   199: aload 19
    //   201: astore 5
    //   203: iload 8
    //   205: ifne +150 -> 355
    //   208: new 60	java/io/IOException
    //   211: dup
    //   212: ldc 125
    //   214: invokespecial 128	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   217: athrow
    //   218: astore 12
    //   220: aload 5
    //   222: astore 13
    //   224: aload 12
    //   226: astore 14
    //   228: goto -118 -> 110
    //   231: aload 19
    //   233: ldc 130
    //   235: invokeinterface 134 2 0
    //   240: astore 21
    //   242: new 136	java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial 137	java/lang/StringBuilder:<init>	()V
    //   249: ldc 139
    //   251: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload 19
    //   256: invokeinterface 123 1 0
    //   261: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   264: ldc 148
    //   266: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: aload 21
    //   271: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 153	com/viber/voip/billing/a:c	(Ljava/lang/String;)V
    //   280: new 155	java/net/URL
    //   283: dup
    //   284: new 155	java/net/URL
    //   287: dup
    //   288: aload 7
    //   290: invokespecial 156	java/net/URL:<init>	(Ljava/lang/String;)V
    //   293: aload 21
    //   295: invokespecial 159	java/net/URL:<init>	(Ljava/net/URL;Ljava/lang/String;)V
    //   298: invokevirtual 160	java/net/URL:toString	()Ljava/lang/String;
    //   301: astore 22
    //   303: new 136	java/lang/StringBuilder
    //   306: dup
    //   307: invokespecial 137	java/lang/StringBuilder:<init>	()V
    //   310: ldc 139
    //   312: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: aload 19
    //   317: invokeinterface 123 1 0
    //   322: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   325: ldc 162
    //   327: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: aload 22
    //   332: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   338: invokestatic 153	com/viber/voip/billing/a:c	(Ljava/lang/String;)V
    //   341: iinc 6 1
    //   344: aload 22
    //   346: astore 7
    //   348: aload 19
    //   350: astore 5
    //   352: goto -343 -> 9
    //   355: aload 5
    //   357: invokeinterface 165 1 0
    //   362: invokestatic 168	com/viber/voip/billing/a:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   365: astore 9
    //   367: iload_2
    //   368: ifeq +71 -> 439
    //   371: new 113	com/viber/voip/billing/m
    //   374: dup
    //   375: aload 9
    //   377: aload 7
    //   379: invokespecial 170	com/viber/voip/billing/m:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   382: areturn
    //   383: new 113	com/viber/voip/billing/m
    //   386: dup
    //   387: new 172	org/json/JSONObject
    //   390: dup
    //   391: aload 13
    //   393: invokeinterface 111 1 0
    //   398: invokestatic 168	com/viber/voip/billing/a:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   401: invokespecial 173	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   404: aload 7
    //   406: invokespecial 176	com/viber/voip/billing/m:<init>	(Lorg/json/JSONObject;Ljava/lang/String;)V
    //   409: astore 18
    //   411: aload 18
    //   413: areturn
    //   414: astore 16
    //   416: new 113	com/viber/voip/billing/m
    //   419: dup
    //   420: aload 16
    //   422: invokespecial 116	com/viber/voip/billing/m:<init>	(Ljava/io/IOException;)V
    //   425: areturn
    //   426: astore 15
    //   428: new 113	com/viber/voip/billing/m
    //   431: dup
    //   432: getstatic 181	com/viber/voip/billing/s:b	Lcom/viber/voip/billing/s;
    //   435: invokespecial 184	com/viber/voip/billing/m:<init>	(Lcom/viber/voip/billing/s;)V
    //   438: areturn
    //   439: new 113	com/viber/voip/billing/m
    //   442: dup
    //   443: new 172	org/json/JSONObject
    //   446: dup
    //   447: aload 9
    //   449: invokespecial 173	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   452: aload 7
    //   454: iload 4
    //   456: invokespecial 187	com/viber/voip/billing/m:<init>	(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    //   459: astore 10
    //   461: aload 10
    //   463: areturn
    //   464: astore 11
    //   466: aload 11
    //   468: invokevirtual 190	org/json/JSONException:printStackTrace	()V
    //   471: new 113	com/viber/voip/billing/m
    //   474: dup
    //   475: getstatic 181	com/viber/voip/billing/s:b	Lcom/viber/voip/billing/s;
    //   478: invokespecial 184	com/viber/voip/billing/m:<init>	(Lcom/viber/voip/billing/s;)V
    //   481: areturn
    //   482: iconst_0
    //   483: istore 8
    //   485: goto -282 -> 203
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	488	0	paramString	String
    //   0	488	1	paramMap	Map<String, String>
    //   0	488	2	paramBoolean1	boolean
    //   0	488	3	paramInt	int
    //   0	488	4	paramBoolean2	boolean
    //   1	355	5	localObject1	Object
    //   4	338	6	i	int
    //   7	446	7	localObject2	Object
    //   197	287	8	j	int
    //   365	83	9	str1	String
    //   459	3	10	localm1	m
    //   464	3	11	localJSONException1	org.json.JSONException
    //   218	7	12	localIOException1	java.io.IOException
    //   108	284	13	localObject3	Object
    //   104	123	14	localObject4	Object
    //   426	1	15	localJSONException2	org.json.JSONException
    //   414	7	16	localIOException2	java.io.IOException
    //   129	3	17	localm2	m
    //   409	3	18	localm3	m
    //   21	328	19	localHttpRequest	HttpRequest
    //   149	3	20	k	int
    //   240	54	21	str2	String
    //   301	44	22	str3	String
    //   100	3	23	localIOException3	java.io.IOException
    //   46	13	24	localIterator	java.util.Iterator
    //   68	15	25	localEntry	java.util.Map.Entry
    // Exception table:
    //   from	to	target	type
    //   27	48	100	java/io/IOException
    //   48	97	100	java/io/IOException
    //   134	151	100	java/io/IOException
    //   231	341	100	java/io/IOException
    //   15	23	218	java/io/IOException
    //   208	218	218	java/io/IOException
    //   355	367	218	java/io/IOException
    //   110	131	414	java/io/IOException
    //   383	411	414	java/io/IOException
    //   110	131	426	org/json/JSONException
    //   383	411	426	org/json/JSONException
    //   439	461	464	org/json/JSONException
  }
  
  private static m a(String paramString, boolean paramBoolean, int paramInt)
  {
    return a(paramString, null, paramBoolean, paramInt, true);
  }
  
  public static String a(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    char[] arrayOfChar = new char[1024];
    InputStreamReader localInputStreamReader = new InputStreamReader(paramInputStream);
    for (;;)
    {
      int i = localInputStreamReader.read(arrayOfChar);
      if (i <= 0) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(arrayOfChar, 0, i);
    }
  }
  
  public static String a(String paramString)
  {
    String str = Locale.getDefault().getLanguage();
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramString.indexOf('?') >= 0) {
      localStringBuilder.append('&');
    }
    for (;;)
    {
      localStringBuilder.append("lang=").append(str);
      return localStringBuilder.toString();
      localStringBuilder.append('?');
    }
  }
  
  private static String a(String paramString, boolean paramBoolean)
  {
    String str2;
    if (b == null)
    {
      str2 = null;
      return str2;
    }
    if (paramBoolean) {}
    for (String str1 = bc.b().H;; str1 = bc.b().G)
    {
      str2 = str1 + paramString + "/phone/" + c() + "/ts/" + b.a + "/token/" + b.b;
      if ((!"payment-history".equals(paramString)) && (!"call-history".equals(paramString))) {
        break;
      }
      return a(str2);
    }
  }
  
  private void a(aj paramaj)
  {
    c("obtainToken()");
    if ((b == null) || (b.a()))
    {
      new ak(paramaj).execute(new Void[0]);
      return;
    }
    paramaj.a(b);
  }
  
  private void a(r paramr, v paramv)
  {
    ArrayList localArrayList = new ArrayList();
    q[] arrayOfq = paramr.a;
    int i = arrayOfq.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(q.a(arrayOfq[j]));
    }
    bv.a().c().a(localArrayList, new f(this, paramr, paramv));
  }
  
  public static void a(String paramString, aa paramaa)
  {
    new ab(paramaa).execute(new String[] { paramString });
  }
  
  public static void a(String paramString, y paramy)
  {
    new z(paramy).execute(new String[] { paramString });
  }
  
  public static void a(String paramString1, String paramString2) {}
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static an b()
  {
    if ((b == null) || (b.a())) {
      g();
    }
    return b;
  }
  
  private static m b(String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    return a(paramString, null, paramBoolean1, paramInt, paramBoolean2);
  }
  
  private static m b(boolean paramBoolean, int paramInt, String paramString)
  {
    int i = 0;
    while (i < 2)
    {
      if ((b == null) || (b.a())) {
        g();
      }
      m localm;
      if (b != null)
      {
        localm = a(a(paramString, paramBoolean), paramBoolean, paramInt);
        if (localm.c() == 103)
        {
          c("Server reported invalid token, retrying");
          b = null;
          i++;
        }
      }
      else
      {
        localm = new m(s.b);
      }
      return localm;
    }
    c("Billing server request error");
    return new m(s.b);
  }
  
  private static String b(String paramString, int paramInt)
  {
    return a(c(paramString, paramInt).getInputStream());
  }
  
  private static String b(boolean paramBoolean)
  {
    if (paramBoolean) {
      return "$";
    }
    return "€";
  }
  
  private static void b(String paramString, Throwable paramThrowable)
  {
    a(a, paramString, paramThrowable);
  }
  
  private static HttpRequest c(String paramString, int paramInt)
  {
    HttpRequest localHttpRequest = ViberEnv.newHttpRequest(paramString);
    if ((ViberApplication.preferences().b(j.B(), "int").equals("dev")) && (paramString.startsWith("https")))
    {
      c("Disabling SSL check for connection");
      localHttpRequest.disableSSLCheck();
    }
    localHttpRequest.setConnectTimeout(paramInt);
    localHttpRequest.setReadTimeout(paramInt);
    return localHttpRequest;
  }
  
  public static String c()
  {
    String str = ViberApplication.getInstance().getRegistrationValues().e();
    if ((str != null) && (str.charAt(0) == '+')) {
      str = str.substring(1);
    }
    return str;
  }
  
  private static void c(String paramString)
  {
    a(a, paramString);
  }
  
  public static boolean d()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)ViberApplication.getInstance().getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting());
  }
  
  private static void g()
  {
    b = null;
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    long l = SystemClock.elapsedRealtime();
    new b(localCountDownLatch).a(ViberApplication.getInstance());
    try
    {
      localCountDownLatch.await(10000L, TimeUnit.MILLISECONDS);
      if (b == null) {}
      (SystemClock.elapsedRealtime() - l);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        c("InterruptedExceptin during renewToken()");
      }
    }
  }
  
  public q a(bn parambn)
  {
    if ((parambn != null) && (this.d != null) && (this.d.a != null)) {
      for (q localq : this.d.a) {
        if (parambn.equals(q.a(localq))) {
          return localq;
        }
      }
    }
    return null;
  }
  
  public u a(t paramt)
  {
    u localu = new u(paramt);
    localu.execute(new String[] { "viber-balance" });
    return localu;
  }
  
  public String a(ae paramae)
  {
    String str1 = bc.b().K;
    String str2 = str1 + "phone=" + paramae.b();
    return a(str2 + "&src_phone=" + c());
  }
  
  public void a(ae paramae, ai paramai)
  {
    String str = paramae.b();
    if (str != null)
    {
      ah localah = (ah)this.f.get(str);
      long l = SystemClock.elapsedRealtime();
      if ((localah == null) || (l - localah.a > 60000L))
      {
        localObject = (List)this.g.get(str);
        if (localObject == null)
        {
          localObject = new ArrayList();
          this.g.put(str, localObject);
          new x(this).execute(new ae[] { paramae });
        }
        if (paramai != null) {
          ((List)localObject).add(paramai);
        }
      }
      while (paramai == null)
      {
        Object localObject;
        return;
      }
      paramai.a(paramae, localah);
      return;
    }
    paramai.a(paramae, null);
  }
  
  public void a(bn parambn, String paramString)
  {
    bv.a().a(parambn, paramString);
  }
  
  public void a(bt parambt, p paramp)
  {
    new g(this, parambt, paramp).b();
  }
  
  public void a(bu parambu, bq parambq, al paramal)
  {
    new h(this, parambu, parambq, paramal).b();
  }
  
  public void a(bu parambu, bq parambq, am paramam)
  {
    new i(this, parambu, parambq, paramam).b();
  }
  
  public void a(n paramn)
  {
    new o(this, paramn).execute(new Void[0]);
  }
  
  public void a(v paramv)
  {
    if ((this.d != null) && (SystemClock.elapsedRealtime() - this.e < 60000L))
    {
      dc.a(dk.a).post(new c(this, paramv));
      return;
    }
    new w(new d(this, paramv)).execute(new Void[0]);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.a
 * JD-Core Version:    0.7.0.1
 */