package com.b.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class b
  extends Binder
  implements a
{
  public b()
  {
    attachInterface(this, "com.htc.music.IMediaPlaybackService");
  }
  
  public static a a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.htc.music.IMediaPlaybackService");
    if ((localIInterface != null) && ((localIInterface instanceof a))) {
      return (a)localIInterface;
    }
    return new c(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.htc.music.IMediaPlaybackService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      String str5 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str5);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i11 = b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i11);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      b(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      a(paramParcel1.createIntArray(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i10 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i10);
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      boolean bool3 = b();
      paramParcel2.writeNoException();
      int i9 = 0;
      if (bool3) {
        i9 = 1;
      }
      paramParcel2.writeInt(i9);
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      c();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      d();
      paramParcel2.writeNoException();
      return true;
    case 10: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      e();
      paramParcel2.writeNoException();
      return true;
    case 11: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      f();
      paramParcel2.writeNoException();
      return true;
    case 12: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      g();
      paramParcel2.writeNoException();
      return true;
    case 13: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      long l3 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l3);
      return true;
    case 14: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      long l2 = i();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l2);
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      long l1 = a(paramParcel1.readLong());
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l1);
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      String str4 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      String str3 = k();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 18: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i8 = l();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i8);
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      String str2 = m();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i7 = n();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i7);
      return true;
    case 21: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      b(paramParcel1.createIntArray(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int[] arrayOfInt2 = o();
      paramParcel2.writeNoException();
      paramParcel2.writeIntArray(arrayOfInt2);
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      a(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      c(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      String str1 = p();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 26: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i6 = q();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i6);
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      d(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i5 = r();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i5);
      return true;
    case 29: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i4 = b(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i4);
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i3 = e(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i3);
      return true;
    case 31: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      f(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 32: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i2 = s();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i2);
      return true;
    case 33: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i1 = t();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 34: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      u();
      paramParcel2.writeNoException();
      return true;
    case 35: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      v();
      paramParcel2.writeNoException();
      return true;
    case 36: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      a(paramParcel1.createIntArray());
      paramParcel2.writeNoException();
      return true;
    case 37: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int[] arrayOfInt1 = w();
      paramParcel2.writeNoException();
      paramParcel2.writeIntArray(arrayOfInt1);
      return true;
    case 38: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int n = x();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(n);
      return true;
    case 39: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      y();
      paramParcel2.writeNoException();
      return true;
    case 40: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      z();
      paramParcel2.writeNoException();
      return true;
    case 41: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int m = A();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(m);
      return true;
    case 42: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int k = B();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 43: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      C();
      paramParcel2.writeNoException();
      return true;
    case 44: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      D();
      paramParcel2.writeNoException();
      return true;
    case 45: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      boolean bool2 = E();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool2) {
        j = 1;
      }
      paramParcel2.writeInt(j);
      return true;
    case 46: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      F();
      paramParcel2.writeNoException();
      return true;
    case 47: 
      paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
      int i = paramParcel1.readInt();
      boolean bool1 = false;
      if (i != 0) {
        bool1 = true;
      }
      a(bool1);
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.htc.music.IMediaPlaybackService");
    b(paramParcel1.createIntArray());
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.b.a.b
 * JD-Core Version:    0.7.0.1
 */