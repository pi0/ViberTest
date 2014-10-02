package com.viber.voip.billing;

import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class m
{
  JSONObject a;
  private String b;
  private int c = -1;
  private String d;
  private s e;
  
  public m(s params)
  {
    this.e = params;
  }
  
  public m(IOException paramIOException)
  {
    if (a.d())
    {
      this.e = s.c;
      return;
    }
    this.e = s.a;
  }
  
  public m(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.d = paramString2;
  }
  
  public m(JSONObject paramJSONObject, String paramString)
  {
    this(paramJSONObject, paramString, true);
  }
  
  public m(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    this.a = paramJSONObject;
    this.d = paramString;
    if ((paramJSONObject != null) && (paramBoolean)) {}
    try
    {
      if (paramJSONObject.has("status"))
      {
        this.c = paramJSONObject.getInt("status");
        if (this.c != i) {}
      }
      for (;;)
      {
        if (i == 0) {
          this.e = s.b;
        }
        return;
        i = 0;
        continue;
        i = 0;
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      this.e = s.b;
    }
  }
  
  public boolean a()
  {
    return this.e == null;
  }
  
  public s b()
  {
    return this.e;
  }
  
  public int c()
  {
    return this.c;
  }
  
  public String d()
  {
    return this.d;
  }
  
  public String e()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.m
 * JD-Core Version:    0.7.0.1
 */