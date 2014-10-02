package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import it.sephiroth.android.library.widget.HListView;
import it.sephiroth.android.library.widget.y;

public class HListWithDescription
  extends am
{
  private HListView a;
  
  public HListWithDescription(Context paramContext)
  {
    super(paramContext);
  }
  
  public HListWithDescription(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public HListWithDescription(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected View a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this.a = new HListView(paramContext, paramAttributeSet);
    this.a.setBackgroundResource(2130837775);
    return this.a;
  }
  
  public void a(View paramView)
  {
    this.a.f(paramView);
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    this.a.setAdapter(paramListAdapter);
  }
  
  public void setOnItemClickListener(y paramy)
  {
    this.a.setOnItemClickListener(paramy);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.HListWithDescription
 * JD-Core Version:    0.7.0.1
 */