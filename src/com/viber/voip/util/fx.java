package com.viber.voip.util;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.viber.service.DelayedRestartReceiver;
import java.util.Calendar;

public class fx
{
  public static void a(Context paramContext, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(13, paramInt);
    Intent localIntent = new Intent(paramContext.getApplicationContext(), DelayedRestartReceiver.class);
    localIntent.putExtra("restart_reason", "crash!");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext.getApplicationContext(), 192837, localIntent, 134217728);
    ((AlarmManager)paramContext.getSystemService("alarm")).set(0, localCalendar.getTimeInMillis(), localPendingIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fx
 * JD-Core Version:    0.7.0.1
 */