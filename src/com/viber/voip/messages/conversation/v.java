package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.app.LoaderManager;
import android.util.SparseArray;
import com.viber.provider.e;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import java.util.ArrayList;
import java.util.List;

public abstract class v<T extends an>
  extends ai<T>
{
  protected boolean h = true;
  private volatile boolean k;
  private boolean l;
  private long m;
  private long n;
  private String o;
  private long p;
  private long q;
  private long r;
  private int s;
  private int t = 50;
  private boolean u;
  private long v;
  private int[] w;
  private List<T> x = new ArrayList();
  private SparseArray<T> y = new SparseArray();
  private boolean z;
  
  protected v(Context paramContext, Uri paramUri, String[] paramArrayOfString, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(paramContext, paramUri, paramArrayOfString, paramLoaderManager, parami, parame);
    d(this.t);
    b("date DESC, token DESC");
  }
  
  protected v(Context paramContext, Uri paramUri, String[] paramArrayOfString, i parami, e parame)
  {
    super(paramContext, paramUri, paramArrayOfString, parami, parame);
    this.j = parami;
    d(this.t);
    b("date DESC, token DESC");
  }
  
  public void a(long paramLong)
  {
    if (this.i != paramLong)
    {
      this.y.clear();
      this.x.clear();
    }
    super.a(paramLong);
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Long.valueOf(paramLong2);
    arrayOfObject1[1] = Long.valueOf(paramLong1);
    String str = String.format("SELECT COUNT(*) FROM messages WHERE date>=%s AND conversation_id=%s", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Long.valueOf(paramLong2);
    arrayOfObject2[1] = str;
    arrayOfObject2[2] = str;
    c(String.format("CASE WHEN %s>0 AND (%s)>50 THEN (%s) ELSE 50 END", arrayOfObject2));
  }
  
  protected void a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (!b())
    {
      this.t = (1 + this.t);
      d(this.t);
      if (paramLong2 > this.q) {
        this.q = paramLong2;
      }
      if (!paramBoolean) {
        this.k = true;
      }
    }
  }
  
  protected void a(T paramT)
  {
    if (this.m < paramT.m())
    {
      this.r = paramT.m();
      this.n = paramT.m();
      this.l = false;
      this.s = -1;
      this.x.add(paramT);
      this.y.append(paramT.D(), paramT);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!this.u) && (paramBoolean) && (this.v != 0L)) {
      this.j.c().b(w(), this.q, this.r);
    }
    this.u = paramBoolean;
  }
  
  public int[] a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt2];
    int i = 0;
    int j = -1 + super.getCount() - paramInt1;
    while ((i < paramInt2) && (j >= 0) && (j < this.w.length) && (j < super.getCount()))
    {
      int i1 = this.w[j];
      if (i1 != 0) {
        if (i1 != -1) {
          arrayOfInt[i] = i1;
        }
      }
      for (;;)
      {
        i++;
        if (!paramBoolean) {
          break label159;
        }
        j++;
        break;
        if (c(j)) {
          if ("sticker".equals(this.e.getString(16)))
          {
            int i2 = this.e.getInt(24);
            this.w[j] = i2;
            arrayOfInt[i] = i2;
          }
          else
          {
            this.w[j] = -1;
          }
        }
      }
      label159:
      j--;
    }
    return arrayOfInt;
  }
  
  public long a_(int paramInt)
  {
    return super.a_(-1 + super.getCount() - paramInt);
  }
  
  public T e(int paramInt)
  {
    if (paramInt < super.getCount())
    {
      int j = -1 + super.getCount() - paramInt;
      an localan = super.e(j);
      int[] arrayOfInt;
      if ((this.w != null) && (localan != null))
      {
        arrayOfInt = this.w;
        if (!localan.X()) {
          break label67;
        }
      }
      label67:
      for (int i1 = (int)localan.w();; i1 = -1)
      {
        arrayOfInt[j] = i1;
        return localan;
      }
    }
    int i = paramInt - super.getCount();
    if (i < this.x.size()) {
      return (an)this.x.get(i);
    }
    return null;
  }
  
  public void e()
  {
    try
    {
      super.e();
      this.t = 50;
      this.h = true;
      this.v = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getCount()
  {
    return super.getCount() + this.x.size();
  }
  
  public void h()
  {
    try
    {
      super.h();
      this.r = 0L;
      this.n = 0L;
      this.l = false;
      this.s = -1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void k()
  {
    super.k();
    this.w = new int[super.getCount()];
    if (this.t > super.getCount()) {
      this.h = false;
    }
    int i8;
    int i9;
    if (this.x.size() > 0)
    {
      i8 = 0;
      if ((i8 < super.getCount()) && (c(i8)))
      {
        i9 = this.e.getInt(22);
        if (this.e.getLong(2) >= this.m) {
          break label418;
        }
      }
    }
    int i = 0;
    int j = 0;
    int i1 = -1;
    this.z = true;
    this.l = false;
    int i2 = 0;
    label113:
    long l1;
    int i3;
    int i5;
    label295:
    int i7;
    if ((i2 < super.getCount()) && (c(i2)))
    {
      if (i2 == 0)
      {
        this.o = this.e.getString(16);
        this.p = this.e.getInt(5);
        this.q = this.e.getLong(21);
        this.r = this.e.getLong(2);
        this.m = this.r;
        i1 = this.e.getInt(23);
      }
      l1 = this.e.getLong(2);
      i3 = this.e.getInt(5);
      int i4 = this.e.getInt(34);
      i5 = this.e.getInt(3);
      int i6 = this.e.getInt(4);
      if (i3 == 1)
      {
        if (i6 != 2)
        {
          this.z = false;
          j = 1;
        }
        if ((i4 & 0x10) == 0) {
          break label469;
        }
        i7 = 1;
        label306:
        if (this.n < l1) {
          break label475;
        }
        if (i == 0)
        {
          this.s = (-1 + (super.getCount() - i2));
          i = 1;
        }
        label335:
        if ((i == 0) || (j == 0)) {
          break label534;
        }
      }
    }
    else
    {
      if (i1 == 3) {
        this.l = false;
      }
      if (!this.l) {
        this.s = -1;
      }
      if (!b()) {
        break label540;
      }
      if (this.t < super.getCount()) {
        this.t = super.getCount();
      }
      this.j.c().a(w(), this.q, this.r);
    }
    label418:
    label469:
    label475:
    while (!this.k)
    {
      return;
      an localan = (an)this.y.get(i9);
      if (localan != null)
      {
        this.y.remove(i9);
        this.x.remove(localan);
      }
      i8++;
      break;
      j = 1;
      break label295;
      i7 = 0;
      break label306;
      if ((i3 == 1) || (i7 != 0) || ((i5 == 0) && (b())))
      {
        if (i != 0) {
          break label335;
        }
        this.n = l1;
        this.s = (-1 + (super.getCount() - i2));
        i = 1;
        break label335;
      }
      this.l = true;
      break label335;
      i2++;
      break label113;
    }
    label534:
    label540:
    if (this.u)
    {
      this.j.c().b(w(), this.q, this.r);
      this.v = 0L;
      this.k = false;
      return;
    }
    this.v = this.q;
  }
  
  public boolean m()
  {
    return (this.l) && (this.x.size() == 0);
  }
  
  public long n()
  {
    return this.n;
  }
  
  public void o()
  {
    this.t = (50 + this.t);
    d(this.t);
    g();
  }
  
  public boolean p()
  {
    return this.h;
  }
  
  public int q()
  {
    return this.s;
  }
  
  public long r()
  {
    if ((!"call".equals(this.o)) && (!"notif".equals(this.o)) && (this.p == 1L) && (this.x.size() == 0)) {
      return this.q;
    }
    return 0L;
  }
  
  public boolean s()
  {
    boolean bool1 = "call".equals(this.o);
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = "notif".equals(this.o);
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = this.p < 1L;
        bool2 = false;
        if (!bool4)
        {
          boolean bool5 = this.z;
          bool2 = false;
          if (bool5)
          {
            int i = this.x.size();
            bool2 = false;
            if (i == 0) {
              bool2 = true;
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void t()
  {
    this.n = this.m;
    this.l = false;
    this.s = -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.v
 * JD-Core Version:    0.7.0.1
 */