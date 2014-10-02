package com.viber.voip.gallery.selection;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import com.viber.provider.f;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.a.d;
import com.viber.voip.gallery.a.e;
import com.viber.voip.gallery.b;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.widget.CheckableImageView;

public class j
  extends b
{
  private final Context b;
  private final n c;
  private final p d;
  private final f<d> e;
  private final int f;
  private final int g;
  private final int h;
  private ad i;
  private x j;
  private View.OnClickListener k = new k(this);
  private View.OnLongClickListener l = new l(this);
  
  public j(Context paramContext, ad paramad, e parame, n paramn, p paramp)
  {
    this.b = paramContext;
    this.c = paramn;
    this.d = paramp;
    int m = paramContext.getResources().getInteger(2131427348);
    int n = h.a(paramContext, com.viber.voip.messages.extras.image.j.a) / m;
    this.i = paramad;
    this.j = new z().a(2130837971, paramContext).a(n, n).b();
    this.f = b(2131362220);
    this.g = b(2131362221);
    this.h = b(2131362219);
    this.e = new m(this, paramContext.getResources().getInteger(2131427348), parame);
  }
  
  private void a(o paramo, d paramd)
  {
    if (paramo == null) {
      return;
    }
    o.a(paramo, paramd);
    if (paramd == null)
    {
      o.a(paramo).setVisibility(4);
      return;
    }
    o.a(paramo).setVisibility(0);
    GalleryItem localGalleryItem = paramd.a();
    paramo.a(this.d.a(localGalleryItem));
    o.b(paramo).setPressed(a(paramo));
    this.i.a(localGalleryItem.b(), o.b(paramo), this.j);
  }
  
  private int b(int paramInt)
  {
    return this.b.getResources().getDimensionPixelSize(paramInt);
  }
  
  private d b(View paramView)
  {
    o localo = (o)paramView.getTag();
    if ((this.c != null) && (localo != null) && (localo.a() != null)) {
      return localo.a();
    }
    return null;
  }
  
  public d[] a(int paramInt)
  {
    return (d[])this.e.a(paramInt);
  }
  
  public int getCount()
  {
    return this.e.a();
  }
  
  public long getItemId(int paramInt)
  {
    return ((d[])this.e.a(paramInt))[0].getId();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    d[] arrayOfd = a(paramInt);
    Object localObject = (com.viber.voip.widget.l)paramView;
    if (localObject == null)
    {
      com.viber.voip.widget.l locall = new com.viber.voip.widget.l(this.b, 2130903219, arrayOfd.length, this.f, this.f, this.g, this.f, this.h);
      for (View localView : locall.getViews())
      {
        localView.setTag(new o(localView, null));
        localView.setOnClickListener(this.k);
        localView.setOnLongClickListener(this.l);
        a(localView);
      }
      localObject = locall;
    }
    ((com.viber.voip.widget.l)localObject).a(getCount(), paramInt);
    int i1 = 0;
    if (i1 < arrayOfd.length)
    {
      o localo;
      if (((com.viber.voip.widget.l)localObject).getViews().length > i1)
      {
        localo = (o)localObject.getViews()[i1].getTag();
        label182:
        if (arrayOfd.length <= i1) {
          break label217;
        }
      }
      label217:
      for (d locald = arrayOfd[i1];; locald = null)
      {
        a(localo, locald);
        i1++;
        break;
        localo = null;
        break label182;
      }
    }
    return localObject;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.j
 * JD-Core Version:    0.7.0.1
 */