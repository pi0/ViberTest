package com.viber.voip.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.FrameLayout;
import com.viber.voip.messages.extras.image.h;

public class z
  extends FrameLayout
{
  private Paint a;
  private int b;
  
  public z(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  private void a()
  {
    this.a = new Paint(1);
    this.a.setColor(-1);
    this.b = h.a(getContext(), 12.0F);
    setWillNotDraw(false);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawRoundRect(new RectF(0.0F, 0.0F, getWidth(), getHeight()), this.b, this.b, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.z
 * JD-Core Version:    0.7.0.1
 */