package com.viber.voip.widget.dslv;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;

public class v
  implements p
{
  private Bitmap a;
  private ImageView b;
  private int c = -16777216;
  private ListView d;
  
  public v(ListView paramListView)
  {
    this.d = paramListView;
  }
  
  public View a(int paramInt)
  {
    View localView = this.d.getChildAt(paramInt + this.d.getHeaderViewsCount() - this.d.getFirstVisiblePosition());
    if (localView == null) {
      return null;
    }
    localView.setPressed(false);
    localView.setDrawingCacheEnabled(true);
    this.a = Bitmap.createBitmap(localView.getDrawingCache());
    localView.setDrawingCacheEnabled(false);
    if (this.b == null) {
      this.b = new ImageView(this.d.getContext());
    }
    this.b.setBackgroundColor(this.c);
    this.b.setPadding(0, 0, 0, 0);
    this.b.setImageBitmap(this.a);
    this.b.setLayoutParams(new ViewGroup.LayoutParams(localView.getWidth(), localView.getHeight()));
    return this.b;
  }
  
  public void a(View paramView)
  {
    ((ImageView)paramView).setImageDrawable(null);
    this.b = null;
    this.a.recycle();
    this.a = null;
  }
  
  public void a(View paramView, Point paramPoint1, Point paramPoint2) {}
  
  public void d(int paramInt)
  {
    this.c = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.dslv.v
 * JD-Core Version:    0.7.0.1
 */