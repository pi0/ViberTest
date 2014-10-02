package com.viber.voip.messages.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class DottedScrollbar
  extends LinearLayout
{
  private final ImageView[] a = new ImageView[4];
  
  public DottedScrollbar(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public DottedScrollbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public DottedScrollbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    setOrientation(1);
    LayoutInflater.from(paramContext).inflate(2130903191, this, true);
    this.a[0] = ((ImageView)findViewById(2131165779));
    this.a[1] = ((ImageView)findViewById(2131165780));
    this.a[2] = ((ImageView)findViewById(2131165781));
    this.a[3] = ((ImageView)findViewById(2131165782));
    setCurrentPosition(0);
  }
  
  public void setCurrentPosition(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.a.length)) {
      throw new IndexOutOfBoundsException("position is out of bounds");
    }
    int i = 0;
    if (i < this.a.length)
    {
      ImageView localImageView = this.a[i];
      if (i == paramInt) {}
      for (int j = 2130838179;; j = 2130838178)
      {
        localImageView.setImageResource(j);
        i++;
        break;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.DottedScrollbar
 * JD-Core Version:    0.7.0.1
 */