package com.viber.voip.phone.b.a;

import android.widget.ImageButton;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.fy;
import java.util.Observable;
import java.util.Observer;

public class i
  implements Observer
{
  private fy a = new fy(new int[][] { { 1, 4, 8, 2130838013 }, { 4, 8, 2130838013 }, { 1, 4, 2130838016 }, { 4, 2130838016 }, { 1, 8, 2, 2130838019 }, { 1, 2130838022 }, { 8, 2130838010 } });
  private ImageButton b;
  
  public i(ImageButton paramImageButton)
  {
    this.b = paramImageButton;
  }
  
  public void a(ImageButton paramImageButton)
  {
    this.b = paramImageButton;
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    n localn = (n)paramObject;
    int i = this.a.a(localn.g());
    if (-1 != i)
    {
      this.b.setImageResource(i);
      this.b.setVisibility(0);
      return;
    }
    this.b.setVisibility(4);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.i
 * JD-Core Version:    0.7.0.1
 */