package com.viber.voip.pixie;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import android.webkit.WebView;
import com.viber.voip.ViberApplication;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.apache.http.HttpHost;

public class WebViewProxy
{
  private static final String LOG_TAG = WebViewProxy.class.getSimpleName();
  
  private static Object getFieldValueSafely(Field paramField, Object paramObject)
  {
    boolean bool = paramField.isAccessible();
    paramField.setAccessible(true);
    Object localObject = paramField.get(paramObject);
    paramField.setAccessible(bool);
    return localObject;
  }
  
  private static void log(String paramString1, String paramString2)
  {
    ViberApplication.log(3, paramString1, paramString2);
  }
  
  public static boolean setProxy(WebView paramWebView, String paramString, int paramInt)
  {
    log(LOG_TAG, "setting proxy to " + paramWebView.toString());
    if (Build.VERSION.SDK_INT <= 13) {
      return setProxyUpToHC(paramWebView, paramString, paramInt);
    }
    if (Build.VERSION.SDK_INT <= 15) {
      return setProxyICS(paramWebView, paramString, paramInt);
    }
    if (Build.VERSION.SDK_INT <= 18) {
      return setProxyJB(paramWebView, paramString, paramInt);
    }
    return setProxyKK(paramWebView, paramString, paramInt, "com.viber.voip.ViberApplication");
  }
  
  private static boolean setProxyICS(WebView paramWebView, String paramString, int paramInt)
  {
    try
    {
      Log.d(LOG_TAG, "Setting proxy with 4.0 API.");
      Class localClass1 = Class.forName("android.webkit.JWebCoreJavaBridge");
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Class.forName("android.net.ProxyProperties");
      Method localMethod = localClass1.getDeclaredMethod("updateProxy", arrayOfClass1);
      Object localObject1 = getFieldValueSafely(Class.forName("android.webkit.WebView").getDeclaredField("mWebViewCore"), paramWebView);
      Object localObject2 = getFieldValueSafely(Class.forName("android.webkit.WebViewCore").getDeclaredField("mBrowserFrame"), localObject1);
      Object localObject3 = getFieldValueSafely(Class.forName("android.webkit.BrowserFrame").getDeclaredField("sJavaBridge"), localObject2);
      Class localClass2 = Class.forName("android.net.ProxyProperties");
      Class[] arrayOfClass2 = new Class[3];
      arrayOfClass2[0] = String.class;
      arrayOfClass2[1] = Integer.TYPE;
      arrayOfClass2[2] = String.class;
      Constructor localConstructor = localClass2.getConstructor(arrayOfClass2);
      Object[] arrayOfObject1 = new Object[1];
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = Integer.valueOf(paramInt);
      arrayOfObject2[2] = null;
      arrayOfObject1[0] = localConstructor.newInstance(arrayOfObject2);
      localMethod.invoke(localObject3, arrayOfObject1);
      Log.d(LOG_TAG, "Setting proxy with 4.0 API successful!");
      return true;
    }
    catch (Exception localException)
    {
      Log.e(LOG_TAG, "failed to set HTTP proxy: " + localException);
    }
    return false;
  }
  
