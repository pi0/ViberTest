package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplHoneycomb
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    return NotificationCompatHoneycomb.add(paramBuilder.mContext, paramBuilder.mNotification, paramBuilder.mContentTitle, paramBuilder.mContentText, paramBuilder.mContentInfo, paramBuilder.mTickerView, paramBuilder.mNumber, paramBuilder.mContentIntent, paramBuilder.mFullScreenIntent, paramBuilder.mLargeIcon);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplHoneycomb
 * JD-Core Version:    0.7.0.1
 */