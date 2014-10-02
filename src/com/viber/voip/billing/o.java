package com.viber.voip.billing;

import android.os.AsyncTask;
import com.viber.voip.bc;
import com.viber.voip.bd;
import org.json.JSONObject;

public class o
  extends AsyncTask<Void, Void, Integer>
{
  private n b;
  
  public o(a parama, n paramn)
  {
    this.b = paramn;
  }
  
  protected Integer a(Void... paramVarArgs)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(a.a(bc.b().M + a.c(), 30000));
      if (localJSONObject.getBoolean("success")) {
        return null;
      }
      Integer localInteger = Integer.valueOf(localJSONObject.getInt("error_code"));
      return localInteger;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return Integer.valueOf(-1);
  }
  
  protected void a(Integer paramInteger)
  {
    if (paramInteger == null)
    {
      this.b.a();
      return;
    }
    this.b.a(paramInteger.intValue());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.o
 * JD-Core Version:    0.7.0.1
 */