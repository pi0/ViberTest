package com.viber.voip.messages.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData
  extends MessagesFragmentModeManager.MessagesFragmentModeManagerData
  implements Parcelable
{
  public static final Parcelable.Creator<PublicGroupsFragmentModeManagerData> CREATOR = new ef();
  
  private PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    int j = paramParcel.readInt();
    int k = 0;
    if (k < j)
    {
      Map localMap = this.c;
      Long localLong = Long.valueOf(paramParcel.readLong());
      int m;
      label62:
      int i1;
      if (paramParcel.readByte() == i)
      {
        m = i;
        if (paramParcel.readByte() != i) {
          break label123;
        }
        i1 = i;
        label73:
        if (paramParcel.readByte() != i) {
          break label129;
        }
      }
      label123:
      int i4;
      label129:
      for (int i3 = i;; i4 = 0)
      {
        localMap.put(localLong, new ee(m, i1, i3, paramParcel.readInt()));
        k++;
        break;
        int n = 0;
        break label62;
        int i2 = 0;
        break label73;
      }
    }
    if (paramParcel.readByte() == i) {}
    for (;;)
    {
      this.d = i;
      return;
      i = 0;
    }
  }
  
  protected PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData(PublicGroupsFragmentModeManager paramPublicGroupsFragmentModeManager)
  {
    super(paramPublicGroupsFragmentModeManager);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c.size());
    Iterator localIterator = this.c.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeLong(((Long)localEntry.getKey()).longValue());
      ee localee = (ee)localEntry.getValue();
      int j;
      label109:
      int k;
      if (localee.a)
      {
        j = i;
        paramParcel.writeByte((byte)j);
        if (!localee.b) {
          break label170;
        }
        k = i;
        label127:
        paramParcel.writeByte((byte)k);
        if (!localee.c) {
          break label176;
        }
      }
      label170:
      label176:
      for (int m = i;; m = 0)
      {
        paramParcel.writeByte((byte)m);
        paramParcel.writeInt(ee.a(localee));
        break;
        j = 0;
        break label109;
        k = 0;
        break label127;
      }
    }
    if (this.d) {}
    for (;;)
    {
      paramParcel.writeByte((byte)i);
      return;
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.PublicGroupsFragmentModeManager.PublicGroupsFragmentModeManagerData
 * JD-Core Version:    0.7.0.1
 */