package com.viber.voip.messages.controller.b;

import com.viber.voip.messages.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class b
  implements com.viber.voip.messages.d
{
  protected long a;
  protected String b;
  protected int c;
  private long d;
  
  public b(long paramLong, String paramString, int paramInt)
  {
    this.a = paramLong;
    this.b = paramString;
    this.c = paramInt;
  }
  
  public b(ConversationEntityImpl paramConversationEntityImpl)
  {
    this(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getNumber(), paramConversationEntityImpl.getConversationType());
    this.d = paramConversationEntityImpl.getId();
  }
  
  private MessageEntityImpl a(MessageEntityImpl paramMessageEntityImpl, String paramString)
  {
    MessageEntityImpl localMessageEntityImpl = new MessageEntityImpl();
    a(paramMessageEntityImpl, localMessageEntityImpl);
    localMessageEntityImpl.setCount(1);
    if (paramString != null) {
      localMessageEntityImpl.setMimeType(paramString);
    }
    localMessageEntityImpl.setId(-1L);
    localMessageEntityImpl.setGroupId(this.a);
    localMessageEntityImpl.setRecipientNumber(this.b);
    localMessageEntityImpl.setConversationType(this.c);
    localMessageEntityImpl.setConversationId(this.d);
    localMessageEntityImpl.setType(1);
    localMessageEntityImpl.setUnread(0);
    localMessageEntityImpl.setDate(System.currentTimeMillis());
    localMessageEntityImpl.setStatus(0);
    localMessageEntityImpl.setExtraStatus(3);
    return localMessageEntityImpl;
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl1, MessageEntityImpl paramMessageEntityImpl2)
  {
    if (paramMessageEntityImpl1 == null) {
      return;
    }
    paramMessageEntityImpl2.setBody(paramMessageEntityImpl1.getBody());
    paramMessageEntityImpl2.setBucket(paramMessageEntityImpl1.getBucket());
    paramMessageEntityImpl2.setConversationId(paramMessageEntityImpl1.getConversationId());
    paramMessageEntityImpl2.setConversationType(paramMessageEntityImpl1.getConversationType());
    paramMessageEntityImpl2.setCount(paramMessageEntityImpl1.getCount());
    paramMessageEntityImpl2.setDescription(paramMessageEntityImpl1.getDescription());
    paramMessageEntityImpl2.setDuration(paramMessageEntityImpl1.getDuration());
    paramMessageEntityImpl2.setGroupId(paramMessageEntityImpl1.getGroupId());
    paramMessageEntityImpl2.setMediaUri(paramMessageEntityImpl1.getMediaUri());
    paramMessageEntityImpl2.setMimeType(paramMessageEntityImpl1.getMimeType());
    paramMessageEntityImpl2.setParticipantId(paramMessageEntityImpl1.getParticipantId());
    paramMessageEntityImpl2.setRecipientNumber(paramMessageEntityImpl1.getRecipientNumber());
    paramMessageEntityImpl2.setLat(paramMessageEntityImpl1.getLat());
    paramMessageEntityImpl2.setLng(paramMessageEntityImpl1.getLng());
    paramMessageEntityImpl2.setDownloadId(paramMessageEntityImpl1.getDownloadId());
    paramMessageEntityImpl2.setObjectId(paramMessageEntityImpl1.getObjectId());
    paramMessageEntityImpl2.setThumbnailHeight(paramMessageEntityImpl1.getThumbnailHeight());
    paramMessageEntityImpl2.setThumbnailWidth(paramMessageEntityImpl1.getThumbnailWidth());
  }
  
  public e a()
  {
    if (this.b == null) {
      return new e(this.a, null);
    }
    return new e(this.b, null);
  }
  
  public MessageEntityImpl a(int paramInt1, int paramInt2, String paramString)
  {
    MessageEntityImpl localMessageEntityImpl = a("location", "", 0);
    localMessageEntityImpl.setLat(paramInt1);
    localMessageEntityImpl.setLng(paramInt2);
    localMessageEntityImpl.setBucket(paramString);
    localMessageEntityImpl.setBody(com.viber.voip.messages.extras.map.d.a(localMessageEntityImpl));
    localMessageEntityImpl.setThumbnailHeight(h.a(100.0F));
    localMessageEntityImpl.setThumbnailWidth(h.a(200.0F));
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(MessageEntityImpl paramMessageEntityImpl)
  {
    return a(paramMessageEntityImpl, null);
  }
  
  public MessageEntityImpl a(String paramString, long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = a(paramString, null, null);
    localMessageEntityImpl.setObjectId(paramLong);
    localMessageEntityImpl.setExtraStatus(3);
    localMessageEntityImpl.setStatus(0);
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(String paramString1, String paramString2, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, paramString1);
    localMessageEntityImpl.setBody(paramString2);
    localMessageEntityImpl.setMessageGlobalId(paramInt);
    return localMessageEntityImpl;
  }
  
  public MessageEntityImpl a(String paramString1, String paramString2, String paramString3)
  {
    MessageEntityImpl localMessageEntityImpl = a(null, paramString1);
    localMessageEntityImpl.setMimeType(paramString1);
    localMessageEntityImpl.setMediaUri(paramString2);
    localMessageEntityImpl.setDescription(paramString3);
    localMessageEntityImpl.setBody("");
    localMessageEntityImpl.setStatus(4);
    return localMessageEntityImpl;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.b.b
 * JD-Core Version:    0.7.0.1
 */