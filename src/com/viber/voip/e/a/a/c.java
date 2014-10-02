package com.viber.voip.e.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.support.v4.app.NotificationCompat.Builder;

public class c
  extends NotificationCompat.Builder
{
  private boolean a = false;
  
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean a()
  {
    return this.a;
  }
  
  public NotificationCompat.Builder addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this.a = true;
    return super.addAction(paramInt, paramCharSequence, paramPendingIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a.c
 * JD-Core Version:    0.7.0.1
 */