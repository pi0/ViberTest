package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.ui.ViberTextView;
import com.viber.voip.ui.e;

public class bu
  extends e
{
  private static final String a = bu.class.getSimpleName();
  private int b = -1;
  public View i;
  public View j;
  public View k;
  public View l;
  public View m;
  public View n;
  public ViberTextView o;
  public ProgressBar p;
  public View q;
  public TextView r;
  public View s;
  public View t;
  
  public bu() {}
  
  public bu(View paramView)
  {
    this.q = paramView.findViewById(2131165687);
    this.r = ((TextView)paramView.findViewById(2131165688));
    this.o = ((ViberTextView)paramView.findViewById(2131165690));
    this.p = ((ProgressBar)paramView.findViewById(2131165691));
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i1 = 1;
    int i2 = 2;
    if (!f()) {
      return;
    }
    b(false);
    if (paramBoolean2)
    {
      a(4, paramBoolean3);
      return;
    }
    if (paramBoolean1)
    {
      a(3, paramBoolean3);
      return;
    }
    switch (paramInt2)
    {
    default: 
      return;
    case 0: 
      a(i1, paramBoolean3);
      return;
    case 1: 
    case 2: 
      if (paramInt1 == 0) {}
      for (;;)
      {
        a(i1, paramBoolean3);
        return;
        i1 = i2;
      }
    case 3: 
      if (paramInt1 == 0) {
        i2 = 5;
      }
      a(i2, paramBoolean3);
      return;
    }
    switch (paramInt1)
    {
    default: 
      return;
    case 0: 
      a(3, paramBoolean3);
      return;
    case 2: 
      a(7, paramBoolean3);
      return;
    }
    a(i2, paramBoolean3);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (!f()) {
      return;
    }
    View localView1 = this.k;
    int i1;
    int i2;
    label41:
    int i3;
    label62:
    int i4;
    label83:
    int i5;
    label104:
    View localView6;
    if (paramInt == 2)
    {
      i1 = 0;
      localView1.setVisibility(i1);
      View localView2 = this.m;
      if (paramInt != 3) {
        break label170;
      }
      i2 = 0;
      localView2.setVisibility(i2);
      View localView3 = this.l;
      if (paramInt != 4) {
        break label177;
      }
      i3 = 0;
      localView3.setVisibility(i3);
      View localView4 = this.j;
      if (paramInt != 1) {
        break label184;
      }
      i4 = 0;
      localView4.setVisibility(i4);
      View localView5 = this.i;
      if (paramInt != 5) {
        break label191;
      }
      i5 = 0;
      localView5.setVisibility(i5);
      localView6 = this.n;
      if (paramInt != 7) {
        break label198;
      }
    }
    label170:
    label177:
    label184:
    label191:
    label198:
    for (int i6 = 0;; i6 = 8)
    {
      localView6.setVisibility(i6);
      View localView7 = this.t;
      int i7;
      if (paramInt != 1)
      {
        i7 = 0;
        if (paramBoolean) {}
      }
      else
      {
        i7 = 8;
      }
      localView7.setVisibility(i7);
      return;
      i1 = 8;
      break;
      i2 = 8;
      break label41;
      i3 = 8;
      break label62;
      i4 = 8;
      break label83;
      i5 = 8;
      break label104;
    }
  }
  
  public void a(Activity paramActivity, int paramInt)
  {
    if ((paramInt == -1) || ((this.b == -1) && (paramInt == 4)) || (this.b == paramInt)) {
      return;
    }
    this.b = paramInt;
    paramActivity.runOnUiThread(new bv(this, paramInt, paramActivity));
  }
  
  public boolean a()
  {
    return (this.q != null) && (this.q.getVisibility() == 0);
  }
  
  public boolean a(View paramView, View.OnClickListener paramOnClickListener)
  {
    if (!super.a(paramView)) {
      return false;
    }
    this.j = paramView.findViewById(2131165663);
    this.i = paramView.findViewById(2131165666);
    this.k = paramView.findViewById(2131165672);
    this.l = paramView.findViewById(2131165669);
    this.m = paramView.findViewById(2131165676);
    this.n = paramView.findViewById(2131165680);
    this.t = paramView.findViewById(2131165662);
    paramView.findViewById(2131165675).setOnClickListener(paramOnClickListener);
    paramView.findViewById(2131165679).setOnClickListener(paramOnClickListener);
    paramView.findViewById(2131165668).setOnClickListener(paramOnClickListener);
    if (this.o != null) {
      this.o.setOnClickListener(paramOnClickListener);
    }
    this.s = paramView.findViewById(16908292);
    b(true);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bu
 * JD-Core Version:    0.7.0.1
 */