package com.viber.voip.widget;

import android.content.Context;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import com.viber.voip.ui.ViberTextView;

public class VibeGroupNameTextView
  extends ViberTextView
{
  private boolean a;
  private String b;
  private boolean c;
  
  public VibeGroupNameTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public VibeGroupNameTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public VibeGroupNameTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    this.b = paramString;
    this.a = paramBoolean;
    if (this.a)
    {
      getViewTreeObserver().addOnPreDrawListener(this);
      this.c = false;
      SpannableString localSpannableString = new SpannableString(this.b + "v");
      localSpannableString.setSpan(new ImageSpan(getContext(), 2130838560, 1), -1 + localSpannableString.length(), localSpannableString.length(), 0);
      setText(localSpannableString);
    }
    for (;;)
    {
      invalidate();
      return;
      setText(this.b);
    }
  }
  
  public boolean onPreDraw()
  {
    if ((this.a) && (!this.c))
    {
      int i = getLineCount();
      if ((i > 1) && (getText().toString().length() - getLayout().getLineEnd(i - 2) < 2))
      {
        int j = getLayout().getLineEnd(i - 1);
        String str = getText().toString();
        SpannableString localSpannableString = new SpannableString(str.substring(0, j - 2) + "\n" + str.substring(j - 2, str.length()));
        localSpannableString.setSpan(new ImageSpan(getContext(), 2130838560, 1), -1 + localSpannableString.length(), localSpannableString.length(), 0);
        setText(localSpannableString);
      }
    }
    this.c = true;
    return super.onPreDraw();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.VibeGroupNameTextView
 * JD-Core Version:    0.7.0.1
 */