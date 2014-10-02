package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.util.ag;
import java.util.Map;

class cd
  implements ag
{
  cd(cb paramcb, Map paramMap1, Map paramMap2, Activity paramActivity, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void a(String paramString1, String paramString2)
  {
    this.a.put(paramString1, paramString2);
    if (this.a.size() == this.b.size()) {
      cb.a(this.f, this.c, this.b, this.a, this.d, this.e);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cd
 * JD-Core Version:    0.7.0.1
 */