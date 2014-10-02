package com.viber.voip.widget;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public class LongSummaryCheckbBoxPreference
  extends CheckBoxPreference
{
  public LongSummaryCheckbBoxPreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public LongSummaryCheckbBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public LongSummaryCheckbBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    TextView localTextView = (TextView)paramView.findViewById(16908304);
    localTextView.setOnTouchListener(new f(this));
    localTextView.setMaxLines(10);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.LongSummaryCheckbBoxPreference
 * JD-Core Version:    0.7.0.1
 */