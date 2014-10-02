package com.viber.voip.messages.ui.media;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.imagezoom.ImageViewTouch;

public class bi
{
  public final ImageViewTouch a;
  public final ImageView b;
  public final ImageView c;
  public final ProgressBar d;
  public final TextView e;
  public final TextView f;
  
  protected bi(View paramView)
  {
    this.a = ((ImageViewTouch)paramView.findViewById(2131165296));
    this.b = ((ImageView)paramView.findViewById(2131166227));
    this.c = ((ImageView)paramView.findViewById(2131166228));
    this.d = ((ProgressBar)paramView.findViewById(2131166229));
    this.e = ((TextView)paramView.findViewById(2131166230));
    this.f = ((TextView)paramView.findViewById(2131166233));
  }
  
  public void a()
  {
    this.d.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(0);
  }
  
  public void a(String paramString)
  {
    this.d.setVisibility(8);
    this.e.setVisibility(0);
    this.c.setVisibility(0);
    this.e.setText(paramString);
  }
  
  public void b()
  {
    this.a.setVisibility(0);
    this.b.setVisibility(0);
    this.d.setVisibility(8);
    this.e.setVisibility(8);
    this.c.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bi
 * JD-Core Version:    0.7.0.1
 */