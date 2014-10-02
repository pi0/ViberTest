package com.viber.voip.rakuten;

import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;

class f
  extends i
{
  f(RakutenAccountWebViewActivity paramRakutenAccountWebViewActivity)
  {
    super(paramRakutenAccountWebViewActivity);
  }
  
  protected void a(j paramj)
  {
    RakutenAccountWebViewActivity.i(this.a).setProgressBarIndeterminateVisibility(false);
    RakutenAccountWebViewActivity.a("goBackChecked, response status: " + paramj.b);
    if (this == RakutenAccountWebViewActivity.a(this.a)) {
      RakutenAccountWebViewActivity.a(this.a, null);
    }
    switch (g.a[paramj.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      RakutenAccountWebViewActivity.e(this.a).goBack();
      return;
    case 2: 
      this.a.finish();
      new h(null).a();
      return;
    }
    RakutenAccountWebViewActivity.e(this.a).goBack();
    RakutenAccountWebViewActivity.f(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.f
 * JD-Core Version:    0.7.0.1
 */