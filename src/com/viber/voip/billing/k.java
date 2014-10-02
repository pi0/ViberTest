package com.viber.voip.billing;

import android.os.AsyncTask;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class k
  extends AsyncTask<Void, Void, m>
{
  protected s e;
  
  public k(a parama) {}
  
  protected m a(Void... paramVarArgs)
  {
    String str = a();
    a.b("MarketBillingServerAction url: " + str);
    HashMap localHashMap;
    StringBuilder localStringBuilder;
    for (;;)
    {
      try
      {
        localHashMap = new HashMap();
        b(localHashMap);
        a(localHashMap);
        if (this.e != null) {
          break label242;
        }
        localStringBuilder = new StringBuilder();
        Iterator localIterator = localHashMap.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append('&');
        }
        if (localEntry.getValue() != null) {
          localStringBuilder.append((String)localEntry.getKey()).append('=').append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
        } else {
          a.b("Error building request: null value for parameter: " + (String)localEntry.getKey());
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        return null;
      }
    }
    a.b("MarketBillingServerAction POST data: " + localStringBuilder.toString());
    return a.a(str, localHashMap, false, 30000, true);
    label242:
    m localm = new m(this.e);
    return localm;
  }
  
  public abstract String a();
  
  public abstract void a(m paramm);
  
  protected void a(s params)
  {
    this.e = params;
  }
  
  public abstract void a(Map<String, String> paramMap);
  
  public void b()
  {
    super.execute(new Void[0]);
  }
  
  protected void b(m paramm)
  {
    a(paramm);
  }
  
  protected void b(Map<String, String> paramMap) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.k
 * JD-Core Version:    0.7.0.1
 */