package com.viber.voip.util;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.viber.voip.util.upload.ak;
import com.viber.voip.util.upload.s;
import java.util.List;

public class hv
{
  public static String a = b + "/pg";
  private static String b = "http://viber-fake-uri.com";
  
  public static Uri a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Uri.parse(s.b).buildUpon().appendEncodedPath(paramString).build();
  }
  
  public static Uri a(String paramString, int paramInt)
  {
    return a(paramString, ak.f, "jpg", paramInt);
  }
  
  private static Uri a(String paramString1, ak paramak, String paramString2, int paramInt)
  {
    return Uri.parse(a).buildUpon().appendEncodedPath(paramString1).appendEncodedPath(paramak.toString()).appendEncodedPath(paramString2).appendEncodedPath(Integer.toString(paramInt)).build();
  }
  
  public static boolean a(Uri paramUri)
  {
    return paramUri.toString().startsWith(a);
  }
  
  public static Uri b(String paramString)
  {
    return a(paramString, ak.d, "jpg", 0);
  }
  
  public static hw b(Uri paramUri)
  {
    hw localhw = new hw();
    List localList = paramUri.getPathSegments();
    localhw.a = ((String)localList.get(1));
    localhw.b = ak.valueOf((String)localList.get(2));
    localhw.c = ((String)localList.get(3));
    localhw.d = Integer.valueOf((String)localList.get(4)).intValue();
    return localhw;
  }
  
  public static Uri c(String paramString)
  {
    return a(paramString, ak.e, "jpg", 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.hv
 * JD-Core Version:    0.7.0.1
 */