package com.viber.voip.calls.entities.impl;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.util.hd;

public class CallEntityImpl
  extends BaseEntity
  implements CallEntity
{
  public static final Parcelable.Creator<CallEntityImpl> CREATOR = new d();
  public static final b b = new c();
  private long a;
  private String c;
  private String d;
  private long e;
  private long f;
  private long g;
  private long h;
  private int i;
  private int j;
  private int k;
  private int l;
  private boolean m;
  private boolean n;
  
  public CallEntityImpl() {}
  
  private CallEntityImpl(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.a = paramParcel.readLong();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readLong();
    this.f = paramParcel.readLong();
    this.g = paramParcel.readLong();
    this.h = paramParcel.readLong();
    this.i = paramParcel.readInt();
    this.j = paramParcel.readInt();
    this.k = paramParcel.readInt();
    int i2;
    if (paramParcel.readInt() == i1)
    {
      i2 = i1;
      this.m = i2;
      if (paramParcel.readInt() != i1) {
        break label136;
      }
    }
    for (;;)
    {
      this.n = i1;
      this.l = paramParcel.readInt();
      return;
      i2 = 0;
      break;
      label136:
      i1 = 0;
    }
  }
  
  public CallEntityImpl(ViberApplication paramViberApplication, boolean paramBoolean1, int paramInt, boolean paramBoolean2, g paramg)
  {
    this(hd.a(paramViberApplication, paramg.h(), paramg.h()), 0L, paramBoolean1, paramInt, paramBoolean2, paramg);
  }
  
  public CallEntityImpl(String paramString, long paramLong, boolean paramBoolean1, int paramInt1, boolean paramBoolean2, int paramInt2, int paramInt3, g paramg)
  {
    this(paramString, paramLong, paramBoolean1, paramInt1, paramBoolean2, paramg);
    this.j = paramInt2;
    this.k = paramInt3;
  }
  
  public CallEntityImpl(String paramString, long paramLong, boolean paramBoolean1, int paramInt, boolean paramBoolean2, g paramg)
  {
    this.a = paramg.getId();
    this.c = paramg.h();
    this.f = paramg.a();
    this.g = paramg.e();
    this.i = paramg.f();
    this.m = paramBoolean2;
    this.n = paramBoolean1;
    this.l = paramInt;
    this.h = paramLong;
    this.d = paramString;
  }
  
  public void a(int paramInt)
  {
    this.i = paramInt;
  }
  
  public void a(long paramLong)
  {
    this.a = paramLong;
  }
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void b(int paramInt)
  {
    this.j = paramInt;
  }
  
  public void b(long paramLong)
  {
    this.e = paramLong;
  }
  
  public void b(String paramString)
  {
    this.d = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void c(int paramInt)
  {
    this.k = paramInt;
  }
  
  public void c(long paramLong)
  {
    this.f = paramLong;
  }
  
  public int compareTo(Entity paramEntity)
  {
    int i1 = -1;
    CallEntityImpl localCallEntityImpl;
    if ((paramEntity != null) && ((paramEntity instanceof CallEntityImpl)))
    {
      localCallEntityImpl = (CallEntityImpl)paramEntity;
      if ((getId() != localCallEntityImpl.getId()) || (getId() == -1L)) {
        break label45;
      }
      i1 = 0;
    }
    label45:
    while ((h() == localCallEntityImpl.h()) || (h() < localCallEntityImpl.h())) {
      return i1;
    }
    return 1;
  }
  
  public void d(int paramInt)
  {
    this.l = paramInt;
  }
  
  public void d(long paramLong)
  {
    this.g = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long e()
  {
    return this.a;
  }
  
  public void e(long paramLong)
  {
    this.h = paramLong;
  }
  
  public String f()
  {
    return this.c;
  }
  
  public String g()
  {
    return this.d;
  }
  
  public ContentValues getContentValues()
  {
    return b.getContentValues(this);
  }
  
  public Creator getCreator()
  {
    return b;
  }
  
  public long h()
  {
    return this.f;
  }
  
  public long i()
  {
    return this.g;
  }
  
  public int j()
  {
    return this.i;
  }
  
  public boolean k()
  {
    return this.n;
  }
  
  public boolean l()
  {
    return this.i == 3;
  }
  
  public boolean m()
  {
    return this.k == 10;
  }
  
  public boolean n()
  {
    return this.j == 1;
  }
  
  public boolean o()
  {
    return this.l == 2;
  }
  
  public long p()
  {
    return this.h;
  }
  
  public boolean q()
  {
    return this.m;
  }
  
  public int r()
  {
    return this.j;
  }
  
  public int s()
  {
    return this.k;
  }
  
  public boolean t()
  {
    return this.i == 1;
  }
  
  public String toString()
  {
    return "CallEntityImpl [nativeCallId=" + this.a + ", number=" + this.c + ", canonizedNumber=" + this.d + ", aggregatedHash=" + this.e + ", date=" + this.f + ", duration=" + this.g + ", token=" + this.h + ", type=" + this.i + ", startReason=" + this.j + ", endReason=" + this.k + ", viberCallType=" + this.l + ", looked=" + this.m + ", viberCall=" + this.n + ", id=" + this.id + "]";
  }
  
  public boolean u()
  {
    return this.i == 2;
  }
  
  public int v()
  {
    return this.l;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.a);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeLong(this.e);
    paramParcel.writeLong(this.f);
    paramParcel.writeLong(this.g);
    paramParcel.writeLong(this.h);
    paramParcel.writeInt(this.i);
    paramParcel.writeInt(this.j);
    paramParcel.writeInt(this.k);
    int i2;
    if (this.m)
    {
      i2 = i1;
      paramParcel.writeInt(i2);
      if (!this.n) {
        break label133;
      }
    }
    for (;;)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeInt(this.l);
      return;
      i2 = 0;
      break;
      label133:
      i1 = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.CallEntityImpl
 * JD-Core Version:    0.7.0.1
 */