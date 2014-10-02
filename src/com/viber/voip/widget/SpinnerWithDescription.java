package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public class SpinnerWithDescription
  extends am
{
  private Spinner a;
  
  public SpinnerWithDescription(Context paramContext)
  {
    super(paramContext);
  }
  
  public SpinnerWithDescription(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SpinnerWithDescription(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected View a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this.a = new Spinner(paramContext);
    return this.a;
  }
  
  public Object getSelectedItem()
  {
    return this.a.getSelectedItem();
  }
  
  public int getSelectedItemPosition()
  {
    return this.a.getSelectedItemPosition();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    this.a.setAdapter(paramSpinnerAdapter);
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.a.setOnItemClickListener(paramOnItemClickListener);
  }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    this.a.setOnItemLongClickListener(paramOnItemLongClickListener);
  }
  
  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.a.setOnItemSelectedListener(paramOnItemSelectedListener);
  }
  
  public void setSelection(int paramInt)
  {
    this.a.setSelection(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.SpinnerWithDescription
 * JD-Core Version:    0.7.0.1
 */