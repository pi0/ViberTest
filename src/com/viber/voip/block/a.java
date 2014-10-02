package com.viber.voip.block;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class a
  extends BaseAdapter
{
  private LayoutInflater a;
  private o b;
  private d c;
  
  public a(Context paramContext, o paramo, d paramd)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramo;
    this.c = paramd;
  }
  
  public View a()
  {
    View localView = this.a.inflate(2130903196, null);
    localView.setTag(new c(localView));
    return localView;
  }
  
  public q a(int paramInt)
  {
    return this.b.e(paramInt);
  }
  
  public void a(View paramView, q paramq)
  {
    c localc = (c)paramView.getTag();
    localc.a.setText(paramq.a());
    if (paramq.c())
    {
      localc.b.setVisibility(0);
      localc.b.setText(paramq.b());
    }
    for (;;)
    {
      localc.c.setOnClickListener(new b(this, paramq));
      return;
      localc.b.setVisibility(8);
    }
  }
  
  public int getCount()
  {
    return this.b.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    return this.b.a_(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a();
    }
    a(paramView, a(paramInt));
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.block.a
 * JD-Core Version:    0.7.0.1
 */