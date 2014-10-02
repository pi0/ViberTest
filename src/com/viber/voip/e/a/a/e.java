package com.viber.voip.e.a.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Builder;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b;
import com.viber.voip.e.a.a;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.util.hv;
import com.viber.voip.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e
  extends h
  implements a
{
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  private Bitmap a(ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    if (paramConversationEntityImpl.isPublicGroup()) {}
    for (Bitmap localBitmap = b(a(paramConversationEntityImpl.getGroupId()), 2130838517);; localBitmap = a(paramConversationEntityImpl.getId(), paramParticipantInfoEntityImpl)) {
      return a(localBitmap);
    }
  }
  
  private Uri a(long paramLong)
  {
    return hv.b(as.a().b(paramLong).getIconId());
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "ViberAdvancedNotificationFactory", paramString);
  }
  
  public Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, Intent paramIntent, int paramInt2)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt2);
    boolean bool = paramConversationEntityImpl.isConversationGroup();
    Bitmap localBitmap1;
    if (!paramBoolean2)
    {
      localBitmap1 = null;
      if (!paramBoolean1) {}
    }
    else
    {
      if (!paramConversationEntityImpl.isPublicGroup()) {
        break label205;
      }
      localBitmap1 = b(a(paramConversationEntityImpl.getGroupId()), 2130838219);
    }
    a("createMessageNotification: sShowPreview=" + u.d);
    Bitmap localBitmap2;
    Object localObject1;
    Object localObject2;
    if ((paramBoolean1) && (u.d)) {
      if (("video".equals(paramMessageEntityImpl.getMimeType())) || ("image".equals(paramMessageEntityImpl.getMimeType())) || ("animated_message".equals(paramMessageEntityImpl.getMimeType())))
      {
        CharSequence localCharSequence1 = this.d.f(paramCharSequence2.toString(), paramMessageEntityImpl.getDescription());
        localBitmap2 = localBitmap1;
        localObject1 = localCharSequence1;
        localObject2 = paramCharSequence1;
      }
    }
    for (;;)
    {
      label161:
      if (paramBoolean2) {
        paramInt1 = 1;
      }
      if (paramInt1 == 1) {}
      for (String str1 = "";; str1 = "" + paramInt1)
      {
        return a((CharSequence)localObject1, (CharSequence)localObject2, 2130838517, paramCharSequence3, str1, paramMessageEntityImpl.getDate(), localBitmap2, localPendingIntent).build();
        label205:
        if (bool)
        {
          localBitmap1 = a(paramConversationEntityImpl.getId(), paramParticipantInfoEntityImpl);
          break;
        }
        localBitmap1 = b(paramParticipantInfoEntityImpl.getCommonContactImage(bool), 2130838219);
        break;
        if (!"location".equals(paramMessageEntityImpl.getMimeType())) {
          break label426;
        }
        CharSequence localCharSequence2 = this.d.d(paramCharSequence2.toString(), a(paramMessageEntityImpl.getLat(), paramMessageEntityImpl.getLng()));
        localBitmap2 = localBitmap1;
        localObject1 = localCharSequence2;
        localObject2 = paramCharSequence1;
        break label161;
        if ((paramBoolean2) || (paramInt1 <= 1)) {
          break label426;
        }
        d locald = b();
        Context localContext = this.a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        String str2 = localContext.getString(2131493570, arrayOfObject);
        String str3 = locald.b;
        localBitmap2 = a(2130838218, (Uri[])locald.a.toArray(new Uri[locald.a.size()]));
        localObject1 = str3;
        localObject2 = str2;
        break label161;
      }
      label426:
      localBitmap2 = localBitmap1;
      localObject1 = paramCharSequence2;
      localObject2 = paramCharSequence1;
    }
  }
  
  public NotificationCompat.Builder a(ConversationEntityImpl paramConversationEntityImpl, Bitmap paramBitmap, String paramString)
  {
    return super.a(paramConversationEntityImpl, null, paramString).setLargeIcon(a(paramBitmap));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence, long paramLong, b paramb, String paramString, Intent paramIntent)
  {
    a("CreateJoinedContactNotification: contentText = " + paramCharSequence + " contentTitle = " + paramb.a() + " ticker = " + paramb.a() + " photoContactUri = " + paramb.b());
    return super.a(paramCharSequence, paramLong, paramb, paramString, paramIntent).setLargeIcon(com.viber.voip.messages.extras.image.h.b(this.a, paramb.b(), 2130838348));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, int paramInt, Intent paramIntent)
  {
    boolean bool = paramConversationEntityImpl.isConversationGroup();
    Bitmap localBitmap = null;
    if (!bool) {
      localBitmap = a(paramParticipantInfoEntityImpl.getCommonContactImage(false), 2130838517);
    }
    NotificationCompat.Builder localBuilder = super.a(paramCharSequence1, paramCharSequence2, paramParticipantInfoEntityImpl, paramConversationEntityImpl, paramInt, paramIntent).setLargeIcon(a(localBitmap));
    if (paramInt == 1) {}
    for (String str = "";; str = "" + paramInt) {
      return localBuilder.setContentInfo(str);
    }
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, long paramLong, Intent paramIntent, int paramInt2)
  {
    Bitmap localBitmap = null;
    if (paramBoolean) {
      localBitmap = com.viber.voip.messages.extras.image.h.b(this.a, paramParticipantInfoEntityImpl.getCommonContactImage(false), 2130838219);
    }
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramBoolean, paramParticipantInfoEntityImpl, paramLong, paramIntent, paramInt2).setLargeIcon(a(localBitmap));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong, String paramString, List<ParticipantInfoEntityImpl> paramList, Intent paramIntent, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)localIterator.next();
      if (localArrayList.size() >= 4) {
        break;
      }
      localArrayList.add(localParticipantInfoEntityImpl.getCommonContactImage(true));
    }
    if (localArrayList.size() != 0) {}
    for (Bitmap localBitmap = a(2130838218, (Uri[])localArrayList.toArray(new Uri[localArrayList.size()]));; localBitmap = a(paramLong, null)) {
      return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramLong, paramString, paramList, paramIntent, paramInt).setLargeIcon(a(localBitmap));
    }
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramLong, paramParticipantInfoEntityImpl).setLargeIcon(a(a(paramLong, paramParticipantInfoEntityImpl)));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).setLargeIcon(a(paramConversationEntityImpl, paramParticipantInfoEntityImpl));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Intent paramIntent, int paramInt)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, null, paramIntent, paramInt).setLargeIcon(a(paramBitmap));
  }
  
  public NotificationCompat.Builder b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.b(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).setLargeIcon(a(paramConversationEntityImpl, paramParticipantInfoEntityImpl));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.a.a.e
 * JD-Core Version:    0.7.0.1
 */