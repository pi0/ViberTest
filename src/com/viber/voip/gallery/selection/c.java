package com.viber.voip.gallery.selection;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.gallery.a.a;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.j;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.widget.l;

public class c
  extends com.viber.voip.gallery.b
{
  private final Context b;
  private final f c;
  private final ad d;
  private final x e;
  private final com.viber.provider.f<com.viber.voip.gallery.a.b> f;
  private final int g;
  private final int h;
  private final int i;
  private View.OnClickListener j = new d(this);
  
  public c(Context paramContext, ad paramad, a parama, f paramf)
  {
    this.b = paramContext;
    this.d = paramad;
    this.c = paramf;
    int k = paramContext.getResources().getInteger(2131427347);
    int m = h.a(paramContext, j.a) / k;
    this.e = new z().a(2130837971, paramContext).a(m, m).b();
    this.g = b(2131362217);
    this.h = b(2131362218);
    this.i = b(2131362216);
    this.f = new e(this, paramContext.getResources().getInteger(2131427347), parama);
  }
  
  private void a(g paramg, com.viber.voip.gallery.a.b paramb)
  {
    if (paramg == null) {
      return;
    }
    g.a(paramg, paramb);
    if (paramb == null)
    {
      g.b(paramg).setVisibility(4);
      return;
    }
    g.b(paramg).setVisibility(0);
    g.c(paramg).setText(paramb.b());
    g.d(paramg).setText(Integer.toString(paramb.d()));
    this.d.a(paramb.c(), g.a(paramg), this.e);
    g.a(paramg).setPressed(a(paramb));
  }
  
  private int b(int paramInt)
  {
    return this.b.getResources().getDimensionPixelSize(paramInt);
  }
  
  public com.viber.voip.gallery.a.b[] a(int paramInt)
  {
    return (com.viber.voip.gallery.a.b[])this.f.a(paramInt);
  }
  
  public int getCount()
  {
    return this.f.a();
  }
  
  public long getItemId(int paramInt)
  {
    return ((com.viber.voip.gallery.a.b[])this.f.a(paramInt))[0].getId();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.viber.voip.gallery.a.b[] arrayOfb = a(paramInt);
    Object localObject = (l)paramView;
    if (localObject == null)
    {
      l locall = new l(this.b, 2130903217, arrayOfb.length, this.g, this.g, this.h, this.g, this.i);
      for (View localView : locall.getViews())
      {
        g localg2 = new g(localView, null);
        g.a(localg2, this.j);
        localView.setTag(localg2);
        a(g.a(localg2));
      }
      localObject = locall;
    }
    ((l)localObject).a(getCount(), paramInt);
    int n = arrayOfb.length;
    int i1 = 0;
    if (i1 < n)
    {
      g localg1;
      if (((l)localObject).getViews().length > i1)
      {
        localg1 = (g)localObject.getViews()[i1].getTag();
        label184:
        if (arrayOfb.length <= i1) {
          break label219;
        }
      }
      label219:
      for (com.viber.voip.gallery.a.b localb = arrayOfb[i1];; localb = null)
      {
        a(localg1, localb);
        i1++;
        break;
        localg1 = null;
        break label184;
      }
    }
    return localObject;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.c
 * JD-Core Version:    0.7.0.1
 */