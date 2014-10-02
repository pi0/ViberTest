package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public class MarketPublicGroupInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MarketPublicGroupInfo> CREATOR = new z();
  public final long a;
  public final int b;
  public final int c;
  public final String d;
  
  public MarketPublicGroupInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
  }
  
  public MarketPublicGroupInfo(String paramString1, String paramString2)
  {
    this.a = Long.parseLong(paramString1, 10);
    JSONObject localJSONObject = new JSONObject(paramString2);
    this.b = Integer.parseInt(localJSONObject.getString("last_message_id"), 10);
    this.c = localJSONObject.getInt("revision");
    if (localJSONObject.has("uri")) {}
    for (String str = localJSONObject.getString("uri");; str = null)
    {
      this.d = str;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "MarketPublicGroupInfo [groupId=" + this.a + ", lastMessageId=" + this.b + ", revision=" + this.c + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.MarketPublicGroupInfo
 * JD-Core Version:    0.7.0.1
 */