package com.viber.voip.gallery.selection;

import android.view.View;
import com.viber.voip.gallery.a.d;
import com.viber.voip.widget.CheckableImageView;

class o
{
  private final View a;
  private final CheckableImageView b;
  private d c;
  
  private o(View paramView)
  {
    this.a = paramView;
    this.b = ((CheckableImageView)paramView.findViewById(2131165296));
  }
  
  private void a(d paramd)
  {
    this.c = paramd;
  }
  
  public d a()
  {
    return this.c;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b.setChecked(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.o
 * JD-Core Version:    0.7.0.1
 */