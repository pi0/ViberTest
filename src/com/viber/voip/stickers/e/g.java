package com.viber.voip.stickers.e;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat.Builder;
import android.widget.RemoteViews;
import com.viber.voip.market.MarketActivity;

public class g
  implements a
{
  private Context a;
  private NotificationCompat.Builder b;
  
  public g(Context paramContext)
  {
    this.b = new NotificationCompat.Builder(paramContext);
    this.a = paramContext;
  }
  
  public Notification a(int paramInt1, String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    RemoteViews localRemoteViews = new RemoteViews(this.a.getPackageName(), 2130903336);
    if (paramBitmap != null) {
      localRemoteViews.setImageViewBitmap(2131166135, paramBitmap);
    }
    for (;;)
    {
      localRemoteViews.setTextViewText(2131166080, paramString1);
      localRemoteViews.setTextViewText(2131165981, paramString2);
      localRemoteViews.setTextViewText(2131166137, paramString3);
      localRemoteViews.setProgressBar(2131166136, 100, paramInt2, paramBoolean2);
      if (!paramBoolean1) {
        localRemoteViews.setViewVisibility(2131166136, 4);
      }
      Notification localNotification = this.b.setTicker(paramString1).setSmallIcon(2130838180).setContentIntent(PendingIntent.getActivity(this.a, paramInt1, MarketActivity.b(paramInt1), 0)).build();
      localNotification.contentView = localRemoteViews;
      return localNotification;
      localRemoteViews.setImageViewResource(2131166135, 2130838180);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.e.g
 * JD-Core Version:    0.7.0.1
 */