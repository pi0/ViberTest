package com.viber.voip.contacts.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.a;
import com.viber.voip.contacts.b.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import java.util.ArrayList;
import java.util.List;

public class n
  extends BaseAdapter
  implements SectionIndexer
{
  private static final String l = n.class.getSimpleName();
  protected a a;
  protected LayoutInflater b;
  protected Activity c;
  protected w d;
  protected x e;
  protected boolean f = true;
  private final int g;
  private final int h;
  private int i;
  private int j;
  private final int k = 4;
  private int m;
  private String[] n = new String[1];
  private boolean o;
  private boolean p;
  private int q;
  private long r = -1L;
  private s s;
  
  public n(Activity paramActivity, a parama, int paramInt, s params)
  {
    this.a = parama;
    this.c = paramActivity;
    this.b = LayoutInflater.from(paramActivity);
    this.m = paramInt;
    this.d = w.a(paramActivity);
    this.e = new z().a(2130838218, paramActivity).b(2130838218, paramActivity).b();
    this.n[0] = " ";
    this.o = ViberApplication.isTablet();
    this.q = h.a(paramActivity, 4.0F);
    this.s = params;
    Resources localResources = paramActivity.getResources();
    this.g = localResources.getDimensionPixelSize(2131362116);
    this.h = localResources.getDimensionPixelSize(2131362117);
    this.i = localResources.getDimensionPixelSize(2131362118);
    this.j = localResources.getDimensionPixelSize(2131362119);
  }
  
  protected p a()
  {
    return new p(this, this.c, 2130903161);
  }
  
  public List<e> a(int paramInt)
  {
    int i1 = this.a.getCount();
    int i2 = paramInt * this.m;
    if (i1 - i2 > this.m) {
      i1 = i2 + this.m;
    }
    ArrayList localArrayList = new ArrayList();
    while (i2 < i1)
    {
      localArrayList.add(this.a.b(i2));
      i2++;
    }
    return localArrayList;
  }
  
  protected void a(int paramInt, p paramp, List<e> paramList)
  {
    int i1 = 0;
    if (i1 < this.m)
    {
      e locale;
      label36:
      View localView1;
      if (paramList.size() > i1)
      {
        locale = (e)paramList.get(i1);
        if (paramp == null) {
          break label65;
        }
        localView1 = paramp.getChildAt(i1);
        label48:
        if (localView1 != null) {
          break label71;
        }
      }
      label65:
      label71:
      o localo;
      int i2;
      label96:
      int i3;
      label143:
      do
      {
        do
        {
          i1++;
          break;
          locale = null;
          break label36;
          localView1 = null;
          break label48;
          localo = (o)localView1.getTag();
          localo.a(locale);
          if (locale == null) {
            break label215;
          }
          i2 = 0;
          localView1.setVisibility(i2);
        } while (locale == null);
        localo.o.setText(locale.a());
        ImageView localImageView = o.a(localo);
        if (!locale.e()) {
          break label221;
        }
        i3 = 0;
        localImageView.setVisibility(i3);
        this.d.a(locale.b(), localo.n, this.e);
      } while (!this.o);
      View localView2 = o.b(localo);
      if (this.r == locale.getId()) {}
      for (boolean bool = true;; bool = false)
      {
        localView2.setSelected(bool);
        break;
        label215:
        i2 = 4;
        break label96;
        label221:
        i3 = 8;
        break label143;
      }
    }
  }
  
  public void a(long paramLong)
  {
    if (this.r != paramLong)
    {
      this.r = paramLong;
      notifyDataSetChanged();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }
  
  public int getCount()
  {
    boolean bool = this.f;
    int i1 = 0;
    if (bool)
    {
      int i2 = this.a.getCount() / this.m;
      int i3 = this.a.getCount() % this.m;
      int i4 = 0;
      if (i3 > 0) {
        i4 = 1;
      }
      i1 = i4 + i2;
    }
    return i1;
  }
  
  public long getItemId(int paramInt)
  {
    List localList = a(paramInt);
    if ((localList.size() > 0) && (localList.get(0) != null)) {
      return ((e)localList.get(0)).getId();
    }
    return -1L;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return 0;
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return 0;
  }
  
  public Object[] getSections()
  {
    return this.n;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool1 = true;
    p localp1;
    if ((paramView instanceof p))
    {
      localp1 = (p)paramView;
      if (paramView != null) {
        break label91;
      }
    }
    label39:
    label79:
    label85:
    label91:
    for (p localp2 = a();; localp2 = localp1)
    {
      boolean bool2;
      if (localp2 != null)
      {
        if (paramInt != 0) {
          break label79;
        }
        bool2 = bool1;
        if (paramInt != -1 + getCount()) {
          break label85;
        }
      }
      for (;;)
      {
        localp2.a(bool2, bool1);
        a(paramInt, localp2, a(paramInt));
        return localp2;
        localp1 = null;
        break;
        bool2 = false;
        break label39;
        bool1 = false;
      }
    }
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.n
 * JD-Core Version:    0.7.0.1
 */