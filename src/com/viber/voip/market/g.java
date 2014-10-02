package com.viber.voip.market;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class g
  implements View.OnClickListener
{
  g(MarketActivity paramMarketActivity) {}
  
  public void onClick(View paramView)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    EditText localEditText = new EditText(this.a);
    localEditText.setHint("Enter url");
    localEditText.setText(MarketActivity.d(this.a));
    localBuilder.setView(localEditText);
    localBuilder.setPositiveButton(2131493558, new h(this));
    localBuilder.setNegativeButton(2131493557, new i(this, localEditText));
    localBuilder.show();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.g
 * JD-Core Version:    0.7.0.1
 */