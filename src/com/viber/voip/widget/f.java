package com.viber.voip.widget;

import android.text.Layout;
import android.text.Spannable;
import android.text.Spannable.Factory;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;

class f
  implements View.OnTouchListener
{
  f(LongSummaryCheckbBoxPreference paramLongSummaryCheckbBoxPreference) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    CharSequence localCharSequence = ((TextView)paramView).getText();
    Spannable localSpannable = Spannable.Factory.getInstance().newSpannable(localCharSequence);
    TextView localTextView = (TextView)paramView;
    int i = paramMotionEvent.getAction();
    if ((i == 1) || (i == 0))
    {
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      int m = j - localTextView.getTotalPaddingLeft();
      int n = k - localTextView.getTotalPaddingTop();
      int i1 = m + localTextView.getScrollX();
      int i2 = n + localTextView.getScrollY();
      Layout localLayout = localTextView.getLayout();
      int i3 = localLayout.getOffsetForHorizontal(localLayout.getLineForVertical(i2), i1);
      ClickableSpan[] arrayOfClickableSpan = (ClickableSpan[])localSpannable.getSpans(i3, i3, ClickableSpan.class);
      if (arrayOfClickableSpan.length != 0)
      {
        if (i == 1) {
          arrayOfClickableSpan[0].onClick(localTextView);
        }
        return true;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.f
 * JD-Core Version:    0.7.0.1
 */