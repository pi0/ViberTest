package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplBase
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    Notification localNotification = paramBuilder.mNotification;
    localNotification.setLatestEventInfo(paramBuilder.mContext, paramBuilder.mContentTitle, paramBuilder.mContentText, paramBuilder.mContentIntent);
    if (paramBuilder.mPriority > 0) {
      localNotification.flags = (0x80 | localNotification.flags);
    }
    return localNotification;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplBase
 * JD-Core Version:    0.7.0.1
 */