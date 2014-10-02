package com.viber.voip.market;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.viber.voip.ViberEnv;
import com.viber.voip.util.http.HttpRequest;
import java.io.IOException;
import java.io.InputStream;

class e
  extends AsyncTask<Void, Void, Boolean>
{
  e(MarketActivity paramMarketActivity, String paramString) {}
  
  protected Boolean a(Void... paramVarArgs)
  {
    try
    {
      ViberEnv.newHttpRequest(this.a).getInputStream().read();
      Boolean localBoolean = Boolean.TRUE;
      return localBoolean;
    }
    catch (IOException localIOException) {}
    return Boolean.FALSE;
  }
  
  protected void a(Boolean paramBoolean)
  {
    MarketActivity.b(this.b, paramBoolean.booleanValue());
    try
    {
      if ((paramBoolean.booleanValue()) && (!MarketActivity.b(this.b))) {
        MarketActivity.c(this.b).loadUrl(this.a);
      }
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.e
 * JD-Core Version:    0.7.0.1
 */