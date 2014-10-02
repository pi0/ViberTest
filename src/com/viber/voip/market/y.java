package com.viber.voip.market;

import com.viber.voip.billing.bt;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class y
{
  private static HashMap<bt, y> c = new HashMap();
  public bt a;
  public String b;
  
  public y() {}
  
  public y(JSONObject paramJSONObject)
  {
    try
    {
      if (paramJSONObject.has("id")) {
        this.a = bt.a(paramJSONObject.getString("id"));
      }
      if (paramJSONObject.has("title")) {
        this.b = paramJSONObject.getString("title");
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public static y a(bt parambt)
  {
    y localy = new y();
    localy.a = parambt;
    localy.b = ("Package " + parambt.b());
    return localy;
  }
  
  public static y a(String paramString)
  {
    try
    {
      y localy = new y(new JSONObject(paramString));
      c.put(localy.a, localy);
      return localy;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  public static y b(bt parambt)
  {
    return (y)c.get(parambt);
  }
  
  public String toString()
  {
    return "MarketProductExtraInfo{id:" + this.a + ", title:" + this.b + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.y
 * JD-Core Version:    0.7.0.1
 */