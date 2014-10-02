package com.viber.voip.messages.extras.map;

import android.text.TextUtils;
import com.viber.dexshared.GMaps.Factory;
import com.viber.voip.ViberEnv;
import com.viber.voip.util.http.HttpRequest;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class h
  extends e
{
  private String e;
  
  public h(d paramd, double paramDouble1, double paramDouble2)
  {
    super(paramd, paramDouble1, paramDouble2);
    this.e = null;
  }
  
  public h(d paramd, String paramString)
  {
    super(paramd, d.d(paramd), d.e(paramd));
    this.e = paramString;
  }
  
  public void b()
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    try
    {
      if (TextUtils.isEmpty(this.e))
      {
        str1 = d.b(this.a, this.b);
        String str2 = str1.replaceAll("[' ']", "+");
        HttpRequest localHttpRequest = ViberEnv.newHttpRequest(str2);
        d.a(this.d, "Google Geocode request: " + str2);
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpRequest.getInputStream(), "UTF-8"));
        localStringBuilder = new StringBuilder();
        for (;;)
        {
          String str3 = localBufferedReader.readLine();
          if (str3 == null) {
            break;
          }
          localStringBuilder.append(str3);
        }
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder;
      for (;;)
      {
        d.a(this.d, "getGeocode " + localException);
        return;
        String str1 = d.a(URLEncoder.encode(this.e, "UTF-8"));
      }
      JSONObject localJSONObject1 = new JSONObject(localStringBuilder.toString());
      if ("OK".equalsIgnoreCase(localJSONObject1.getString("status")))
      {
        JSONArray localJSONArray = localJSONObject1.getJSONArray("results");
        while (i < localJSONArray.length())
        {
          JSONObject localJSONObject2 = localJSONArray.getJSONObject(i);
          k localk = new k();
          String str4 = localJSONObject2.getString("formatted_address");
          localk.d(str4);
          localk.e(str4);
          Double localDouble1 = Double.valueOf(localJSONObject2.getJSONObject("geometry").getJSONObject("location").getDouble("lng"));
          Double localDouble2 = Double.valueOf(localJSONObject2.getJSONObject("geometry").getJSONObject("location").getDouble("lat"));
          localk.a(new b((int)(1000000.0D * localDouble2.doubleValue()), (int)(1000000.0D * localDouble1.doubleValue())));
          localk.a(d.a(this.d).newLatLng(localDouble2.doubleValue(), localDouble1.doubleValue()));
          localk.a(localJSONObject2.getJSONArray("types").getString(0));
          localArrayList.add(localk);
          i++;
        }
      }
      return;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      d.a(this.d, "getGeocode " + localNoClassDefFoundError);
      return;
    }
    finally
    {
      d.c(this.d).a((k[])localArrayList.toArray(new k[localArrayList.size()]));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.h
 * JD-Core Version:    0.7.0.1
 */