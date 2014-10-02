package com.viber.voip.util;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.h;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.l;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class gg
{
  public static void a(int paramInt, Set<h> paramSet)
  {
    if (paramSet == null) {
      return;
    }
    dc.a(dk.h).post(new gh(paramSet, paramInt));
  }
  
  public static void a(long paramLong, gi paramgi)
  {
    fz.a("doWatchContact watchedContactId = " + paramLong);
    for (;;)
    {
      JSONArray localJSONArray2;
      HashSet localHashSet;
      int j;
      try
      {
        String str1 = b();
        if (!TextUtils.isEmpty(str1))
        {
          JSONArray localJSONArray1 = new JSONArray(str1);
          localJSONArray2 = new JSONArray();
          int i = localJSONArray1.length();
          localHashSet = new HashSet();
          j = 0;
          if (j >= i) {
            break label159;
          }
          JSONObject localJSONObject = (JSONObject)localJSONArray1.get(j);
          long l = localJSONObject.getLong("contactId");
          int k = localJSONObject.getInt("watchedTime");
          if (l == paramLong) {
            localHashSet.add(Long.valueOf(l));
          } else {
            localJSONArray2.put(b(l, k));
          }
        }
      }
      catch (JSONException localJSONException)
      {
        fz.a(Log.getStackTraceString(localJSONException));
      }
      return;
      label159:
      if (paramgi != null) {
        paramgi.a(localHashSet);
      }
      if (localJSONArray2.length() > 0) {}
      for (String str2 = localJSONArray2.toString();; str2 = "")
      {
        b(str2);
        return;
      }
      j++;
    }
  }
  
  public static void a(gi paramgi)
  {
    fz.a("doWatchContactList");
    for (;;)
    {
      HashSet localHashSet;
      JSONArray localJSONArray2;
      int j;
      try
      {
        String str1 = b();
        if (!TextUtils.isEmpty(str1))
        {
          JSONArray localJSONArray1 = new JSONArray(str1);
          localHashSet = new HashSet();
          localJSONArray2 = new JSONArray();
          int i = localJSONArray1.length();
          j = 0;
          if (j >= i) {
            break label137;
          }
          JSONObject localJSONObject = (JSONObject)localJSONArray1.get(j);
          long l = localJSONObject.getLong("contactId");
          int k = 1 + localJSONObject.getInt("watchedTime");
          if (k >= 2) {
            localHashSet.add(Long.valueOf(l));
          } else {
            localJSONArray2.put(b(l, k));
          }
        }
      }
      catch (JSONException localJSONException)
      {
        fz.a(Log.getStackTraceString(localJSONException));
      }
      return;
      label137:
      if (paramgi != null) {
        paramgi.a(localHashSet);
      }
      if (localJSONArray2.length() > 0) {}
      for (String str2 = localJSONArray2.toString();; str2 = "")
      {
        b(str2);
        return;
      }
      j++;
    }
  }
  
  private static String b()
  {
    String str = ViberApplication.preferences().b("json_watched", "");
    fz.a("getCurrentData retValue = " + str);
    return str;
  }
  
  private static JSONObject b(long paramLong, int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("contactId", paramLong);
    localJSONObject.put("watchedTime", paramInt);
    return localJSONObject;
  }
  
  private static void b(String paramString)
  {
    fz.a("setCurrentData data = " + paramString);
    ViberApplication.preferences().a("json_watched", paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.gg
 * JD-Core Version:    0.7.0.1
 */