package com.viber.voip.contacts.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.viber.voip.contacts.a;
import com.viber.voip.contacts.b.e;
import com.viber.voip.ui.ak;

public class t
  extends k
{
  private static final String i = t.class.getSimpleName();
  private final String j;
  
  public t(Activity paramActivity, a parama)
  {
    super(paramActivity, parama);
    this.j = paramActivity.getString(2131494196).toUpperCase();
  }
  
  private void a(View paramView, int paramInt)
  {
    l locall = (l)paramView.getTag();
    View localView = locall.e;
    if (paramInt == 0) {}
    for (int k = 0;; k = 8)
    {
      localView.setVisibility(k);
      if (paramInt == 0) {
        locall.f.setText(this.j);
      }
      return;
    }
  }
  
  protected void a(int paramInt, View paramView, e parame)
  {
    super.a(paramInt, paramView, parame);
    ((l)paramView.getTag()).c.setVisibility(0);
    a(paramView, paramInt);
  }
  
  public int getCount()
  {
    int k = super.getCount();
    if (k > 10) {
      k = 0;
    }
    return k;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1 = super.getView(paramInt, paramView, paramViewGroup);
    l locall = (l)localView1.getTag();
    locall.s = true;
    View localView2 = locall.i;
    if (paramInt == -1 + getCount()) {}
    for (int k = 8;; k = 0)
    {
      localView2.setVisibility(k);
      ak localak = (ak)localView1.getTag(2131165340);
      localak.b(true);
      boolean bool = false;
      if (paramInt == 0) {
        bool = true;
      }
      localak.a(bool);
      localak.a(this.j);
      localak.b("");
      return localView1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.t
 * JD-Core Version:    0.7.0.1
 */