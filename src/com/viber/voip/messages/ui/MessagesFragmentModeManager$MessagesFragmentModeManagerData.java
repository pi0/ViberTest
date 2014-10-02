package com.viber.voip.messages.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MessagesFragmentModeManager$MessagesFragmentModeManagerData
  implements Parcelable
{
  public static final Parcelable.Creator<MessagesFragmentModeManagerData> CREATOR = new dm();
  public int a;
  protected String b;
  protected Map<Long, dl> c = new HashMap();
  protected boolean d;
  
  protected MessagesFragmentModeManager$MessagesFragmentModeManagerData() {}
  
  protected MessagesFragmentModeManager$MessagesFragmentModeManagerData(Parcel paramParcel)
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
      label73:
      int i1;
      if (paramParcel.readByte() == i)
      {
        m = i;
        if (paramParcel.readByte() != i) {
          break label130;
        }
        i1 = i;
        label84:
        if (paramParcel.readByte() != i) {
          break label136;
        }
      }
      label130:
      label136:
      int i4;
      for (int i3 = i;; i4 = 0)
      {
        localMap.put(localLong, new dl(m, i1, i3));
        k++;
        break;
        int n = 0;
        break label73;
        int i2 = 0;
        break label84;
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
  
  protected MessagesFragmentModeManager$MessagesFragmentModeManagerData(MessagesFragmentModeManager paramMessagesFragmentModeManager)
  {
    this.a = paramMessagesFragmentModeManager.j();
    this.b = paramMessagesFragmentModeManager.t();
    this.c = paramMessagesFragmentModeManager.a();
    this.d = MessagesFragmentModeManager.a(paramMessagesFragmentModeManager);
    paramMessagesFragmentModeManager.x();
  }
  
  public String a()
  {
    return this.b;
  }
  
  public void b()
  {
    this.b = "";
  }
  
  public int describeContents()
  {
    return 0;
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
      dl localdl = (dl)localEntry.getValue();
      int j;
      label109:
      int k;
      if (localdl.a)
      {
        j = i;
        paramParcel.writeByte((byte)j);
        if (!localdl.b) {
          break label161;
        }
        k = i;
        label127:
        paramParcel.writeByte((byte)k);
        if (!localdl.c) {
          break label167;
        }
      }
      label161:
      label167:
      for (int m = i;; m = 0)
      {
        paramParcel.writeByte((byte)m);
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


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.MessagesFragmentModeManager.MessagesFragmentModeManagerData
 * JD-Core Version:    0.7.0.1
 */