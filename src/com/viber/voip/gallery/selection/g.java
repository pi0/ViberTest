package com.viber.voip.gallery.selection;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.gallery.a.b;

class g
{
  private final View a;
  private final TextView b;
  private final TextView c;
  private final ImageView d;
  
  private g(View paramView)
  {
    this.a = paramView;
    this.b = ((TextView)paramView.findViewById(2131165400));
    this.c = ((TextView)paramView.findViewById(2131165358));
    this.d = ((ImageView)paramView.findViewById(2131165296));
  }
  
  private void a(View.OnClickListener paramOnClickListener)
  {
    this.d.setOnClickListener(paramOnClickListener);
  }
  
  private void a(b paramb)
  {
    this.d.setTag(paramb);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.g
 * JD-Core Version:    0.7.0.1
 */