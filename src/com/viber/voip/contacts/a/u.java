package com.viber.voip.contacts.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.viber.voip.contacts.a;
import com.viber.voip.contacts.b.e;
import com.viber.voip.ui.ak;

public class u
  extends k
{
  private static final String i = u.class.getSimpleName();
  
  public u(Activity paramActivity, a parama)
  {
    super(paramActivity, parama);
  }
  
  private void a(View paramView, int paramInt)
  {
    l locall = (l)paramView.getTag();
    View localView = locall.e;
    if (paramInt == 0) {}
    for (int j = 0;; j = 8)
    {
      localView.setVisibility(j);
      if (paramInt == 0) {
        locall.f.setText(2131494195);
      }
      return;
    }
  }
  
  protected void a(int paramInt, View paramView, e parame)
  {
    super.a(paramInt, paramView, parame);
    a(paramView, paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1 = super.getView(paramInt, paramView, paramViewGroup);
    l locall = (l)localView1.getTag();
    locall.r = true;
    View localView2 = locall.i;
    if (paramInt == -1 + getCount()) {}
    for (int j = 8;; j = 0)
    {
      localView2.setVisibility(j);
      ak localak = (ak)localView1.getTag(2131165340);
      localak.b(true);
      boolean bool = false;
      if (paramInt == 0) {
        bool = true;
      }
      localak.a(bool);
      localak.a(this.c.getResources().getString(2131494195));
      localak.b("");
      return super.getView(paramInt, localView1, paramViewGroup);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.u
 * JD-Core Version:    0.7.0.1
 */