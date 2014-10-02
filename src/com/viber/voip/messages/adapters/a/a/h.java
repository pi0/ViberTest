package com.viber.voip.messages.adapters.a.a;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.viber.voip.util.b.aa;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gj;

public class h
  extends f<com.viber.voip.messages.adapters.a.b>
{
  protected final x j;
  private final com.viber.voip.messages.h l;
  
  protected h(View paramView, com.viber.voip.messages.adapters.a.b.a parama, w paramw, com.viber.voip.messages.h paramh)
  {
    super(paramView, parama, paramw);
    this.l = paramh;
    Context localContext = paramView.getContext();
    this.j = new z().a(2130838325, localContext).b(2130838325, localContext).a(aa.b).b();
  }
  
  protected void a(com.viber.voip.messages.adapters.a.b.a parama)
  {
    this.b = new ImageView[2];
    this.b[0] = this.a;
    this.b[1] = ((ImageView)this.k.findViewById(2131165405));
  }
  
  protected void a(com.viber.voip.messages.adapters.a.b paramb, boolean paramBoolean, int paramInt, long[] paramArrayOfLong, long paramLong)
  {
    String str = paramb.L();
    this.c.a(paramb.F(), this.b[0], this.j);
    if ((paramb.m()) && ("many_add".equals(this.l.f(paramb.o()))))
    {
      this.b[1].setVisibility(0);
      this.b[1].setImageBitmap(BitmapFactory.decodeResource(this.k.getResources(), 2130838219));
      return;
    }
    if (paramArrayOfLong[0] > 0L)
    {
      this.b[1].setVisibility(0);
      if ((!gj.c(str)) && (!paramb.l()))
      {
        Uri localUri = com.viber.voip.messages.a.b.d().a(str, true);
        this.c.a(localUri, this.b[1], this.d);
        return;
      }
      this.c.a(com.viber.voip.messages.a.b.d().a(paramArrayOfLong[0], true), this.b[1], this.d);
      return;
    }
    this.b[1].setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.h
 * JD-Core Version:    0.7.0.1
 */