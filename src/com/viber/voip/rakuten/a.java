package com.viber.voip.rakuten;

import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;

class a
  extends i
{
  a(RakutenAccountWebViewActivity paramRakutenAccountWebViewActivity)
  {
    super(paramRakutenAccountWebViewActivity);
  }
  
  protected void a(j paramj)
  {
    if (this == RakutenAccountWebViewActivity.a(this.a))
    {
      RakutenAccountWebViewActivity.a("reload() status: " + paramj.b);
      RakutenAccountWebViewActivity.a(this.a, null);
      RakutenAccountWebViewActivity.b(this.a).setProgressBarIndeterminateVisibility(false);
    }
    switch (g.a[paramj.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      RakutenAccountWebViewActivity.c(this.a);
      RakutenAccountWebViewActivity.d(this.a);
      RakutenAccountWebViewActivity.e(this.a).loadUrl(paramj.a);
      return;
    case 2: 
      this.a.finish();
      new h(null).a();
      return;
    }
    RakutenAccountWebViewActivity.f(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.a
 * JD-Core Version:    0.7.0.1
 */