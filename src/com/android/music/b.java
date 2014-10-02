package com.android.music;

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
    attachInterface(this, "com.android.music.IMediaPlaybackService");
  }
  
  public static a a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.android.music.IMediaPlaybackService");
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
      paramParcel2.writeString("com.android.music.IMediaPlaybackService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      a(paramParcel1.createLongArray(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int i3 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i3);
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      boolean bool = b();
      paramParcel2.writeNoException();
      if (bool) {}
      for (int i2 = 1;; i2 = 0)
      {
        paramParcel2.writeInt(i2);
        return true;
      }
    case 5: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      c();
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      d();
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      e();
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      f();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      g();
      paramParcel2.writeNoException();
      return true;
    case 10: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l6 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l6);
      return true;
    case 11: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l5 = i();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l5);
      return true;
    case 12: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l4 = a(paramParcel1.readLong());
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l4);
      return true;
    case 13: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      String str4 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 14: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      String str3 = k();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l3 = l();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l3);
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      String str2 = m();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l2 = n();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l2);
      return true;
    case 18: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      b(paramParcel1.createLongArray(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long[] arrayOfLong = o();
      paramParcel2.writeNoException();
      paramParcel2.writeLongArray(arrayOfLong);
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      a(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 21: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      String str1 = p();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      long l1 = q();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l1);
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int i1 = r();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 26: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int n = b(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(n);
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int m = b(paramParcel1.readLong());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(m);
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      c(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 29: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int k = s();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
      int j = t();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
      return true;
    }
    paramParcel1.enforceInterface("com.android.music.IMediaPlaybackService");
    int i = u();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.music.b
 * JD-Core Version:    0.7.0.1
 */