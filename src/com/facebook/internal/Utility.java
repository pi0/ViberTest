package com.facebook.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.FacebookException;
import com.viber.voip.util.http.HttpRequest;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class Utility
{
  public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
  private static final String HASH_ALGORITHM_MD5 = "MD5";
  static final String LOG_TAG = "FacebookSDK";
  private static final String URL_SCHEME = "https";
  
  public static <T> ArrayList<T> arrayList(T... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList(paramVarArgs.length);
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(paramVarArgs[j]);
    }
    return localArrayList;
  }
  
  public static Uri buildUri(String paramString1, String paramString2, Bundle paramBundle)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.authority(paramString1);
    localBuilder.path(paramString2);
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if ((localObject instanceof String)) {
        localBuilder.appendQueryParameter(str, (String)localObject);
      }
    }
    return localBuilder.build();
  }
  
  private static void clearCookiesForDomain(Context paramContext, String paramString)
  {
    CookieSyncManager.createInstance(paramContext).sync();
    CookieManager localCookieManager = CookieManager.getInstance();
    String str = localCookieManager.getCookie(paramString);
    if (str == null) {
      return;
    }
    String[] arrayOfString1 = str.split(";");
    int i = arrayOfString1.length;
    for (int j = 0; j < i; j++)
    {
      String[] arrayOfString2 = arrayOfString1[j].split("=");
      if (arrayOfString2.length > 0) {
        localCookieManager.setCookie(paramString, arrayOfString2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
      }
    }
    localCookieManager.removeExpiredCookie();
  }
  
  public static void clearFacebookCookies(Context paramContext)
  {
    clearCookiesForDomain(paramContext, "facebook.com");
    clearCookiesForDomain(paramContext, ".facebook.com");
    clearCookiesForDomain(paramContext, "https://facebook.com");
    clearCookiesForDomain(paramContext, "https://.facebook.com");
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  static Map<String, Object> convertJSONObjectToHashMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    JSONArray localJSONArray = paramJSONObject.names();
    int i = 0;
    while (i < localJSONArray.length()) {
      try
      {
        String str = localJSONArray.getString(i);
        Object localObject = paramJSONObject.get(str);
        if ((localObject instanceof JSONObject)) {
          localObject = convertJSONObjectToHashMap((JSONObject)localObject);
        }
        localHashMap.put(str, localObject);
        label65:
        i++;
      }
      catch (JSONException localJSONException)
      {
        break label65;
      }
    }
    return localHashMap;
  }
  
  public static void disconnectQuietly(HttpRequest paramHttpRequest) {}
  
  public static void disconnectQuietly(URLConnection paramURLConnection)
  {
    if ((paramURLConnection instanceof HttpURLConnection)) {
      ((HttpURLConnection)paramURLConnection).disconnect();
    }
  }
  
  public static String getMetadataApplicationId(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo.metaData != null)
      {
        String str = localApplicationInfo.metaData.getString("com.facebook.sdk.ApplicationId");
        return str;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static Object getStringPropertyAsJSON(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    Object localObject1 = paramJSONObject.opt(paramString1);
    if ((localObject1 != null) && ((localObject1 instanceof String))) {}
    for (Object localObject2 = new JSONTokener((String)localObject1).nextValue();; localObject2 = localObject1)
    {
      if ((localObject2 != null) && (!(localObject2 instanceof JSONObject)) && (!(localObject2 instanceof JSONArray)))
      {
        if (paramString2 != null)
        {
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.putOpt(paramString2, localObject2);
          return localJSONObject;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
      }
      return localObject2;
    }
  }
  
  public static boolean isNullOrEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static <T> boolean isNullOrEmpty(Collection<T> paramCollection)
  {
    return (paramCollection == null) || (paramCollection.size() == 0);
  }
  
  public static <T> boolean isSubset(Collection<T> paramCollection1, Collection<T> paramCollection2)
  {
    if ((paramCollection2 == null) || (paramCollection2.size() == 0))
    {
      boolean bool;
      if (paramCollection1 != null)
      {
        int i = paramCollection1.size();
        bool = false;
        if (i != 0) {}
      }
      else
      {
        bool = true;
      }
      return bool;
    }
    HashSet localHashSet = new HashSet(paramCollection2);
    Iterator localIterator = paramCollection1.iterator();
    while (localIterator.hasNext()) {
      if (!localHashSet.contains(localIterator.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static void logd(String paramString1, String paramString2) {}
  
  static String md5hash(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuilder localStringBuilder = new StringBuilder();
      int i = arrayOfByte.length;
      for (int j = 0; j < i; j++)
      {
        int k = arrayOfByte[j];
        localStringBuilder.append(Integer.toHexString(0xF & k >> 4));
        localStringBuilder.append(Integer.toHexString(0xF & k >> 0));
      }
      return localStringBuilder.toString();
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      return null;
    }
  }
  
  public static void putObjectInBundle(Bundle paramBundle, String paramString, Object paramObject)
  {
    if ((paramObject instanceof String))
    {
      paramBundle.putString(paramString, (String)paramObject);
      return;
    }
    if ((paramObject instanceof Parcelable))
    {
      paramBundle.putParcelable(paramString, (Parcelable)paramObject);
      return;
    }
    if ((paramObject instanceof byte[]))
    {
      paramBundle.putByteArray(paramString, (byte[])paramObject);
      return;
    }
    throw new FacebookException("attempted to add unsupported type to Bundle");
  }
  
  /* Error */
  public static String readStreamToString(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 314	java/io/BufferedInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 317	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   8: astore_1
    //   9: new 319	java/io/InputStreamReader
    //   12: dup
    //   13: aload_1
    //   14: invokespecial 320	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   17: astore_2
    //   18: new 114	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   25: astore_3
    //   26: sipush 2048
    //   29: newarray char
    //   31: astore 6
    //   33: aload_2
    //   34: aload 6
    //   36: invokevirtual 324	java/io/InputStreamReader:read	([C)I
    //   39: istore 7
    //   41: iload 7
    //   43: iconst_m1
    //   44: if_icmpeq +33 -> 77
    //   47: aload_3
    //   48: aload 6
    //   50: iconst_0
    //   51: iload 7
    //   53: invokevirtual 327	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: goto -24 -> 33
    //   60: astore 4
    //   62: aload_1
    //   63: astore 5
    //   65: aload 5
    //   67: invokestatic 329	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   70: aload_2
    //   71: invokestatic 329	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   74: aload 4
    //   76: athrow
    //   77: aload_3
    //   78: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: astore 9
    //   83: aload_1
    //   84: invokestatic 329	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   87: aload_2
    //   88: invokestatic 329	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   91: aload 9
    //   93: areturn
    //   94: astore 4
    //   96: aconst_null
    //   97: astore_2
    //   98: aconst_null
    //   99: astore 5
    //   101: goto -36 -> 65
    //   104: astore 4
    //   106: aload_1
    //   107: astore 5
    //   109: aconst_null
    //   110: astore_2
    //   111: goto -46 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramInputStream	java.io.InputStream
    //   8	99	1	localBufferedInputStream1	java.io.BufferedInputStream
    //   17	94	2	localInputStreamReader	java.io.InputStreamReader
    //   25	53	3	localStringBuilder	StringBuilder
    //   60	15	4	localObject1	Object
    //   94	1	4	localObject2	Object
    //   104	1	4	localObject3	Object
    //   63	45	5	localBufferedInputStream2	java.io.BufferedInputStream
    //   31	18	6	arrayOfChar	char[]
    //   39	13	7	i	int
    //   81	11	9	str	String
    // Exception table:
    //   from	to	target	type
    //   18	33	60	finally
    //   33	41	60	finally
    //   47	57	60	finally
    //   77	83	60	finally
    //   0	9	94	finally
    //   9	18	104	finally
  }
  
  public static boolean stringsEqualOrEmpty(String paramString1, String paramString2)
  {
    boolean bool1 = TextUtils.isEmpty(paramString1);
    boolean bool2 = TextUtils.isEmpty(paramString2);
    if ((bool1) && (bool2)) {
      return true;
    }
    if ((!bool1) && (!bool2)) {
      return paramString1.equals(paramString2);
    }
    return false;
  }
  
  public static <T> Collection<T> unmodifiableCollection(T... paramVarArgs)
  {
    return Collections.unmodifiableCollection(Arrays.asList(paramVarArgs));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.internal.Utility
 * JD-Core Version:    0.7.0.1
 */