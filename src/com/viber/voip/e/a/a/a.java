package com.viber.voip.e.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat.Builder;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;

public class a
{
  private Context a;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private Intent a(long paramLong1, long paramLong2, int paramInt, long paramLong3, long paramLong4, String paramString1, String paramString2, Uri paramUri)
  {
    Intent localIntent = j.a(paramLong1, paramLong2, paramString1, paramInt, paramLong3, paramLong4, paramString2, true);
    if (paramUri != null) {
      localIntent.putExtra("photo_uri", paramUri.toString());
    }
    return localIntent;
  }
  
  private Intent a(long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri)
  {
    return a(-1L, -1L, 0, paramLong1, paramLong2, paramString1, paramString2, paramUri);
  }
  
  private Intent a(long paramLong, String paramString)
  {
    Intent localIntent = a(paramString);
    localIntent.putExtra("notif_extra_call", paramLong);
    return localIntent;
  }
  
  private Intent a(String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramString, null));
    localIntent.putExtra("extra_was_viber", true);
    return localIntent;
  }
  
  public NotificationCompat.Builder a(NotificationCompat.Builder paramBuilder, long paramLong1, long paramLong2, int paramInt, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, Bundle paramBundle)
  {
    long l1 = paramParticipantInfoEntityImpl.getContactId();
    long l2 = paramParticipantInfoEntityImpl.getNativeContactId();
    String str1 = paramParticipantInfoEntityImpl.getNumber();
    String str2 = paramParticipantInfoEntityImpl.getDispalyName();
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      Intent localIntent = a(paramLong1, paramLong2, paramInt, l1, l2, str1, str2, paramParticipantInfoEntityImpl.getCommonContactImage(bool));
      if (paramBundle != null) {
        localIntent.putExtras(paramBundle);
      }
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 268435456);
      paramBuilder.addAction(2130838280, this.a.getString(2131493700), localPendingIntent);
      return paramBuilder;
    }
  }
  
  public NotificationCompat.Builder a(NotificationCompat.Builder paramBuilder, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri)
  {
    return a(paramBuilder, paramLong1, paramLong2, paramString1, paramString2, paramUri, null);
  }
  
  public NotificationCompat.Builder a(NotificationCompat.Builder paramBuilder, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, Bundle paramBundle)
  {
    Intent localIntent = a(paramLong1, paramLong2, paramString1, paramString2, paramUri);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 268435456);
    paramBuilder.addAction(2130838279, this.a.getString(2131493630), localPendingIntent);
    return paramBuilder;
  }
  
  public NotificationCompat.Builder a(NotificationCompat.Builder paramBuilder, long paramLong, String paramString)
  {
    Intent localIntent = a(paramLong, paramString);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 268435456);
    paramBuilder.addAction(2130838278, this.a.getString(2131493699), localPendingIntent);
    return paramBuilder;
  }
  
  public NotificationCompat.Builder a(NotificationCompat.Builder paramBuilder, Intent paramIntent)
  {
    paramIntent.putExtra("extra_play", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, paramIntent, 268435456);
    paramBuilder.addAction(2130838280, this.a.getString(2131493700), localPendingIntent);
    return paramBuilder;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a.a
 * JD-Core Version:    0.7.0.1
 */