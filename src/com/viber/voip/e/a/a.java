package com.viber.voip.e.a;

import android.app.Notification;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat.Builder;
import com.viber.voip.contacts.b.b;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import java.util.List;

public abstract interface a
{
  public abstract Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, Intent paramIntent, int paramInt2);
  
  public abstract NotificationCompat.Builder a();
  
  public abstract NotificationCompat.Builder a(ConversationEntityImpl paramConversationEntityImpl, Bitmap paramBitmap, String paramString);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence, int paramInt);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence, long paramLong, b paramb, String paramString, Intent paramIntent);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, Intent paramIntent);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, boolean paramBoolean);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, int paramInt, Intent paramIntent);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, long paramLong, Intent paramIntent, int paramInt2);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong, String paramString, List<ParticipantInfoEntityImpl> paramList, Intent paramIntent, int paramInt);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl);
  
  public abstract NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Intent paramIntent, int paramInt);
  
  public abstract NotificationCompat.Builder b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a
 * JD-Core Version:    0.7.0.1
 */