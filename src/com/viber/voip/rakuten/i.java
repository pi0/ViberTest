package com.viber.voip.rakuten;

import android.os.AsyncTask;
import com.viber.voip.ViberEnv;
import com.viber.voip.billing.a;
import com.viber.voip.util.http.HttpRequest;
import java.io.IOException;

class i
  extends AsyncTask<String, Void, j>
{
  i(RakutenAccountWebViewActivity paramRakutenAccountWebViewActivity) {}
  
  protected j a(String... paramVarArgs)
  {
    String str1 = paramVarArgs[0];
    try
    {
      HttpRequest localHttpRequest = ViberEnv.newHttpRequest(str1);
      RakutenAccountWebViewActivity.a("RequestTask: Running request to " + localHttpRequest.getUrl());
      int i = localHttpRequest.getResponseCode();
      RakutenAccountWebViewActivity.a("RequestTask: Response code: " + i);
      if (i == 403) {
        return new j(str1, k.b, null);
      }
      String str2 = a.a(localHttpRequest.getInputStream());
      j localj = new j(str1, k.a, str2);
      return localj;
    }
    catch (IOException localIOException) {}
    return new j(str1, k.c, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.i
 * JD-Core Version:    0.7.0.1
 */