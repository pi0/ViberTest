package com.viber.voip.messages.ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.viber.voip.contacts.a;
import com.viber.voip.contacts.a.k;
import com.viber.voip.contacts.a.l;

class dr
  extends k
{
  dr(dp paramdp, Activity paramActivity, a parama)
  {
    super(paramActivity, parama);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    l locall = (l)localView.getTag();
    locall.e.setVisibility(8);
    locall.i.setVisibility(8);
    if (paramView == null) {
      localView.setPadding(dp.b(this.i), localView.getPaddingTop(), localView.getPaddingRight(), localView.getPaddingBottom());
    }
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.dr
 * JD-Core Version:    0.7.0.1
 */