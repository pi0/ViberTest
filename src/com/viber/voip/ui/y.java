package com.viber.voip.ui;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.nineoldandroids.animation.ObjectAnimator;
import com.viber.voip.messages.extras.image.h;

public class y
  extends ai
{
  public final ImageView a;
  public final TextView b;
  private int k;
  private final int l;
  private final int m;
  
  public y(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.j = h.a(60.0F);
    this.e = View.inflate(paramContext, paramInt1, null);
    this.b = ((TextView)this.e.findViewById(paramInt3));
    this.a = ((ImageView)this.e.findViewById(paramInt2));
    this.l = paramInt4;
    this.m = paramInt5;
  }
  
  public void a(int paramInt)
  {
    int i = 8;
    if (this.k == paramInt) {
      return;
    }
    TextView localTextView;
    if ((this.k == 3) && (paramInt == 2) && (this.a != null) && (this.b != null))
    {
      this.b.setText(this.l);
      ObjectAnimator.ofFloat(this.a, "rotation", new float[] { -180.0F, 0.0F }).setDuration(250L).start();
      localTextView = this.b;
      if ((paramInt != 2) && (paramInt != 3)) {
        break label282;
      }
    }
    label282:
    for (int j = 0;; j = i)
    {
      localTextView.setVisibility(j);
      ImageView localImageView = this.a;
      if ((paramInt == 2) || (paramInt == 3)) {
        i = 0;
      }
      localImageView.setVisibility(i);
      this.k = paramInt;
      return;
      if ((this.k == 2) && (paramInt == 3) && (this.a != null) && (this.b != null))
      {
        this.b.setText(this.m);
        ObjectAnimator.ofFloat(this.a, "rotation", new float[] { 0.0F, -180.0F }).setDuration(250L).start();
        break;
      }
      if (((this.k != 5) && (this.k != 6)) || (paramInt != 2) || (this.a == null) || (this.b == null)) {
        break;
      }
      this.b.setText(this.l);
      ObjectAnimator.ofFloat(this.a, "rotation", new float[] { 0.0F, 0.0F }).setDuration(1L).start();
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.y
 * JD-Core Version:    0.7.0.1
 */