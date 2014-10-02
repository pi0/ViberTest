package com.viber.voip.k;

import android.support.v4.app.Fragment;
import com.zoobe.sdk.helper.ZoobeHelper;

class d
  implements i
{
  d(a parama, Fragment paramFragment) {}
  
  public void a(ZoobeHelper paramZoobeHelper)
  {
    if (paramZoobeHelper != null) {
      this.a.startActivityForResult(a.b(this.b, paramZoobeHelper), 10000);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.k.d
 * JD-Core Version:    0.7.0.1
 */