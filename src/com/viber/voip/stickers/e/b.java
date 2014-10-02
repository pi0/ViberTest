package com.viber.voip.stickers.e;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat.Builder;
import com.viber.voip.market.MarketActivity;

public class b
  implements a
{
  private NotificationCompat.Builder a;
  private Context b;
  
  public b(Context paramContext)
  {
    this.a = new NotificationCompat.Builder(paramContext);
    this.b = paramContext;
  }
  
  public Notification a(int paramInt1, String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    this.a.setContentTitle(paramString1).setContentText(paramString2).setTicker(paramString1).setSmallIcon(2130838180).setContentInfo(paramString3).setLargeIcon(paramBitmap).setContentIntent(PendingIntent.getActivity(this.b, paramInt1, MarketActivity.b(paramInt1), 0));
    if (paramBoolean1) {
      this.a.setProgress(100, paramInt2, paramBoolean2);
    }
    for (;;)
    {
      return this.a.build();
      this.a.setProgress(0, 0, false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.e.b
 * JD-Core Version:    0.7.0.1
 */