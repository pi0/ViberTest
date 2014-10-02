package com.viber.voip.market.b.a;

import android.view.View;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.d.a;
import com.viber.voip.stickers.r;
import java.util.List;

public class b
  implements h, a
{
  private static final String a = b.class.getSimpleName();
  private final r b;
  private final f c;
  private final i d;
  private boolean e;
  private boolean f;
  
  public b(r paramr, f paramf, i parami)
  {
    this.b = paramr;
    this.c = paramf;
    this.d = parami;
  }
  
  public void a()
  {
    this.f = false;
    if (this.e)
    {
      a(this.b.h());
      this.e = false;
    }
  }
  
  public void a(View paramView, int paramInt)
  {
    this.f = true;
  }
  
  public void a(List<d> paramList)
  {
    this.c.a(paramList);
    this.d.notifyDataSetChanged();
  }
  
  public void a(List<d> paramList1, List<d> paramList2, List<d> paramList3)
  {
    if ((this.c != null) && (this.b != null) && (this.d != null))
    {
      if (!this.f) {
        a(paramList3);
      }
    }
    else {
      return;
    }
    this.e = true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.b.a.b
 * JD-Core Version:    0.7.0.1
 */