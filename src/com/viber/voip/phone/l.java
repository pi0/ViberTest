package com.viber.voip.phone;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class l
  implements View.OnClickListener
{
  l(i parami) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL");
    localIntent.setFlags(268435456);
    i.c(this.a).startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.l
 * JD-Core Version:    0.7.0.1
 */