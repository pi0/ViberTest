package com.viber.voip.phone.b;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.util.gw;

class b
  implements View.OnClickListener
{
  b(a parama) {}
  
  public void onClick(View paramView)
  {
    k localk = this.a.c().b();
    if (localk != null)
    {
      if (localk.n()) {
        gw.a(paramView.getContext(), true);
      }
    }
    else {
      return;
    }
    CallerInfo localCallerInfo = localk.c();
    if (localCallerInfo.a().equals(paramView.getContext().getString(2131493744))) {}
    for (String str = localCallerInfo.b();; str = localCallerInfo.a())
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramView.getContext());
      localBuilder.setMessage(paramView.getContext().getString(2131494644, new Object[] { str }));
      localBuilder.setPositiveButton(2131493557, null);
      localBuilder.create().show();
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.b
 * JD-Core Version:    0.7.0.1
 */