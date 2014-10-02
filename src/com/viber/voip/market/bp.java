package com.viber.voip.market;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class bp
{
  protected final bq a;
  private final String b;
  
  public bp(String paramString, bq parambq)
  {
    this.b = paramString;
    this.a = parambq;
  }
  
  protected void a(String paramString, Object... paramVarArgs)
  {
    for (;;)
    {
      JSONArray localJSONArray;
      int i;
      Object localObject;
      try
      {
        localJSONArray = new JSONArray();
        i = 0;
        if (i >= paramVarArgs.length) {
          break label152;
        }
        localObject = paramVarArgs[i];
        if (localObject == null) {
          break label244;
        }
        if ((localObject instanceof Integer)) {
          localJSONArray.put(i, (Integer)localObject);
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      if ((localObject instanceof Long))
      {
        localJSONArray.put(i, (Long)localObject);
      }
      else if ((localObject instanceof Double))
      {
        localJSONArray.put(i, (Double)localObject);
      }
      else if ((localObject instanceof String))
      {
        localJSONArray.put(i, (String)localObject);
      }
      else if ((localObject instanceof JSONObject))
      {
        localJSONArray.put(i, localObject);
        break label244;
        label152:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.b).append('.').append(paramString).append('(');
        if (localJSONArray.length() > 0)
        {
          String str2 = localJSONArray.toString();
          localStringBuilder.append(str2.substring(1, -1 + str2.length()));
        }
        localStringBuilder.append(')');
        String str1 = localStringBuilder.toString();
        this.a.c(str1);
        return;
      }
      label244:
      i++;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.bp
 * JD-Core Version:    0.7.0.1
 */