package com.viber.voip.sms;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.viber.voip.ViberApplication;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class j
{
  private static final String b = j.class.getSimpleName();
  private Map<String, Set<String>> a;
  
  public j()
  {
    d();
  }
  
  private SharedPreferences.Editor a(SharedPreferences.Editor paramEditor, String paramString, Set<String> paramSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append((String)localIterator.next());
      localStringBuilder.append(";");
    }
    if (localStringBuilder.charAt(-1 + localStringBuilder.length()) == ';') {
      localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
    }
    return paramEditor.putString(paramString, localStringBuilder.toString());
  }
  
  private void a(String paramString, long paramLong)
  {
    d("insertSms number:" + paramString);
    if (this.a.containsKey(paramString)) {}
    for (Object localObject = (Set)this.a.get(paramString);; localObject = new HashSet())
    {
      ((Set)localObject).add(String.valueOf(paramLong));
      this.a.put(paramString, localObject);
      SharedPreferences.Editor localEditor = c();
      a(localEditor, paramString, (Set)localObject);
      localEditor.commit();
      return;
    }
  }
  
  private void a(String paramString, long paramLong1, long paramLong2)
  {
    d("updateSms number:" + paramString);
    if (this.a.containsKey(paramString))
    {
      Set localSet = (Set)this.a.get(paramString);
      String str = String.valueOf(paramLong2);
      if (localSet.contains(str)) {
        localSet.remove(str);
      }
      localSet.add(String.valueOf(paramLong1));
      this.a.put(paramString, localSet);
      SharedPreferences.Editor localEditor = c();
      a(localEditor, paramString, localSet);
      localEditor.commit();
    }
  }
  
  private long[] b(String paramString)
  {
    int i = 0;
    d("getTimesByPhone number:" + paramString);
    Object localObject = new long[0];
    if (this.a.containsKey(paramString))
    {
      Set localSet = (Set)this.a.get(paramString);
      long[] arrayOfLong = new long[localSet.size()];
      Iterator localIterator = localSet.iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          int j = i + 1;
          try
          {
            arrayOfLong[i] = Long.parseLong(str);
            i = j;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;)
            {
              d("getTimesByPhone NumberFormatException " + str);
            }
          }
        }
      }
      localObject = arrayOfLong;
    }
    d("getTimesByPhone result:" + Arrays.toString((long[])localObject));
    return localObject;
  }
  
  private long c(String paramString)
  {
    int i = 0;
    d("getMaxTimeByPhone number:" + paramString);
    long l = 0L;
    if (this.a.containsKey(paramString))
    {
      long[] arrayOfLong = b(paramString);
      if (arrayOfLong.length > 0)
      {
        l = arrayOfLong[0];
        while (i < arrayOfLong.length)
        {
          if (l < arrayOfLong[i]) {
            l = arrayOfLong[i];
          }
          i++;
        }
        if (arrayOfLong.length > 0) {
          l = arrayOfLong[(-1 + arrayOfLong.length)];
        }
      }
    }
    return l;
  }
  
  private SharedPreferences.Editor c()
  {
    return ViberApplication.getInstance().getSharedPreferences("smsprefs", 0).edit();
  }
  
  private void d()
  {
    d("restoreSavedState");
    SharedPreferences localSharedPreferences = ViberApplication.getInstance().getSharedPreferences("smsprefs", 0);
    this.a = new HashMap();
    Map localMap = localSharedPreferences.getAll();
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = (String)localMap.get(str1);
      String[] arrayOfString = str2.split(";");
      HashSet localHashSet = new HashSet();
      for (int i = 0; i < arrayOfString.length; i++) {
        localHashSet.add(arrayOfString[i]);
      }
      this.a.put(str1, localHashSet);
      d("restoreSavedState phone:" + str1 + " times:" + str2);
    }
  }
  
  private void d(String paramString) {}
  
  public void a(String paramString)
  {
    d("addSmsNumber number:" + paramString);
    long l1 = System.currentTimeMillis();
    long l2 = c(paramString);
    if ((l2 > 0L) && (l1 - l2 < 3600000L))
    {
      a(paramString, l1, l2);
      return;
    }
    a(paramString, l1);
  }
  
  public boolean a()
  {
    d("isSmsShouldDisabled()");
    long l = System.currentTimeMillis() - 43200000L;
    Iterator localIterator = this.a.keySet().iterator();
    int i = 0;
    int j;
    int k;
    if (localIterator.hasNext())
    {
      long[] arrayOfLong = b((String)localIterator.next());
      j = i;
      k = 0;
      label63:
      if (k < arrayOfLong.length) {
        if (arrayOfLong[k] >= l) {
          break label143;
        }
      }
    }
    label143:
    for (int m = j + 1;; m = j)
    {
      k++;
      j = m;
      break label63;
      i = j;
      break;
      boolean bool = false;
      if (i >= 3) {
        bool = true;
      }
      d("isSmsShouldDisabled() result:" + bool);
      return bool;
    }
  }
  
  public void b()
  {
    this.a.clear();
    c().clear().commit();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.j
 * JD-Core Version:    0.7.0.1
 */