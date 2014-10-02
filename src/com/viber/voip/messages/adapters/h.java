package com.viber.voip.messages.adapters;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.text.TextUtils;
import com.viber.voip.as;
import com.viber.voip.aw;
import com.viber.voip.ax;
import com.viber.voip.messages.conversation.ah;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.ui.media.bf;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.util.ft;
import java.util.HashMap;
import java.util.Map;

public class h
  extends FragmentStatePagerAdapter
  implements ax
{
  private ah a;
  private Context b;
  private Map<Long, Integer> c;
  private boolean d;
  private int e;
  private as f;
  
  public h(Context paramContext, FragmentManager paramFragmentManager, ah paramah, ViewPagerWithPagingEnable paramViewPagerWithPagingEnable)
  {
    super(paramFragmentManager);
    this.b = paramContext;
    this.a = paramah;
    this.c = new HashMap();
    this.d = com.viber.voip.messages.extras.image.h.a();
    this.f = new as(paramContext, paramViewPagerWithPagingEnable.getWidth(), paramViewPagerWithPagingEnable.getHeight(), 0.2F);
    this.f.a(this);
    paramViewPagerWithPagingEnable.setOnSizeChangeListener(new i(this, paramViewPagerWithPagingEnable));
  }
  
  private void a(Context paramContext)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONNECTION_PROBLEM");
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public int a(an paraman)
  {
    if (TextUtils.isEmpty(paraman.v())) {}
    for (Uri localUri = null; !this.d; localUri = Uri.parse(paraman.v())) {
      return 3;
    }
    if ((!com.viber.voip.messages.extras.image.h.a(false)) && (!"animated_message".equals(paraman.e()))) {
      return 6;
    }
    if ((localUri != null) && (!com.viber.voip.util.bj.a(this.b, localUri.toString()))) {
      return 2;
    }
    if (localUri == null)
    {
      if (this.c.containsKey(Long.valueOf(paraman.a()))) {
        return ((Integer)this.c.get(Long.valueOf(paraman.a()))).intValue();
      }
      if (!ft.b(this.b)) {
        if (!this.c.containsValue(Integer.valueOf(1))) {
          a(this.b);
        }
      }
      for (int i = 1;; i = 5)
      {
        this.c.put(Long.valueOf(paraman.a()), Integer.valueOf(i));
        return i;
      }
    }
    this.c.remove(Long.valueOf(paraman.a()));
    return 0;
  }
  
  public an a(int paramInt)
  {
    return this.a.e(paramInt);
  }
  
  public void a()
  {
    if ((this.e != -1 + getCount()) && (this.e != 0))
    {
      this.f.c();
      this.e = -1;
    }
  }
  
  public void a(int paramInt, aw paramaw)
  {
    if (this.e != -1) {
      notifyDataSetChanged();
    }
  }
  
  public void a(ah paramah)
  {
    this.a = paramah;
  }
  
  public void b()
  {
    this.f.b();
    this.c.clear();
  }
  
  public void b(int paramInt)
  {
    this.e = paramInt;
    an localan = a(paramInt);
    if ((localan.e().equals("image")) && (!TextUtils.isEmpty(localan.v()))) {
      this.f.d(paramInt, Uri.parse(localan.v()));
    }
  }
  
  public void b(int paramInt, aw paramaw) {}
  
  public int getCount()
  {
    return this.a.getCount();
  }
  
  public Fragment getItem(int paramInt)
  {
    an localan = a(paramInt);
    int i = a(localan);
    if (localan.e().equals("image"))
    {
      if (TextUtils.isEmpty(localan.v())) {}
      aw localaw2;
      for (Uri localUri = null;; localUri = Uri.parse(localan.v()))
      {
        localaw2 = this.f.c(paramInt, localUri);
        if ((localaw2 == null) || (localaw2.b)) {
          break;
        }
        return bf.a(localaw2.a, i, localaw2.c, localaw2.d);
      }
      Bitmap localBitmap2 = null;
      if (localaw2 != null) {
        localBitmap2 = localaw2.a;
      }
      return bf.a(localBitmap2, i);
    }
    aw localaw1 = this.f.c(paramInt, localan.b());
    Bitmap localBitmap1 = null;
    if (localaw1 != null) {
      localBitmap1 = localaw1.a;
    }
    return com.viber.voip.messages.ui.media.bj.a(localBitmap1, i, paramInt);
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public void notifyDataSetChanged()
  {
    this.d = com.viber.voip.messages.extras.image.h.a();
    super.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.h
 * JD-Core Version:    0.7.0.1
 */