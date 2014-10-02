package com.viber.voip.messages.adapters;

import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.viber.voip.stickers.ui.b;

class y
  implements View.OnTouchListener
{
  public View a;
  public b b;
  public ImageView c;
  public ImageView d;
  public View e;
  public v f;
  public boolean g;
  
  public y(q paramq)
  {
    this.a = paramq.a.inflate(2130903339, null);
    this.c = ((ImageView)this.a.findViewById(2131166141));
    this.d = ((ImageView)this.a.findViewById(2131166142));
    this.b = new b(q.g(paramq), this.c, this.d);
    this.e = this.a.findViewById(2131166143);
    this.a.setOnTouchListener(this);
  }
  
  public void a()
  {
    this.b.a();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.f != null) {
      this.f.a(paramMotionEvent);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.y
 * JD-Core Version:    0.7.0.1
 */