package com.viber.voip.billing;

import android.text.Html;
import org.json.JSONException;
import org.json.JSONObject;

public class j
{
  private s a;
  private double b;
  private String c;
  private boolean d;
  
  public j(m paramm)
  {
    this.a = paramm.b();
    if (paramm.a()) {}
    while (paramm.c() != 102) {
      try
      {
        String str = paramm.a.getString("balance_as_string");
        if (str != null)
        {
          this.b = paramm.a.getDouble("balance");
          this.c = Html.fromHtml(str).toString();
        }
        return;
      }
      catch (JSONException localJSONException)
      {
        a.a("json exception", localJSONException);
        this.a = s.b;
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        a.a("NumberFormatException", localNumberFormatException);
        this.a = s.b;
        return;
      }
    }
    a.b("invalid user while fetching balance, interpreting as zero balance");
    this.d = true;
    this.a = null;
  }
  
  public boolean a()
  {
    return this.d;
  }
  
  public boolean b()
  {
    return this.a == null;
  }
  
  public s c()
  {
    return this.a;
  }
  
  public boolean d()
  {
    return this.b >= 0.005D;
  }
  
  public String e()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.j
 * JD-Core Version:    0.7.0.1
 */