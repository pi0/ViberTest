package org.acra.util;

import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HttpUtils
{
  public static void doPost(Map<?, ?> paramMap, URL paramURL, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = localIterator.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append('&');
      }
      Object localObject2 = paramMap.get(localObject1);
      if (localObject2 == null) {
        localObject2 = "";
      }
      localStringBuilder.append(URLEncoder.encode(localObject1.toString(), "UTF-8")).append('=').append(URLEncoder.encode(localObject2.toString(), "UTF-8"));
    }
    if (isNull(paramString1)) {
      paramString1 = null;
    }
    boolean bool = isNull(paramString2);
    String str = null;
    if (bool) {}
    for (;;)
    {
      new HttpRequest(paramString1, str).sendPost(paramURL.toString(), localStringBuilder.toString());
      return;
      str = paramString2;
    }
  }
  
  private static boolean isNull(String paramString)
  {
    return (paramString == null) || (paramString == "ACRA-NULL-STRING");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.util.HttpUtils
 * JD-Core Version:    0.7.0.1
 */