package com.viber.voip.i;

import android.text.TextUtils;
import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.contacts.b.b.d;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class a
{
  private static final String a = a.class.getSimpleName();
  
  public static String a(String paramString, String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return " * ";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      if (localStringBuffer.length() > 0) {
        localStringBuffer.append(", ");
      }
      localStringBuffer.append(paramString).append('.').append(str);
    }
    return localStringBuffer.toString();
  }
  
  public static String a(Collection<String> paramCollection)
  {
    if (paramCollection == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append('\'').append(str).append('\'');
    }
    return localStringBuilder.toString();
  }
  
  public static String a(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
    {
      Long localLong = Long.valueOf(paramArrayOfLong[j]);
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append(localLong);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
    {
      Long localLong = paramArrayOfLong[j];
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append(localLong);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramVarArgs[j];
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append('\'').append(str).append('\'');
    }
    return localStringBuilder.toString();
  }
  
  public static String[] a(String[] paramArrayOfString, int paramInt)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return paramArrayOfString;
    }
    int i = paramArrayOfString.length;
    String[] arrayOfString = new String[i * paramInt];
    for (int j = 0; j < paramInt; j++) {
      for (int k = 0; k < paramArrayOfString.length; k++) {
        arrayOfString[(k + j * i)] = paramArrayOfString[k];
      }
    }
    return arrayOfString;
  }
  
  public static b b(Collection<d> paramCollection)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    Iterator localIterator1 = paramCollection.iterator();
    while (localIterator1.hasNext())
    {
      d locald = (d)localIterator1.next();
      if (localStringBuilder2.length() > 0) {
        localStringBuilder2.append(',');
      }
      localStringBuilder2.append(locald.getId());
      localHashSet2.add(Long.valueOf(locald.getId()));
      for (String str : locald.g().split("\\.")) {
        if (!TextUtils.isEmpty(str)) {
          localHashSet1.add(str);
        }
      }
      Iterator localIterator2 = locald.b().iterator();
      while (localIterator2.hasNext())
      {
        i locali = (i)localIterator2.next();
        if (localStringBuilder1.length() > 0) {
          localStringBuilder1.append(',');
        }
        localStringBuilder1.append(locali.getId());
      }
    }
    return new b(localStringBuilder2.toString(), localStringBuilder1.toString(), localHashSet1, localHashSet2);
  }
  
  public static String b(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return " * ";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      if (localStringBuffer.length() > 0) {
        localStringBuffer.append(", ");
      }
      localStringBuffer.append(str);
    }
    return localStringBuffer.toString();
  }
  
  public static String c(Collection<Long> paramCollection)
  {
    if (paramCollection == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append(localLong);
    }
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.i.a
 * JD-Core Version:    0.7.0.1
 */