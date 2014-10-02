package com.viber.voip.billing;

import org.json.JSONObject;

public class bq
{
  String a;
  bn b;
  String c;
  String d;
  String e;
  String f;
  String g;
  
  public bq(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.g = paramString2;
    JSONObject localJSONObject = new JSONObject(this.g);
    this.b = bn.a(localJSONObject.optString("productId"));
    this.c = localJSONObject.optString("type");
    this.d = localJSONObject.optString("price");
    this.e = localJSONObject.optString("title");
    this.f = localJSONObject.optString("description");
  }
  
  public bn a()
  {
    return this.b;
  }
  
  public String b()
  {
    return this.d;
  }
  
  public String toString()
  {
    return "ProductDetails:" + this.g;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.bq
 * JD-Core Version:    0.7.0.1
 */