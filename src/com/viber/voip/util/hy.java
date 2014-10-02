package com.viber.voip.util;

import android.content.Intent;
import android.webkit.WebView;
import com.viber.voip.ViberEnv;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.pixie.WebViewProxy;

public class hy
{
  private static final String a = hy.class.getSimpleName();
  
  public static Intent a(Intent paramIntent)
  {
    boolean bool = ViberEnv.getPixieController().useLocalProxy();
    paramIntent.putExtra("use_local_proxy", bool);
    if (bool) {
      paramIntent.putExtra("local_proxy_port", ViberEnv.getPixieController().getLocalProxyPort());
    }
    return paramIntent;
  }
  
  public static void a(Intent paramIntent, WebView paramWebView)
  {
    if (paramIntent.getBooleanExtra("use_local_proxy", false)) {
      WebViewProxy.setProxy(paramWebView, "127.0.0.1", paramIntent.getIntExtra("local_proxy_port", 0));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hy
 * JD-Core Version:    0.7.0.1
 */