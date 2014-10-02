package com.viber.voip.messages;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.jni.LocationInfo;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.stickers.r;
import com.viber.voip.util.hv;

public class j
{
  static
  {
    if (!j.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private j()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static int a(String paramString)
  {
    if ("image".equals(paramString)) {
      return 1;
    }
    if ("video".equals(paramString)) {
      return 3;
    }
    if ("animated_message".equals(paramString)) {
      return 6;
    }
    if ("sound".equals(paramString)) {
      return 2;
    }
    if ("notif".equals(paramString)) {
      return 10;
    }
    if ("location".equals(paramString)) {
      return 5;
    }
    if ("sticker".equals(paramString)) {
      return 4;
    }
    if ("sms".equals(paramString)) {
      return 11;
    }
    if ("call".equals(paramString)) {
      return 12;
    }
    if ("formatted_follow".equals(paramString)) {
      return -5;
    }
    return 0;
  }
  
  public static Intent a(long paramLong, int paramInt)
  {
    return a(paramLong, 0L, "", paramInt, 0L, 0L, "");
  }
  
  public static Intent a(long paramLong1, long paramLong2, String paramString1, int paramInt, long paramLong3, long paramLong4, String paramString2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", new ConversationData(paramLong1, paramLong2, paramString1, paramInt, paramLong3, paramLong4, paramString2, ""));
    return localIntent;
  }
  
  public static Intent a(long paramLong1, long paramLong2, String paramString1, int paramInt, long paramLong3, long paramLong4, String paramString2, boolean paramBoolean)
  {
    Intent localIntent = a(paramLong1, paramLong2, paramString1, paramInt, paramLong3, paramLong4, paramString2);
    localIntent.putExtra("navigated_to_messages_on_back", paramBoolean);
    return localIntent;
  }
  
  public static Intent a(PublicGroupInfo paramPublicGroupInfo, boolean paramBoolean)
  {
    return a(new PublicGroupConversationData(paramPublicGroupInfo), paramBoolean);
  }
  
  public static Intent a(PublicGroupConversationData paramPublicGroupConversationData, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", paramPublicGroupConversationData);
    localIntent.putExtra("navigated_to_messages_on_back", paramBoolean);
    return localIntent;
  }
  
  public static Intent a(String paramString1, long paramLong1, long paramLong2, String paramString2, Uri paramUri)
  {
    Intent localIntent = a(0L, 0L, paramString1, 0, paramLong1, paramLong2, paramString2);
    if (paramUri != null) {
      localIntent.putExtra("photo_uri", paramUri.toString());
    }
    return localIntent;
  }
  
  public static MessageEntityImpl a(long paramLong1, long paramLong2, String paramString1, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4, int paramInt5, int paramInt6)
  {
    com.viber.voip.messages.controller.b.a locala;
    String str;
    MessageEntityImpl localMessageEntityImpl;
    if (paramLong1 > 0L)
    {
      locala = new com.viber.voip.messages.controller.b.a(paramLong1, paramString5, paramString1, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt6);
      str = a(paramInt3);
      if (paramInt3 != 5) {
        break label161;
      }
      localMessageEntityImpl = locala.a(0, 0, null);
      label54:
      localMessageEntityImpl.setMessageGlobalId(paramInt5);
      if (paramInt3 != 5)
      {
        localMessageEntityImpl.setBucket(paramString2);
        localMessageEntityImpl.setDownloadId(paramString3);
      }
      com.viber.voip.messages.extras.image.a locala1 = m.a(ViberApplication.getInstance().getApplicationContext(), paramArrayOfByte, true);
      if (locala1 == null) {
        break label387;
      }
      localMessageEntityImpl.setBody(locala1.a.toString());
      localMessageEntityImpl.setThumbnailHeight(locala1.c);
      localMessageEntityImpl.setThumbnailWidth(locala1.b);
    }
    label161:
    while ((!localMessageEntityImpl.isPublicGroup()) || ((paramInt3 != 1) && (paramInt3 != 3)))
    {
      return localMessageEntityImpl;
      locala = new com.viber.voip.messages.controller.b.a(paramString1, paramString4, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo);
      break;
      if (paramInt3 == 4)
      {
        long l1 = 0L;
        try
        {
          long l2 = Long.parseLong(paramString3, 16);
          l1 = l2;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            ViberApplication.log("createMediaMessage invalid sticker id: " + paramString3);
          }
        }
        localMessageEntityImpl = locala.a(str, l1);
        localMessageEntityImpl.setExtraStatus(3);
        r.a().l((int)l1);
        break label54;
      }
      if (paramInt3 == 1)
      {
        localMessageEntityImpl = locala.a(str, null, paramString6);
        break label54;
      }
      if (paramInt3 == 3)
      {
        localMessageEntityImpl = locala.a(str, null, paramString6);
        localMessageEntityImpl.setDuration(paramInt4);
        break label54;
      }
      if (paramInt3 == 6)
      {
        com.viber.voip.k.a.a().a(true);
        localMessageEntityImpl = locala.a(str, null, paramString6);
        m.a(ViberApplication.getInstance().getApplicationContext(), paramArrayOfByte, false, com.viber.voip.k.a.b(paramString3));
        break label54;
      }
      if (paramInt3 == 2)
      {
        localMessageEntityImpl = locala.a("sound", null, 0);
        localMessageEntityImpl.setDownloadId(paramString3);
        localMessageEntityImpl.setExtraStatus(6);
        break label54;
      }
      localMessageEntityImpl = locala.a(str, null, paramString6);
      break label54;
    }
    label387:
    localMessageEntityImpl.setBody(hv.a(paramString3, 400).toString());
    return localMessageEntityImpl;
  }
  
  public static String a(int paramInt)
  {
    switch (paramInt)
    {
    case 7: 
    case 8: 
    case 9: 
    default: 
      return "text";
    case 1: 
      return "image";
    case 3: 
      return "video";
    case 6: 
      return "animated_message";
    case 2: 
      return "sound";
    case 0: 
      return "text";
    case 10: 
      return "notif";
    case 5: 
      return "location";
    }
    return "sticker";
  }
  
  public static void a(Context paramContext, long paramLong, String paramString)
  {
    Intent localIntent = a(0L, paramLong, paramString, 0, 0L, 0L, "");
    localIntent.putExtra("sms_reply", true);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public static Intent b(String paramString1, long paramLong1, long paramLong2, String paramString2, Uri paramUri)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", new ConversationData(0L, 0L, paramString1, 0, paramLong1, paramLong2, paramString2, ""));
    localIntent.putExtra("navigated_to_messages_on_back", true);
    return localIntent;
  }
  
  public static String b(int paramInt)
  {
    if (paramInt > 99) {
      return "99+";
    }
    return String.valueOf(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.j
 * JD-Core Version:    0.7.0.1
 */