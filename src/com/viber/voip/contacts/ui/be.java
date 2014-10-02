package com.viber.voip.contacts.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.l;

public class be
  extends bu
{
  public TextView a;
  public LinearLayout b;
  public CheckBox c;
  public View d;
  public LinearLayout e;
  public TextView f;
  public EditText g;
  public RelativeLayout h;
  
  public be(View paramView)
  {
    super(paramView);
  }
  
  public void a(Context paramContext, String paramString, int paramInt)
  {
    if (this.d != null) {
      this.d.requestLayout();
    }
  }
  
  public void a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    if ((!f()) || (paramContext == null)) {
      return;
    }
    if (paramInt1 >= 0)
    {
      TextView localTextView = this.f;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      localTextView.setText(paramContext.getString(2131493833, arrayOfObject));
      if (paramInt1 < paramInt2) {
        break label85;
      }
    }
    label85:
    for (int i = -65536;; i = paramContext.getResources().getColor(2131296340))
    {
      this.f.setTextColor(i);
      a(paramContext, paramString, paramInt1);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    View localView;
    if (this.d != null)
    {
      localView = this.d;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    if (!f()) {
      return;
    }
    if (paramBoolean)
    {
      this.b.setVisibility(0);
      this.a.setText(paramString);
      return;
    }
    this.b.setVisibility(8);
  }
  
  public boolean a(View paramView, View.OnClickListener paramOnClickListener)
  {
    if (!super.a(paramView, paramOnClickListener)) {
      return false;
    }
    this.b = ((LinearLayout)paramView.findViewById(2131165657));
    this.d = paramView.findViewById(2131165658);
    this.f = ((TextView)paramView.findViewById(2131166018));
    this.g = ((EditText)paramView.findViewById(2131166017));
    this.g.setHint(ViberApplication.getInstance().getBiDiAwareFormatter().a());
    this.a = ((TextView)paramView.findViewById(2131165661));
    this.e = ((LinearLayout)paramView.findViewById(2131165659));
    this.e.setOnClickListener(paramOnClickListener);
    this.c = ((CheckBox)paramView.findViewById(2131165660));
    this.h = ((RelativeLayout)paramView.findViewById(2131165391));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.be
 * JD-Core Version:    0.7.0.1
 */