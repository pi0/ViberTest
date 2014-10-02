package com.viber.voip.messages.controller;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.phone.v;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class cp
{
  private Set<Long> a = new HashSet();
  private Map<Long, PendingIntent> b = new HashMap();
  private PendingIntent c;
  private Context d;
  
  public cp(Context paramContext)
  {
    this.d = paramContext;
  }
  
  private void a(String paramString) {}
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2)
  {
    Intent localIntent = new Intent(paramString1, Uri.fromParts("smsto", paramString4, null));
    localIntent.setFlags(268435456);
    localIntent.putExtra("sms_body", paramString2);
    localIntent.putExtra("message_id", paramLong1);
    localIntent.putExtra("message_thread_id", paramLong2);
    localIntent.putExtra("message_name", paramString3);
    this.d.startActivity(localIntent);
  }
  
  public void a(long paramLong)
  {
    this.a.remove(Long.valueOf(paramLong));
    this.b.remove(Long.valueOf(paramLong));
  }
  
  public void a(String paramString1, String paramString2, MessageEntityImpl paramMessageEntityImpl)
  {
    ((ViberApplication)this.d.getApplicationContext()).getPhoneApp().a().a(paramMessageEntityImpl);
    a(paramString1, paramMessageEntityImpl.getBody(), paramString2, paramMessageEntityImpl.getRecipientNumber(), paramMessageEntityImpl.getId(), paramMessageEntityImpl.getConversationId());
  }
  
  public boolean a(MessageEntityImpl paramMessageEntityImpl)
  {
    if (this.a.contains(Long.valueOf(paramMessageEntityImpl.getId())))
    {
      a("setSentTimeoutAlarm: alarm already set for: " + paramMessageEntityImpl);
      return false;
    }
    this.a.add(Long.valueOf(paramMessageEntityImpl.getId()));
    long l = 600000L + System.currentTimeMillis();
    a("SentTimeout id = " + paramMessageEntityImpl.getId());
    try
    {
      Intent localIntent = new Intent("com.viber.voip.action.SEND_TIMEOUT");
      localIntent.putExtra("message_id", paramMessageEntityImpl.getId());
      localIntent.putExtra("message_number", paramMessageEntityImpl.getRecipientNumber());
      localIntent.putExtra("message_text", paramMessageEntityImpl.getBody());
      localIntent.putExtra("timeout_type", 1);
      this.c = PendingIntent.getBroadcast(this.d, (int)l, localIntent, 0);
      ((AlarmManager)this.d.getSystemService("alarm")).set(0, l, this.c);
      this.b.put(Long.valueOf(paramMessageEntityImpl.getId()), this.c);
      a("SentTimeout Daemon sleep ZZZzzzzZ --> :" + l);
      return true;
    }
    catch (Exception localException)
    {
      a("SentTimeout Daemon sleep error (!) : " + localException);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cp
 * JD-Core Version:    0.7.0.1
 */