package com.viber.voip.calls.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.contacts.b.b;
import com.viber.voip.widget.AvatarView;

public final class s
{
  public final AvatarView a;
  public final RelativeLayout b;
  public final TextView c;
  public final TextView d;
  public final TextView e;
  public final ImageView f;
  public final View g;
  public final TextView h;
  public final View i;
  private int j;
  private AggregatedCallEntity k;
  private b l;
  private String m;
  private boolean n;
  private boolean o = false;
  
  public s(View paramView, View.OnClickListener paramOnClickListener)
  {
    this.b = ((RelativeLayout)paramView.findViewById(2131165359));
    this.c = ((TextView)paramView.findViewById(2131165400));
    this.d = ((TextView)paramView.findViewById(2131165411));
    this.e = ((TextView)paramView.findViewById(2131165430));
    this.a = ((AvatarView)paramView.findViewById(2131165398));
    this.h = ((TextView)paramView.findViewById(2131165429));
    this.f = ((ImageView)paramView.findViewById(2131165426));
    this.i = paramView.findViewById(2131165431);
    this.g = paramView.findViewById(2131165425);
    this.g.setOnClickListener(paramOnClickListener);
    this.a.setTag(this);
    this.g.setTag(this);
  }
  
  private void a(int paramInt)
  {
    this.j = paramInt;
  }
  
  public AggregatedCallEntity a()
  {
    return this.k;
  }
  
  protected void a(AggregatedCallEntity paramAggregatedCallEntity)
  {
    this.k = paramAggregatedCallEntity;
  }
  
  protected void a(b paramb)
  {
    this.l = paramb;
  }
  
  protected void a(String paramString)
  {
    this.m = paramString;
  }
  
  protected void a(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public b b()
  {
    return this.l;
  }
  
  public void b(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }
  
  public String c()
  {
    return this.m;
  }
  
  public boolean d()
  {
    return this.n;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.s
 * JD-Core Version:    0.7.0.1
 */