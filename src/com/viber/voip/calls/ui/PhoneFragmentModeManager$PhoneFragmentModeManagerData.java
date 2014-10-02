package com.viber.voip.calls.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Iterator;
import java.util.LinkedList;

public class PhoneFragmentModeManager$PhoneFragmentModeManagerData
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneFragmentModeManagerData> CREATOR = new o();
  private boolean a;
  private LinkedList<Integer> b = new LinkedList();
  
  private PhoneFragmentModeManager$PhoneFragmentModeManagerData(Parcel paramParcel)
  {
    if (paramParcel.readInt() == i) {}
    for (;;)
    {
      this.a = i;
      int k = paramParcel.readInt();
      while (j < k)
      {
        this.b.add(Integer.valueOf(paramParcel.readInt()));
        j++;
      }
      i = 0;
    }
  }
  
  private PhoneFragmentModeManager$PhoneFragmentModeManagerData(PhoneFragmentModeManager paramPhoneFragmentModeManager)
  {
    this.a = paramPhoneFragmentModeManager.c();
    this.b = paramPhoneFragmentModeManager.f();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.a) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeInt(this.b.size());
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext()) {
        paramParcel.writeInt(((Integer)localIterator.next()).intValue());
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.PhoneFragmentModeManager.PhoneFragmentModeManagerData
 * JD-Core Version:    0.7.0.1
 */