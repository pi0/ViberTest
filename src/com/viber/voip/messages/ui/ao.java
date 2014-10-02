package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.stickers.r;

class ao
  implements DialogInterface.OnClickListener
{
  ao(aj paramaj, View paramView, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((InputMethodManager)aj.a(this.c).getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
    int i;
    if (!TextUtils.isEmpty(this.b.getText()))
    {
      i = Integer.parseInt(this.b.getText().toString());
      if ((aj.b(this.c).e(i)) || (aj.b(this.c).d(i)) || (aj.b(this.c).c(i))) {
        Toast.makeText(aj.a(this.c), "You already have this package ot it is being downloaded now", 0).show();
      }
    }
    else
    {
      return;
    }
    dc.a(dk.h).post(new ap(this, i));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ao
 * JD-Core Version:    0.7.0.1
 */