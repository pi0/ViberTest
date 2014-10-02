package com.viber.voip.widget;

import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.viber.voip.market.a.b;

class aj
  implements b
{
  aj(ViberWebViewActivity paramViberWebViewActivity) {}
  
  public void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      ViberWebViewActivity.a(this.a);
    }
    do
    {
      return;
      Uri localUri = this.a.getIntent().getData();
      if (localUri != null) {
        ViberWebViewActivity.a(this.a, "http://" + localUri.getAuthority() + localUri.getPath());
      }
      ViberWebViewActivity.a(this.a, new ProgressDialog(this.a));
      ViberWebViewActivity.b(this.a).requestWindowFeature(1);
      ViberWebViewActivity.b(this.a).setMessage(this.a.getString(2131493676));
      ViberWebViewActivity.c(this.a);
    } while (ViberWebViewActivity.d(this.a) == null);
    ViberWebViewActivity.e(this.a).loadUrl(ViberWebViewActivity.d(this.a));
    ViberWebViewActivity.a("onCreate() url=" + ViberWebViewActivity.d(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.aj
 * JD-Core Version:    0.7.0.1
 */