package com.viber.voip.market;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.WebView;
import android.widget.EditText;

class i
  implements DialogInterface.OnClickListener
{
  i(g paramg, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    MarketActivity.b(this.b.a, this.a.getText().toString());
    MarketActivity.c(this.b.a).clearHistory();
    MarketActivity.a(this.b.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.i
 * JD-Core Version:    0.7.0.1
 */