package com.viber.voip.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.bb;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.ui.ViberTextView;

public abstract class am
  extends RelativeLayout
{
  private int a = 131586;
  private int b;
  private View c;
  private TextView d;
  private TextView e;
  private RelativeLayout.LayoutParams f;
  private RelativeLayout.LayoutParams g;
  private RelativeLayout.LayoutParams h;
  private String i;
  
  public am(Context paramContext)
  {
    super(paramContext);
    b(paramContext, null);
  }
  
  public am(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  public am(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b(paramContext, paramAttributeSet);
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.ViewWithDescription);
    try
    {
      this.i = localTypedArray.getString(0);
      localTypedArray.recycle();
      setDescendantFocusability(131072);
      this.f = new RelativeLayout.LayoutParams(-1, -2);
      this.b = (this.a + getId());
      this.c = a(paramContext, paramAttributeSet);
      this.c.setId(this.b);
      this.c.setMinimumHeight(getResources().getDimensionPixelSize(2131362365));
      this.c.setLayoutParams(this.f);
      this.g = new RelativeLayout.LayoutParams(-2, -2);
      this.g.addRule(3, this.b);
      this.g.addRule(5, this.b);
      this.h = new RelativeLayout.LayoutParams(-2, -2);
      this.h.addRule(3, this.b);
      this.h.addRule(7, this.b);
      this.d = new ViberTextView(getContext());
      this.d.setLayoutParams(this.g);
      this.d.setPadding(h.a(paramContext, 10.0F), 0, 0, 0);
      this.d.setTextSize(1, 12.0F);
      this.e = new ViberTextView(getContext());
      this.e.setLayoutParams(this.h);
      this.e.setTextSize(1, 12.0F);
      this.e.setTextColor(getContext().getResources().getColor(2131296450));
      this.e.setPadding(0, 0, h.a(paramContext, 3.0F), 0);
      setDescription(this.i);
      addView(this.c);
      addView(this.d);
      addView(this.e);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  protected abstract View a(Context paramContext, AttributeSet paramAttributeSet);
  
  public void a(String paramString, int paramInt)
  {
    this.d.setText(paramString);
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      this.d.setTextColor(getContext().getResources().getColor(2131296460));
      return;
    }
    this.d.setTextColor(getContext().getResources().getColor(2131296426));
  }
  
  public int getBodyViewId()
  {
    return this.b;
  }
  
  public void setDescription(String paramString)
  {
    this.i = paramString;
    this.e.setText(paramString);
  }
  
  public void setDescriptionColor(int paramInt)
  {
    this.e.setTextColor(paramInt);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    for (int j = 0; j < getChildCount(); j++) {
      getChildAt(j).setEnabled(paramBoolean);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.am
 * JD-Core Version:    0.7.0.1
 */