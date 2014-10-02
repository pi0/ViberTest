package com.sec.android.app.music.player.a;

import android.os.Binder;
import android.os.Parcel;
import com.sec.android.app.music.player.data.MusicAlbumInfo;

public abstract class b
  extends Binder
  implements a
{
  public b()
  {
    attachInterface(this, "com.sec.android.app.music.player.service.ICorePlayerService");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.sec.android.app.music.player.service.ICorePlayerService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i17 = b();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i17);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i16 = c();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i16);
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      String str4 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      e();
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i15 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i15);
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i14 = paramParcel1.readInt();
      boolean bool8 = false;
      if (i14 != 0) {
        bool8 = true;
      }
      a(bool8);
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i13 = paramParcel1.readInt();
      boolean bool7 = false;
      if (i13 != 0) {
        bool7 = true;
      }
      b(bool7);
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      MusicAlbumInfo localMusicAlbumInfo = g();
      paramParcel2.writeNoException();
      if (localMusicAlbumInfo != null)
      {
        paramParcel2.writeInt(1);
        localMusicAlbumInfo.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 10: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i12 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i12);
      return true;
    case 11: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i11 = i();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i11);
      return true;
    case 12: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i10 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i10);
      return true;
    case 13: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      boolean bool6 = k();
      paramParcel2.writeNoException();
      int i9 = 0;
      if (bool6) {
        i9 = 1;
      }
      paramParcel2.writeInt(i9);
      return true;
    case 14: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i8 = l();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i8);
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      String str3 = m();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      String str2 = n();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i7 = o();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i7);
      return true;
    case 18: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      String str1 = p();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i6 = paramParcel1.readInt();
      boolean bool5 = false;
      if (i6 != 0) {
        bool5 = true;
      }
      c(bool5);
      paramParcel2.writeNoException();
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      q();
      paramParcel2.writeNoException();
      return true;
    case 21: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i5 = r();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i5);
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i4 = s();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i4);
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      t();
      paramParcel2.writeNoException();
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      u();
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i3 = paramParcel1.readInt();
      if (i3 < 0) {}
      for (int[] arrayOfInt = null;; arrayOfInt = new int[i3])
      {
        a(arrayOfInt);
        paramParcel2.writeNoException();
        paramParcel2.writeIntArray(arrayOfInt);
        return true;
      }
    case 26: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i2 = v();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i2);
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int i1 = w();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      boolean bool4 = x();
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4) {
        n = 1;
      }
      paramParcel2.writeInt(n);
      return true;
    case 29: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      int m = y();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(m);
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      z();
      paramParcel2.writeNoException();
      return true;
    case 31: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      boolean bool3 = A();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool3) {
        k = 1;
      }
      paramParcel2.writeInt(k);
      return true;
    case 32: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      boolean bool2 = B();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool2) {
        j = 1;
      }
      paramParcel2.writeInt(j);
      return true;
    case 33: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      C();
      paramParcel2.writeNoException();
      return true;
    case 34: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      D();
      paramParcel2.writeNoException();
      return true;
    case 35: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      E();
      paramParcel2.writeNoException();
      return true;
    case 36: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      F();
      paramParcel2.writeNoException();
      return true;
    case 37: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      G();
      paramParcel2.writeNoException();
      return true;
    case 38: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      H();
      paramParcel2.writeNoException();
      return true;
    case 39: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      I();
      paramParcel2.writeNoException();
      return true;
    case 40: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      J();
      paramParcel2.writeNoException();
      return true;
    case 41: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      K();
      paramParcel2.writeNoException();
      return true;
    case 42: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      L();
      paramParcel2.writeNoException();
      return true;
    case 43: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      M();
      paramParcel2.writeNoException();
      return true;
    case 44: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      N();
      paramParcel2.writeNoException();
      return true;
    case 45: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      O();
      paramParcel2.writeNoException();
      return true;
    case 46: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      P();
      paramParcel2.writeNoException();
      return true;
    case 47: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      Q();
      paramParcel2.writeNoException();
      return true;
    case 48: 
      paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
      boolean bool1 = R();
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1) {
        i = 1;
      }
      paramParcel2.writeInt(i);
      return true;
    }
    paramParcel1.enforceInterface("com.sec.android.app.music.player.service.ICorePlayerService");
    S();
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.sec.android.app.music.player.a.b
 * JD-Core Version:    0.7.0.1
 */