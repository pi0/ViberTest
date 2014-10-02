package com.viber.voip.rakuten;

import android.content.Intent;
import android.net.Uri;

class d
  implements Runnable
{
  d(c paramc, String paramString) {}
  
  public void run()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.a));
    this.b.a.startActivity(localIntent);
    this.b.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.d
 * JD-Core Version:    0.7.0.1
 */