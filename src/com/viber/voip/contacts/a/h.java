package com.viber.voip.contacts.a;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

class h
{
  public TextView a;
  public TextView b;
  public ImageView c;
  public ImageView d;
  public TextView e;
  public View f;
  private TextView g;
  private View h;
  private View i;
  private LinearLayout j;
  
  h(View paramView)
  {
    this.b = ((TextView)paramView.findViewById(16908308));
    this.a = ((TextView)paramView.findViewById(16908309));
    this.c = ((ImageView)paramView.findViewById(2131165646));
    this.d = ((ImageView)paramView.findViewById(2131165645));
    this.e = ((TextView)paramView.findViewById(2131165647));
    this.f = paramView.findViewById(2131165644);
    this.g = ((TextView)paramView.findViewById(2131165640));
    this.h = paramView.findViewById(2131165641);
    this.i = paramView.findViewById(2131165642);
    this.j = ((LinearLayout)paramView.findViewById(2131165643));
  }
  
  void a(int paramInt)
  {
    this.g.setVisibility(paramInt);
    this.h.setVisibility(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.h
 * JD-Core Version:    0.7.0.1
 */