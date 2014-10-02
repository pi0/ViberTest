package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.view.View.BaseSavedState;

class AbsHListView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new r();
  long a;
  long b;
  int c;
  int d;
  int e;
  String f;
  boolean g;
  int h;
  SparseArrayCompat<Boolean> i;
  LongSparseArray<Integer> j;
  
  private AbsHListView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      this.h = paramParcel.readInt();
      this.i = b(paramParcel);
      this.j = a(paramParcel);
      return;
    }
  }
  
  AbsHListView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  private LongSparseArray<Integer> a(Parcel paramParcel)
  {
    int k = paramParcel.readInt();
    if (k <= 0) {
      return null;
    }
    LongSparseArray localLongSparseArray = new LongSparseArray(k);
    a(localLongSparseArray, paramParcel, k);
    return localLongSparseArray;
  }
  
  private void a(LongSparseArray<Integer> paramLongSparseArray, Parcel paramParcel)
  {
    int k = 0;
    if (paramLongSparseArray != null) {}
    for (int m = paramLongSparseArray.size();; m = 0)
    {
      paramParcel.writeInt(m);
      while (k < m)
      {
        paramParcel.writeLong(paramLongSparseArray.keyAt(k));
        paramParcel.writeInt(((Integer)paramLongSparseArray.valueAt(k)).intValue());
        k++;
      }
    }
  }
  
  private void a(LongSparseArray<Integer> paramLongSparseArray, Parcel paramParcel, int paramInt)
  {
    while (paramInt > 0)
    {
      paramLongSparseArray.put(paramParcel.readLong(), Integer.valueOf(paramParcel.readInt()));
      paramInt--;
    }
  }
  
  private void a(SparseArrayCompat<Boolean> paramSparseArrayCompat, Parcel paramParcel)
  {
    if (paramSparseArrayCompat == null)
    {
      paramParcel.writeInt(-1);
      return;
    }
    int k = paramSparseArrayCompat.size();
    paramParcel.writeInt(k);
    int m = 0;
    label23:
    if (m < k)
    {
      paramParcel.writeInt(paramSparseArrayCompat.keyAt(m));
      if (!((Boolean)paramSparseArrayCompat.valueAt(m)).booleanValue()) {
        break label70;
      }
    }
    label70:
    for (int n = 1;; n = 0)
    {
      paramParcel.writeByte((byte)n);
      m++;
      break label23;
      break;
    }
  }
  
  private void a(SparseArrayCompat<Boolean> paramSparseArrayCompat, Parcel paramParcel, int paramInt)
  {
    if (paramInt > 0)
    {
      int k = paramParcel.readInt();
      if (paramParcel.readByte() == 1) {}
      for (boolean bool = true;; bool = false)
      {
        paramSparseArrayCompat.append(k, Boolean.valueOf(bool));
        paramInt--;
        break;
      }
    }
  }
  
  private SparseArrayCompat<Boolean> b(Parcel paramParcel)
  {
    int k = paramParcel.readInt();
    if (k < 0) {
      return null;
    }
    SparseArrayCompat localSparseArrayCompat = new SparseArrayCompat(k);
    a(localSparseArrayCompat, paramParcel, k);
    return localSparseArrayCompat;
  }
  
  public String toString()
  {
    return "AbsListView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.a + " firstId=" + this.b + " viewLeft=" + this.c + " position=" + this.d + " width=" + this.e + " filter=" + this.f + " checkState=" + this.i + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeString(this.f);
    if (this.g) {}
    for (int k = 1;; k = 0)
    {
      paramParcel.writeByte((byte)k);
      paramParcel.writeInt(this.h);
      a(this.i, paramParcel);
      a(this.j, paramParcel);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.AbsHListView.SavedState
 * JD-Core Version:    0.7.0.1
 */