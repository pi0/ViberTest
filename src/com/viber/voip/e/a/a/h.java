package com.viber.voip.e.a.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b;
import com.viber.voip.e.a.a;
import com.viber.voip.e.u;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.util.l;
import java.util.List;

public class h
  extends g
  implements a
{
  public h(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "ViberSimpleNotificationFactory", paramString);
  }
  
  public Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, Intent paramIntent, int paramInt2)
  {
    a("createMessageNotification: sShowPreview=" + u.d);
    String str1;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (paramInt1 > 1)
    {
      Context localContext1 = this.a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      str1 = localContext1.getString(2131493570, arrayOfObject1);
      if ((!paramBoolean1) && (!paramBoolean2))
      {
        d locald = b();
        Context localContext2 = this.a;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        String str4 = localContext2.getString(2131493570, arrayOfObject2);
        String str5 = locald.b;
        localObject1 = paramCharSequence3;
        localObject2 = str5;
        localObject3 = str4;
      }
    }
    for (;;)
    {
      PendingIntent localPendingIntent = a(paramIntent, paramInt2);
      return a((CharSequence)localObject2, (CharSequence)localObject3, 2130838517, (CharSequence)localObject1, paramMessageEntityImpl.getDate(), localPendingIntent).build();
      if ((paramBoolean1) && (paramConversationEntityImpl.isConversationGroup()))
      {
        if (!TextUtils.isEmpty(paramConversationEntityImpl.getGroupName())) {}
        for (String str2 = paramConversationEntityImpl.getGroupName();; str2 = this.a.getResources().getString(2131494051))
        {
          String str3 = this.a.getString(2131493568, new Object[] { str2 });
          localObject1 = str3;
          localObject2 = str3;
          localObject3 = str2;
          break;
        }
        if (u.d)
        {
          if (("video".equals(paramMessageEntityImpl.getMimeType())) || ("image".equals(paramMessageEntityImpl.getMimeType())) || ("animated_message".equals(paramMessageEntityImpl.getMimeType())))
          {
            CharSequence localCharSequence1 = this.d.f(paramCharSequence2.toString(), paramMessageEntityImpl.getDescription());
            localObject1 = paramCharSequence3;
            localObject2 = localCharSequence1;
            localObject3 = paramCharSequence1;
            continue;
          }
          if ("location".equals(paramMessageEntityImpl.getMimeType()))
          {
            CharSequence localCharSequence2 = this.d.d(paramCharSequence2.toString(), a(paramMessageEntityImpl.getLat(), paramMessageEntityImpl.getLng()));
            localObject1 = paramCharSequence3;
            localObject2 = localCharSequence2;
            localObject3 = paramCharSequence1;
            continue;
          }
        }
        localObject1 = paramCharSequence3;
        localObject2 = paramCharSequence2;
        localObject3 = paramCharSequence1;
      }
      else
      {
        localObject1 = paramCharSequence3;
        localObject2 = str1;
        localObject3 = paramCharSequence1;
      }
    }
  }
  
  public NotificationCompat.Builder a(ConversationEntityImpl paramConversationEntityImpl, Bitmap paramBitmap, String paramString)
  {
    Context localContext1 = this.a;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramConversationEntityImpl.getGroupName();
    String str1 = localContext1.getString(2131494578, arrayOfObject1);
    Context localContext2 = this.a;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = paramString;
    arrayOfObject2[1] = paramConversationEntityImpl.getGroupName();
    String str2 = localContext2.getString(2131494579, arrayOfObject2);
    Intent localIntent = j.a(paramConversationEntityImpl.getId(), paramConversationEntityImpl.getConversationType());
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 268435456);
    return a(str2, str1, 2130838517, str1, System.currentTimeMillis(), localPendingIntent).setAutoCancel(true);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence, long paramLong, b paramb, String paramString, Intent paramIntent)
  {
    a("CreateJoinedContactNotification: contentText = " + paramCharSequence + " contentTitle = " + paramb.a() + " ticker = " + paramb.a() + " photoContactUri = " + paramb.b());
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, paramIntent, 268435456);
    return a(paramCharSequence, paramb.a(), 2130838348, paramCharSequence, paramLong, localPendingIntent);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, int paramInt, Intent paramIntent)
  {
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, paramIntent, 268435456);
    return a(paramCharSequence1, paramCharSequence2, 2130838517, paramCharSequence2, System.currentTimeMillis(), localPendingIntent).setAutoCancel(true);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, long paramLong, Intent paramIntent, int paramInt2)
  {
    return a(paramCharSequence2, paramCharSequence1, 2130838516, paramCharSequence3, paramLong, a(paramIntent, paramInt2));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong, String paramString, List<ParticipantInfoEntityImpl> paramList, Intent paramIntent, int paramInt)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt);
    return a(paramCharSequence2, paramCharSequence1, 2130838299, paramCharSequence3, System.currentTimeMillis(), localPendingIntent);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt);
    return a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, System.currentTimeMillis(), localPendingIntent).setAutoCancel(true);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt);
    CharSequence[] arrayOfCharSequence = a(paramConversationEntityImpl.getId(), paramCharSequence1, paramCharSequence3, paramParticipantInfoEntityImpl.getCommonContactName());
    return a(paramCharSequence2, arrayOfCharSequence[0], 2130838299, arrayOfCharSequence[1], System.currentTimeMillis(), localPendingIntent);
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Intent paramIntent, int paramInt)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt);
    return a(paramCharSequence2, paramCharSequence1, 2130838299, paramCharSequence3, System.currentTimeMillis(), localPendingIntent);
  }
  
  public NotificationCompat.Builder b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    PendingIntent localPendingIntent = a(paramIntent, paramInt);
    return a(paramCharSequence2, paramCharSequence1, 2130838299, paramCharSequence3, System.currentTimeMillis(), localPendingIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.a.a.h
 * JD-Core Version:    0.7.0.1
 */