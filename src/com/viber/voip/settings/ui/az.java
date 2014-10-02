package com.viber.voip.settings.ui;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;

public class az
  extends ArrayAdapter<CharSequence>
  implements View.OnClickListener
{
  int a;
  CharSequence[] b;
  CharSequence[] c;
  ba d;
  
  public az(Context paramContext, int paramInt1, CharSequence[] paramArrayOfCharSequence1, CharSequence[] paramArrayOfCharSequence2, int paramInt2, ba paramba)
  {
    super(paramContext, paramInt1, paramArrayOfCharSequence1);
    this.a = paramInt2;
    this.b = paramArrayOfCharSequence1;
    this.c = paramArrayOfCharSequence2;
    this.d = paramba;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = ((Activity)getContext()).getLayoutInflater().inflate(2130903301, paramViewGroup, false);
    localView.setOnClickListener(this);
    localView.setTag(this.b[paramInt]);
    if (this.b != null) {
      ((TextView)localView.findViewById(2131166057)).setText(this.b[paramInt]);
    }
    if (this.c != null) {
      ((TextView)localView.findViewById(2131166058)).setText(this.c[paramInt]);
    }
    RadioButton localRadioButton = (RadioButton)localView.findViewById(2131165896);
    if (paramInt == this.a) {}
    for (boolean bool = true;; bool = false)
    {
      localRadioButton.setChecked(bool);
      localRadioButton.setClickable(false);
      return localView;
    }
  }
  
  public void onClick(View paramView)
  {
    if ((this.d != null) && (paramView.getTag() != null)) {
      this.d.a(paramView.getTag().toString());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.az
 * JD-Core Version:    0.7.0.1
 */