  private static boolean setProxyJB(WebView paramWebView, String paramString, int paramInt)
  {
    Log.d(LOG_TAG, "Setting proxy with 4.1 - 4.3 API.");
    try
    {
      Class localClass1 = Class.forName("android.webkit.WebViewClassic");
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Class.forName("android.webkit.WebView");
      Object localObject1 = localClass1.getDeclaredMethod("fromWebView", arrayOfClass1).invoke(null, new Object[] { paramWebView });
      Object localObject2 = getFieldValueSafely(Class.forName("android.webkit.WebViewClassic").getDeclaredField("mWebViewCore"), localObject1);
      Object localObject3 = getFieldValueSafely(Class.forName("android.webkit.WebViewCore").getDeclaredField("mBrowserFrame"), localObject2);
      Object localObject4 = getFieldValueSafely(Class.forName("android.webkit.BrowserFrame").getDeclaredField("sJavaBridge"), localObject3);
      Class localClass2 = Class.forName("android.net.ProxyProperties");
      Class[] arrayOfClass2 = new Class[3];
      arrayOfClass2[0] = String.class;
      arrayOfClass2[1] = Integer.TYPE;
      arrayOfClass2[2] = String.class;
      Constructor localConstructor = localClass2.getConstructor(arrayOfClass2);
      Class localClass3 = Class.forName("android.webkit.JWebCoreJavaBridge");
      Class[] arrayOfClass3 = new Class[1];
      arrayOfClass3[0] = Class.forName("android.net.ProxyProperties");
      Method localMethod = localClass3.getDeclaredMethod("updateProxy", arrayOfClass3);
      Object[] arrayOfObject1 = new Object[1];
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = Integer.valueOf(paramInt);
      arrayOfObject2[2] = null;
      arrayOfObject1[0] = localConstructor.newInstance(arrayOfObject2);
      localMethod.invoke(localObject4, arrayOfObject1);
      Log.d(LOG_TAG, "Setting proxy with 4.1 - 4.3 API successful!");
      return true;
    }
    catch (Exception localException)
    {
      Log.e(LOG_TAG, "Setting proxy with >= 4.1 API failed with error: " + localException.getMessage());
    }
    return false;
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  private static boolean setProxyKK(WebView paramWebView, String paramString1, int paramInt, String paramString2)
  {
    // Byte code:
    //   0: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   3: ldc 194
    //   5: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   8: pop
    //   9: aload_0
    //   10: invokevirtual 198	android/webkit/WebView:getContext	()Landroid/content/Context;
    //   13: invokevirtual 203	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   16: astore 5
    //   18: ldc 205
    //   20: aload_1
    //   21: invokestatic 211	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: pop
    //   25: ldc 213
    //   27: new 46	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   34: iload_2
    //   35: invokevirtual 216	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   38: ldc 218
    //   40: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokestatic 211	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   49: pop
    //   50: ldc 220
    //   52: aload_1
    //   53: invokestatic 211	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   56: pop
    //   57: ldc 222
    //   59: new 46	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   66: iload_2
    //   67: invokevirtual 216	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   70: ldc 218
    //   72: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 211	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   81: pop
    //   82: aload_3
    //   83: invokestatic 98	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   86: ldc 224
    //   88: invokevirtual 227	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   91: astore 45
    //   93: aload 45
    //   95: iconst_1
    //   96: invokevirtual 31	java/lang/reflect/Field:setAccessible	(Z)V
    //   99: aload 45
    //   101: aload 5
    //   103: invokevirtual 35	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   106: astore 46
    //   108: ldc 229
    //   110: invokestatic 98	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   113: ldc 231
    //   115: invokevirtual 114	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   118: astore 47
    //   120: aload 47
    //   122: iconst_1
    //   123: invokevirtual 31	java/lang/reflect/Field:setAccessible	(Z)V
    //   126: aload 47
    //   128: aload 46
    //   130: invokevirtual 35	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   133: checkcast 233	java/util/Map
    //   136: invokeinterface 237 1 0
    //   141: invokeinterface 243 1 0
    //   146: astore 48
    //   148: aload 48
    //   150: invokeinterface 248 1 0
    //   155: ifeq +272 -> 427
    //   158: aload 48
    //   160: invokeinterface 252 1 0
    //   165: checkcast 233	java/util/Map
    //   168: invokeinterface 256 1 0
    //   173: invokeinterface 259 1 0
    //   178: astore 50
    //   180: aload 50
    //   182: invokeinterface 248 1 0
    //   187: ifeq -39 -> 148
    //   190: aload 50
    //   192: invokeinterface 252 1 0
    //   197: astore 51
    //   199: aload 51
    //   201: invokevirtual 263	java/lang/Object:getClass	()Ljava/lang/Class;
    //   204: astore 52
    //   206: aload 52
    //   208: invokevirtual 266	java/lang/Class:getName	()Ljava/lang/String;
    //   211: ldc_w 268
    //   214: invokevirtual 272	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   217: ifeq -37 -> 180
    //   220: aload 52
    //   222: ldc_w 274
    //   225: iconst_2
    //   226: anewarray 10	java/lang/Class
    //   229: dup
    //   230: iconst_0
    //   231: ldc 200
    //   233: aastore
    //   234: dup
    //   235: iconst_1
    //   236: ldc_w 276
    //   239: aastore
    //   240: invokevirtual 106	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   243: astore 53
    //   245: new 276	android/content/Intent
    //   248: dup
    //   249: ldc_w 278
    //   252: invokespecial 281	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   255: astore 54
    //   257: ldc 100
    //   259: invokestatic 98	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   262: astore 55
    //   264: iconst_3
    //   265: anewarray 10	java/lang/Class
    //   268: astore 56
    //   270: aload 56
    //   272: iconst_0
    //   273: ldc 126
    //   275: aastore
    //   276: aload 56
    //   278: iconst_1
    //   279: getstatic 132	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   282: aastore
    //   283: aload 56
    //   285: iconst_2
    //   286: ldc 126
    //   288: aastore
    //   289: aload 55
    //   291: aload 56
    //   293: invokevirtual 136	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   296: astore 57
    //   298: aload 57
    //   300: iconst_1
    //   301: invokevirtual 282	java/lang/reflect/Constructor:setAccessible	(Z)V
    //   304: iconst_3
    //   305: anewarray 4	java/lang/Object
    //   308: astore 58
    //   310: aload 58
    //   312: iconst_0
    //   313: aload_1
    //   314: aastore
    //   315: aload 58
    //   317: iconst_1
    //   318: iload_2
    //   319: invokestatic 140	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   322: aastore
    //   323: aload 58
    //   325: iconst_2
    //   326: aconst_null
    //   327: aastore
    //   328: aload 54
    //   330: ldc_w 284
    //   333: aload 57
    //   335: aload 58
    //   337: invokevirtual 146	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   340: checkcast 286	android/os/Parcelable
    //   343: invokevirtual 290	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   346: pop
    //   347: aload 53
    //   349: aload 51
    //   351: iconst_2
    //   352: anewarray 4	java/lang/Object
    //   355: dup
    //   356: iconst_0
    //   357: aload 5
    //   359: aastore
    //   360: dup
    //   361: iconst_1
    //   362: aload 54
    //   364: aastore
    //   365: invokevirtual 152	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   368: pop
    //   369: goto -189 -> 180
    //   372: astore 40
    //   374: new 292	java/io/StringWriter
    //   377: dup
    //   378: invokespecial 293	java/io/StringWriter:<init>	()V
    //   381: astore 41
    //   383: aload 40
    //   385: new 295	java/io/PrintWriter
    //   388: dup
    //   389: aload 41
    //   391: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   394: invokevirtual 302	java/lang/ClassNotFoundException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   397: aload 41
    //   399: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   402: astore 42
    //   404: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   407: aload 40
    //   409: invokevirtual 304	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   412: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   415: pop
    //   416: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   419: aload 42
    //   421: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   424: pop
    //   425: iconst_0
    //   426: ireturn
    //   427: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   430: ldc_w 309
    //   433: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   436: pop
    //   437: iconst_1
    //   438: ireturn
    //   439: astore 35
    //   441: new 292	java/io/StringWriter
    //   444: dup
    //   445: invokespecial 293	java/io/StringWriter:<init>	()V
    //   448: astore 36
    //   450: aload 35
    //   452: new 295	java/io/PrintWriter
    //   455: dup
    //   456: aload 36
    //   458: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   461: invokevirtual 310	java/lang/NoSuchFieldException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   464: aload 36
    //   466: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   469: astore 37
    //   471: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   474: aload 35
    //   476: invokevirtual 311	java/lang/NoSuchFieldException:getMessage	()Ljava/lang/String;
    //   479: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   482: pop
    //   483: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   486: aload 37
    //   488: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   491: pop
    //   492: goto -67 -> 425
    //   495: astore 30
    //   497: new 292	java/io/StringWriter
    //   500: dup
    //   501: invokespecial 293	java/io/StringWriter:<init>	()V
    //   504: astore 31
    //   506: aload 30
    //   508: new 295	java/io/PrintWriter
    //   511: dup
    //   512: aload 31
    //   514: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   517: invokevirtual 312	java/lang/IllegalAccessException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   520: aload 31
    //   522: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   525: astore 32
    //   527: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   530: aload 30
    //   532: invokevirtual 313	java/lang/IllegalAccessException:getMessage	()Ljava/lang/String;
    //   535: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   538: pop
    //   539: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   542: aload 32
    //   544: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   547: pop
    //   548: goto -123 -> 425
    //   551: astore 25
    //   553: new 292	java/io/StringWriter
    //   556: dup
    //   557: invokespecial 293	java/io/StringWriter:<init>	()V
    //   560: astore 26
    //   562: aload 25
    //   564: new 295	java/io/PrintWriter
    //   567: dup
    //   568: aload 26
    //   570: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   573: invokevirtual 314	java/lang/IllegalArgumentException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   576: aload 26
    //   578: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   581: astore 27
    //   583: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   586: aload 25
    //   588: invokevirtual 315	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   591: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   594: pop
    //   595: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   598: aload 27
    //   600: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   603: pop
    //   604: goto -179 -> 425
    //   607: astore 20
    //   609: new 292	java/io/StringWriter
    //   612: dup
    //   613: invokespecial 293	java/io/StringWriter:<init>	()V
    //   616: astore 21
    //   618: aload 20
    //   620: new 295	java/io/PrintWriter
    //   623: dup
    //   624: aload 21
    //   626: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   629: invokevirtual 316	java/lang/NoSuchMethodException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   632: aload 21
    //   634: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   637: astore 22
    //   639: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   642: aload 20
    //   644: invokevirtual 317	java/lang/NoSuchMethodException:getMessage	()Ljava/lang/String;
    //   647: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   650: pop
    //   651: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   654: aload 22
    //   656: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   659: pop
    //   660: goto -235 -> 425
    //   663: astore 15
    //   665: new 292	java/io/StringWriter
    //   668: dup
    //   669: invokespecial 293	java/io/StringWriter:<init>	()V
    //   672: astore 16
    //   674: aload 15
    //   676: new 295	java/io/PrintWriter
    //   679: dup
    //   680: aload 16
    //   682: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   685: invokevirtual 318	java/lang/reflect/InvocationTargetException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   688: aload 16
    //   690: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   693: astore 17
    //   695: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   698: aload 15
    //   700: invokevirtual 319	java/lang/reflect/InvocationTargetException:getMessage	()Ljava/lang/String;
    //   703: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   706: pop
    //   707: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   710: aload 17
    //   712: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   715: pop
    //   716: goto -291 -> 425
    //   719: astore 10
    //   721: new 292	java/io/StringWriter
    //   724: dup
    //   725: invokespecial 293	java/io/StringWriter:<init>	()V
    //   728: astore 11
    //   730: aload 10
    //   732: new 295	java/io/PrintWriter
    //   735: dup
    //   736: aload 11
    //   738: invokespecial 298	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   741: invokevirtual 320	java/lang/InstantiationException:printStackTrace	(Ljava/io/PrintWriter;)V
    //   744: aload 11
    //   746: invokevirtual 303	java/io/StringWriter:toString	()Ljava/lang/String;
    //   749: astore 12
    //   751: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   754: aload 10
    //   756: invokevirtual 321	java/lang/InstantiationException:getMessage	()Ljava/lang/String;
    //   759: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   762: pop
    //   763: getstatic 16	com/viber/voip/pixie/WebViewProxy:LOG_TAG	Ljava/lang/String;
    //   766: aload 12
    //   768: invokestatic 307	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   771: pop
    //   772: goto -347 -> 425
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	775	0	paramWebView	WebView
    //   0	775	1	paramString1	String
    //   0	775	2	paramInt	int
    //   0	775	3	paramString2	String
    //   16	342	5	localContext	Context
    //   719	36	10	localInstantiationException	java.lang.InstantiationException
    //   728	17	11	localStringWriter1	java.io.StringWriter
    //   749	18	12	str1	String
    //   663	36	15	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   672	17	16	localStringWriter2	java.io.StringWriter
    //   693	18	17	str2	String
    //   607	36	20	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   616	17	21	localStringWriter3	java.io.StringWriter
    //   637	18	22	str3	String
    //   551	36	25	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   560	17	26	localStringWriter4	java.io.StringWriter
    //   581	18	27	str4	String
    //   495	36	30	localIllegalAccessException	java.lang.IllegalAccessException
    //   504	17	31	localStringWriter5	java.io.StringWriter
    //   525	18	32	str5	String
    //   439	36	35	localNoSuchFieldException	java.lang.NoSuchFieldException
    //   448	17	36	localStringWriter6	java.io.StringWriter
    //   469	18	37	str6	String
    //   372	36	40	localClassNotFoundException	java.lang.ClassNotFoundException
    //   381	17	41	localStringWriter7	java.io.StringWriter
    //   402	18	42	str7	String
    //   91	9	45	localField1	Field
    //   106	23	46	localObject1	Object
    //   118	9	47	localField2	Field
    //   146	13	48	localIterator1	java.util.Iterator
    //   178	13	50	localIterator2	java.util.Iterator
    //   197	153	51	localObject2	Object
    //   204	17	52	localClass1	Class
    //   243	105	53	localMethod	Method
    //   255	108	54	localIntent	android.content.Intent
    //   262	28	55	localClass2	Class
    //   268	24	56	arrayOfClass	Class[]
    //   296	38	57	localConstructor	Constructor
    //   308	28	58	arrayOfObject	Object[]
    // Exception table:
    //   from	to	target	type
    //   82	148	372	java/lang/ClassNotFoundException
    //   148	180	372	java/lang/ClassNotFoundException
    //   180	369	372	java/lang/ClassNotFoundException
    //   427	437	372	java/lang/ClassNotFoundException
    //   82	148	439	java/lang/NoSuchFieldException
    //   148	180	439	java/lang/NoSuchFieldException
    //   180	369	439	java/lang/NoSuchFieldException
    //   427	437	439	java/lang/NoSuchFieldException
    //   82	148	495	java/lang/IllegalAccessException
    //   148	180	495	java/lang/IllegalAccessException
    //   180	369	495	java/lang/IllegalAccessException
    //   427	437	495	java/lang/IllegalAccessException
    //   82	148	551	java/lang/IllegalArgumentException
    //   148	180	551	java/lang/IllegalArgumentException
    //   180	369	551	java/lang/IllegalArgumentException
    //   427	437	551	java/lang/IllegalArgumentException
    //   82	148	607	java/lang/NoSuchMethodException
    //   148	180	607	java/lang/NoSuchMethodException
    //   180	369	607	java/lang/NoSuchMethodException
    //   427	437	607	java/lang/NoSuchMethodException
    //   82	148	663	java/lang/reflect/InvocationTargetException
    //   148	180	663	java/lang/reflect/InvocationTargetException
    //   180	369	663	java/lang/reflect/InvocationTargetException
    //   427	437	663	java/lang/reflect/InvocationTargetException
    //   82	148	719	java/lang/InstantiationException
    //   148	180	719	java/lang/InstantiationException
    //   180	369	719	java/lang/InstantiationException
    //   427	437	719	java/lang/InstantiationException
  }
  
  private static boolean setProxyUpToHC(WebView paramWebView, String paramString, int paramInt)
  {
    Log.d(LOG_TAG, "Setting proxy with <= 3.2 API.");
    HttpHost localHttpHost = new HttpHost(paramString, paramInt);
    Class localClass;
    Object localObject1;
    try
    {
      localClass = Class.forName("android.webkit.Network");
      if (localClass == null)
      {
        Log.e(LOG_TAG, "failed to get class for android.webkit.Network");
        return false;
      }
      Method localMethod = localClass.getMethod("getInstance", new Class[] { Context.class });
      if (localMethod == null) {
        Log.e(LOG_TAG, "failed to get getInstance method");
      }
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramWebView.getContext();
      localObject1 = localMethod.invoke(localClass, arrayOfObject);
      if (localObject1 == null)
      {
        Log.e(LOG_TAG, "error getting network: network is null");
        return false;
      }
    }
    catch (Exception localException1)
    {
      Log.e(LOG_TAG, "error getting network: " + localException1);
      return false;
    }
    Object localObject2;
    try
    {
      localObject2 = getFieldValueSafely(localClass.getDeclaredField("mRequestQueue"), localObject1);
      if (localObject2 == null)
      {
        Log.e(LOG_TAG, "Request queue is null");
        return false;
      }
    }
    catch (Exception localException2)
    {
      Log.e(LOG_TAG, "error getting field value");
      return false;
    }
    try
    {
      localField = Class.forName("android.net.http.RequestQueue").getDeclaredField("mProxyHost");
      bool = localField.isAccessible();
    }
    catch (Exception localException3)
    {
      label243:
      Log.e(LOG_TAG, "error getting proxy host field");
      return false;
    }
    try
    {
      localField.setAccessible(true);
      localField.set(localObject2, localHttpHost);
    }
    catch (Exception localException4)
    {
      Log.e(LOG_TAG, "error setting proxy host");
      localField.setAccessible(bool);
      break label243;
    }
    finally
    {
      localField.setAccessible(bool);
    }
    Log.d(LOG_TAG, "Setting proxy with <= 3.2 API successful!");
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.WebViewProxy
 * JD-Core Version:    0.7.0.1
 */