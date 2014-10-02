package com.viber.voip.messages;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.SparseArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.ak;

public class g
{
  private SparseArray<Bitmap> a = new SparseArray();
  private SparseArray<Bitmap> b;
  private SparseArray<Bitmap> c;
  private SparseArray<Bitmap> d;
  private Resources e = ViberApplication.getInstance().getResources();
  private Context f = ViberApplication.getInstance().getApplicationContext();
  
  public g()
  {
    this.a.put(3, BitmapFactory.decodeResource(this.e, 2130837642));
    this.a.put(1, BitmapFactory.decodeResource(this.e, 2130837640));
    this.a.put(2, BitmapFactory.decodeResource(this.e, 2130837644));
    this.a.put(-1, BitmapFactory.decodeResource(this.e, 2130837646));
    this.a.put(0, BitmapFactory.decodeResource(this.e, 2130837642));
    this.a.put(4, BitmapFactory.decodeResource(this.e, 2130837642));
    this.a.put(10, BitmapFactory.decodeResource(this.e, 2130837642));
    this.b = new SparseArray();
    this.b.put(0, null);
    this.b.put(1, BitmapFactory.decodeResource(this.e, 2130837642));
    this.b.put(2, BitmapFactory.decodeResource(this.e, 2130837640));
    this.c = new SparseArray();
    this.c.put(3, BitmapFactory.decodeResource(this.e, 2130837643));
    this.c.put(1, BitmapFactory.decodeResource(this.e, 2130837641));
    this.c.put(2, BitmapFactory.decodeResource(this.e, 2130837645));
    this.c.put(-1, BitmapFactory.decodeResource(this.e, 2130837647));
    this.c.put(0, BitmapFactory.decodeResource(this.e, 2130837643));
    this.c.put(4, BitmapFactory.decodeResource(this.e, 2130837643));
    this.c.put(10, BitmapFactory.decodeResource(this.e, 2130837643));
    this.d = new SparseArray();
    this.d.put(0, null);
    this.d.put(1, BitmapFactory.decodeResource(this.e, 2130837643));
    this.d.put(2, BitmapFactory.decodeResource(this.e, 2130837641));
  }
  
  private boolean c(Long paramLong)
  {
    return ak.isToday(86400000L + paramLong.longValue());
  }
  
  public String a(Long paramLong)
  {
    if (paramLong != null)
    {
      if (ak.isToday(paramLong.longValue())) {
        return this.e.getString(2131493825);
      }
      if (c(paramLong)) {
        return this.e.getString(2131493826);
      }
      return ak.a(this.f, paramLong.longValue(), false);
    }
    return null;
  }
  
  public String b(Long paramLong)
  {
    String str = null;
    if (paramLong != null) {
      str = ak.a(this.f, paramLong.longValue());
    }
    return str;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.g
 * JD-Core Version:    0.7.0.1
 */