package com.viber.voip.registration;

import org.json.JSONException;
import org.json.JSONObject;

public class bm
{
  public String a = "";
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";
  public String f = "";
  public String g = "";
  public String h = "";
  
  public bm(String paramString)
  {
    this.a = paramString;
  }
  
  public static bm a(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      bm localbm = new bm(localJSONObject.getString("number"));
      localbm.b = localJSONObject.getString("hardware_key");
      localbm.c = localJSONObject.getString("udid");
      localbm.d = localJSONObject.getString("secondary_udid");
      localbm.e = localJSONObject.getString("device_key");
      localbm.f = localJSONObject.getString("secondary_device_key");
      if (localJSONObject.has("rakuten_r_token")) {
        localbm.g = localJSONObject.getString("rakuten_r_token");
      }
      if (localJSONObject.has("encrypted_phone_number")) {
        localbm.h = localJSONObject.getString("encrypted_phone_number");
      }
      return localbm;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public static String a(bm parambm)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("number", parambm.a);
      localJSONObject.put("hardware_key", parambm.b);
      localJSONObject.put("udid", parambm.c);
      localJSONObject.put("secondary_udid", parambm.d);
      localJSONObject.put("device_key", parambm.e);
      localJSONObject.put("secondary_device_key", parambm.f);
      localJSONObject.put("rakuten_r_token", parambm.g);
      localJSONObject.put("encrypted_phone_number", parambm.h);
      String str = localJSONObject.toString();
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String a(dl paramdl)
  {
    switch (bl.a[paramdl.ordinal()])
    {
    default: 
      return "";
    case 1: 
      return this.b;
    case 2: 
      return this.c;
    case 3: 
      return this.d;
    case 4: 
      return this.e;
    case 5: 
      return this.f;
    case 6: 
      return this.g;
    }
    return this.h;
  }
  
  public void a(dl paramdl, String paramString)
  {
    switch (bl.a[paramdl.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.b = paramString;
      return;
    case 2: 
      this.c = paramString;
      return;
    case 3: 
      this.d = paramString;
      return;
    case 4: 
      this.e = paramString;
      return;
    case 5: 
      this.f = paramString;
      return;
    case 6: 
      this.g = paramString;
      return;
    }
    this.h = paramString;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bm
 * JD-Core Version:    0.7.0.1
 */