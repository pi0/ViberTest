package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class BalloonView
  extends LinearLayout
{
  private View a;
  private TextView b;
  private TextView c;
  private ProgressBar d;
  private k e;
  private ImageView f;
  private int g;
  
  public BalloonView(Context paramContext)
  {
    super(paramContext);
    setupView(paramContext);
  }
  
  public BalloonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setupView(paramContext);
  }
  
  public BalloonView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setupView(paramContext);
  }
  
  public BalloonView a(k paramk)
  {
    this.e = paramk;
    if (!TextUtils.isEmpty(paramk.f()))
    {
      this.b.setText(paramk.f());
      this.b.setVisibility(0);
      this.d.setVisibility(4);
      if (!TextUtils.isEmpty(paramk.e()))
      {
        this.c.setText(paramk.e());
        this.c.setVisibility(0);
        return this;
      }
      this.c.setVisibility(8);
      return this;
    }
    this.b.setVisibility(4);
    this.d.setVisibility(0);
    return this;
  }
  
  protected void setupView(Context paramContext)
  {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903144, null);
    this.a.setPadding(0, 0, 0, this.g);
    this.b = ((TextView)this.a.findViewById(2131165603));
    this.c = ((TextView)this.a.findViewById(2131165604));
    this.d = ((ProgressBar)this.a.findViewById(2131165605));
    this.f = new ImageView(paramContext);
    this.f.setImageResource(2130837719);
    addView(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.BalloonView
 * JD-Core Version:    0.7.0.1
 */