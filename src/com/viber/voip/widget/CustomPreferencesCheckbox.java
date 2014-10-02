package com.viber.voip.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.viber.voip.bb;

public class CustomPreferencesCheckbox
  extends CheckBoxPreference
{
  private TextView a;
  private TextView b;
  private int c = 1;
  private int d = 1;
  
  public CustomPreferencesCheckbox(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public CustomPreferencesCheckbox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public CustomPreferencesCheckbox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    setLayoutResource(2130903059);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.CustomPreferencesCheckbox);
    int i = localTypedArray.getIndexCount();
    int j = 0;
    if (j < i)
    {
      int k = localTypedArray.getIndex(j);
      switch (k)
      {
      }
      for (;;)
      {
        j++;
        break;
        this.c = localTypedArray.getInt(k, 1);
        continue;
        this.d = localTypedArray.getInt(k, 1);
      }
    }
    localTypedArray.recycle();
  }
  
  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.b = ((TextView)paramView.findViewById(16908304));
    this.a = ((TextView)paramView.findViewById(16908310));
    if (this.c > 1)
    {
      this.a.setMaxLines(this.c);
      this.a.setSingleLine(false);
    }
    if (this.d > 1) {
      this.b.setMaxLines(this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.CustomPreferencesCheckbox
 * JD-Core Version:    0.7.0.1
 */