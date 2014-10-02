package com.viber.voip.messages.controller.b;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.hd;

public class a
  implements com.viber.voip.messages.d
{
  private long a;
  private int b;
  private String c;
  private String d;
  private long e;
  private long f;
  private int g;
  private int h;
  private LocationInfo i;
  
  public a(long paramLong1, String paramString, long paramLong2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3)
  {
    this(paramString, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3);
    this.a = paramLong1;
  }
  
  public a(long paramLong1, String paramString1, String paramString2, long paramLong2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3)
  {
    this(paramLong1, paramString2, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3);
    this.d = paramString1;
  }
  
  private a(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3)
  {
    this.c = paramString;
    this.e = paramLong1;
    this.f = paramLong2;
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramLocationInfo;
    this.b = paramInt3;
  }
  
  public a(String paramString1, String paramString2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo)
  {
    this(paramString1, paramLong1, paramLong2, paramInt1, paramInt2, paramLocationInfo, 0);
    this.d = paramString2;
  }
  
  private MessageEntityImpl a(MessageEntityImpl paramMessageEntityImpl, String paramString)
  {
    MessageEntityImpl localMessageEntityImpl = new MessageEntityImpl();
    localMessageEntityImpl.setCount(1);
    if (((0x10 & this.g) != 0) || ((0x20 & this.g) != 0))
    {
      localMessageEntityImpl.setType(1);
      if ((0x10 & this.g) != 0)
      {
        localMessageEntityImpl.setStatus(1);
        localMessageEntityImpl.setUnread(0);
      }
    }
    for (;;)
    {
      if (((0x1 & this.g) != 0) && (ViberApplication.getInstance().getPhoneController(false).isRakutenPhone(this.c))) {
        localMessageEntityImpl.addExtraFlag(8);
      }
      if ((0x40 & this.g) != 0) {
        localMessageEntityImpl.setUnread(0);
      }
      if ((0x20 & this.g) != 0) {
        localMessageEntityImpl.setStatus(2);
      }
      if (paramString != null) {
        localMessageEntityImpl.setMimeType(paramString);
      }
      localMessageEntityImpl.setGroupId(this.a);
      localMessageEntityImpl.setConversationType(this.b);
      localMessageEntityImpl.setMessageToken(this.e);
      localMessageEntityImpl.setRecipientNumber(hd.a(ViberApplication.getInstance(), this.c, this.c));
      localMessageEntityImpl.setDate(this.f);
      localMessageEntityImpl.setFlag(this.g);
      localMessageEntityImpl.setMessageSeq(this.h);
      localMessageEntityImpl.setLocation(this.i);
      localMessageEntityImpl.setExtraStatus(3);
      return localMessageEntityImpl;
      localMessageEntityImpl.setStatus(2);
      break;
      localMessageEntityImpl.setType(0);
      localMessageEntityImpl.setStatus(2);
    }
  }
  
  public e a()
  {
    if (this.a > 0L) {
      return new e(this.a, this.d);
    }
    return new e(this.c, this.d);
  }
  
  public MessageEntityImpl a(int paramInt1, int paramInt2, String paramString)
  {
    MessageEntityImpl localMessageEntityImpl = a("location", null, null);
    localMessageEntityImpl.setBody(com.viber.voip.messages.extras.map.d.a(localMessageEntityImpl));
    localMessageEntityImpl.setThumbnailHeight(h.a(100.0F));
    localMessageEntityImpl.setThumbnailWidth(h.a(200.0F));
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(long paramLong, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, "formatted_follow");
    localMessageEntityImpl.setBody(paramString1);
    localMessageEntityImpl.setExtraStatus(4);
    localMessageEntityImpl.setDownloadId(paramString2);
    localMessageEntityImpl.setDuration(paramInt2);
    localMessageEntityImpl.setGroupId(paramLong);
    localMessageEntityImpl.setCount(paramInt1);
    localMessageEntityImpl.setDescription(paramString3);
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(MessageEntityImpl paramMessageEntityImpl)
  {
    return a(paramMessageEntityImpl, null);
  }
  
  public MessageEntityImpl a(String paramString, long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, paramString);
    localMessageEntityImpl.setExtraStatus(4);
    localMessageEntityImpl.setObjectId(paramLong);
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(String paramString1, String paramString2, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, paramString1);
    localMessageEntityImpl.setBody(paramString2);
    localMessageEntityImpl.setExtraStatus(3);
    localMessageEntityImpl.setMessageGlobalId(paramInt);
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(String paramString1, String paramString2, String paramString3)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, paramString1);
    localMessageEntityImpl.setExtraStatus(4);
    localMessageEntityImpl.setDescription(paramString3);
    localMessageEntityImpl.setBody("");
    localMessageEntityImpl.setMediaUri(paramString2);
    return localMessageEntityImpl;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.b.a
 * JD-Core Version:    0.7.0.1
 */