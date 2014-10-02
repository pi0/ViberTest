package com.viber.voip.billing;

import android.os.AsyncTask;
import com.viber.voip.bc;
import com.viber.voip.bd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class x
  extends AsyncTask<ae, Void, ah>
{
  private ae b;
  
  public x(a parama) {}
  
  protected ah a(ae... paramVarArgs)
  {
    this.b = paramVarArgs[0];
    for (;;)
    {
      boolean bool2;
      String str2;
      try
      {
        StringBuilder localStringBuilder1 = new StringBuilder(bc.b().J);
        String str1 = a.c();
        localStringBuilder1.append("format=json&src=").append(str1).append("&target=").append(this.b.b());
        localJSONObject = new JSONObject(a.a(localStringBuilder1.toString(), 30000));
        if (!localJSONObject.getBoolean("success")) {
          break label219;
        }
        boolean bool1 = "EU".equals(localJSONObject.getString("src_region"));
        bool2 = false;
        if (bool1) {
          break label228;
        }
        bool2 = true;
      }
      catch (Exception localException)
      {
        JSONObject localJSONObject;
        double d;
        String str3;
        StringBuilder localStringBuilder2;
        Object[] arrayOfObject;
        localException.printStackTrace();
      }
      d = localJSONObject.getDouble(str2);
      str3 = a.a(bool2);
      localStringBuilder2 = new StringBuilder().append(str3);
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Double.valueOf(d);
      String str4 = String.format("%.3f", arrayOfObject);
      String str5;
      if (str4.endsWith("0"))
      {
        str5 = str4.substring(0, -1 + str4.length());
        return new ah(str5);
        str2 = "eur";
        continue;
        label219:
        return null;
      }
      else
      {
        str5 = str4;
        continue;
        label228:
        if (bool2) {
          str2 = "usd";
        }
      }
    }
  }
  
  protected void a(ah paramah)
  {
    if (paramah != null) {
      a.b(this.a).put(this.b.b(), paramah);
    }
    List localList = (List)a.c(this.a).get(this.b.b());
    if (localList != null)
    {
      Iterator localIterator = new ArrayList(localList).iterator();
      while (localIterator.hasNext()) {
        ((ai)localIterator.next()).a(this.b, paramah);
      }
    }
    a.c(this.a).remove(this.b.b());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.x
 * JD-Core Version:    0.7.0.1
 */