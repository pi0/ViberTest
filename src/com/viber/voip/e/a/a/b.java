package com.viber.voip.e.a.a;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.InboxStyle;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;

abstract class b
{
  private static final int d = h.a(60.0F);
  private static final int e = d;
  protected Context a;
  protected int b = 0;
  protected int c = 0;
  private c f;
  
  protected b(Context paramContext)
  {
    this.a = paramContext;
    a();
  }
  
  @TargetApi(11)
  private void a()
  {
    try
    {
      this.b = ((int)this.a.getResources().getDimension(17104902));
      if (this.b > e) {
        this.b = e;
      }
      this.c = ((int)this.a.getResources().getDimension(17104901));
      if (this.c > d) {
        this.c = d;
      }
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;)
      {
        a("LargeIconSize Resources.NotFoundException: using default icon size");
        this.c = d;
        this.b = e;
      }
    }
    a("LargeIconSize width = " + this.c + " height = " + this.b);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "BaseNotificationFactory", paramString);
  }
  
  protected Bitmap a(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
    {
      int i = Math.min(this.c, this.b);
      Paint localPaint = new Paint(1);
      Path localPath = new Path();
      h.a(i, i, localPath);
      Bitmap localBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      localCanvas.drawPath(localPath, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, null, new Rect(0, 0, i, i), localPaint);
      return localBitmap;
    }
    return null;
  }
  
  protected NotificationCompat.BigTextStyle a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    NotificationCompat.BigTextStyle localBigTextStyle = new NotificationCompat.BigTextStyle();
    localBigTextStyle.bigText(paramCharSequence2);
    if (paramCharSequence1 != null) {
      localBigTextStyle.setSummaryText(paramCharSequence1);
    }
    return localBigTextStyle;
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((this.f == null) || ((this.f != null) && (this.f.a())))
    {
      a("mBuilder is null - " + this.f);
      if (this.f != null) {
        a("mBuilder.hasActions() - " + this.f.a());
      }
      this.f = new c(this.a);
    }
    return this.f.setContentTitle(paramCharSequence2).setContentText(paramCharSequence1).setSmallIcon(paramInt).setWhen(0L).setTicker("").setContentInfo("").setLights(-8564322, 2000, 6000).setDefaults(0).setOngoing(false).setAutoCancel(false).setStyle(null).setLargeIcon(null);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, long paramLong, PendingIntent paramPendingIntent)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramPendingIntent).setWhen(paramLong);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, PendingIntent paramPendingIntent)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt).setContentIntent(paramPendingIntent);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, long paramLong, PendingIntent paramPendingIntent)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramLong, paramPendingIntent).setTicker(paramCharSequence3);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, CharSequence paramCharSequence4, long paramLong, PendingIntent paramPendingIntent)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramCharSequence3, paramLong, paramPendingIntent).setContentInfo(paramCharSequence4);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, CharSequence paramCharSequence4, long paramLong, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramCharSequence3, paramCharSequence4, paramLong, paramPendingIntent).setLargeIcon(a(paramBitmap));
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, CharSequence paramCharSequence4, CharSequence paramCharSequence5, long paramLong, Bitmap paramBitmap1, Bitmap paramBitmap2, PendingIntent paramPendingIntent)
  {
    NotificationCompat.BigPictureStyle localBigPictureStyle = new NotificationCompat.BigPictureStyle();
    localBigPictureStyle.bigPicture(paramBitmap2);
    if (paramCharSequence5 != null) {
      localBigPictureStyle.setSummaryText(paramCharSequence5);
    }
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramCharSequence3, paramCharSequence4, paramLong, paramBitmap1, paramPendingIntent).setStyle(localBigPictureStyle);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, CharSequence paramCharSequence4, CharSequence paramCharSequence5, long paramLong, Bitmap paramBitmap, CharSequence paramCharSequence6, PendingIntent paramPendingIntent)
  {
    NotificationCompat.BigTextStyle localBigTextStyle = new NotificationCompat.BigTextStyle();
    localBigTextStyle.bigText(paramCharSequence6);
    if (paramCharSequence5 != null) {
      localBigTextStyle.setSummaryText(paramCharSequence5);
    }
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramCharSequence3, paramCharSequence4, paramLong, paramBitmap, paramPendingIntent).setStyle(localBigTextStyle);
  }
  
  protected NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, CharSequence paramCharSequence3, CharSequence paramCharSequence4, CharSequence paramCharSequence5, long paramLong, Bitmap paramBitmap, String[] paramArrayOfString, PendingIntent paramPendingIntent)
  {
    NotificationCompat.InboxStyle localInboxStyle = new NotificationCompat.InboxStyle();
    for (int i = 0; i < paramArrayOfString.length; i++) {
      localInboxStyle.addLine(paramArrayOfString[i]);
    }
    if (paramCharSequence5 != null) {
      localInboxStyle.setSummaryText(paramCharSequence5);
    }
    return a(paramCharSequence1, paramCharSequence2, paramInt, paramCharSequence3, paramCharSequence4, paramLong, paramBitmap, paramPendingIntent).setStyle(localInboxStyle);
  }
  
  protected NotificationCompat.InboxStyle a(CharSequence paramCharSequence, String[] paramArrayOfString)
  {
    NotificationCompat.InboxStyle localInboxStyle = new NotificationCompat.InboxStyle();
    for (int i = 0; i < paramArrayOfString.length; i++) {
      localInboxStyle.addLine(paramArrayOfString[i]);
    }
    if (paramCharSequence != null) {
      localInboxStyle.setSummaryText(paramCharSequence);
    }
    return localInboxStyle;
  }
  
  protected NotificationCompat.Builder b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, boolean paramBoolean)
  {
    return a(paramCharSequence1, paramCharSequence2, paramInt).setOngoing(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a.b
 * JD-Core Version:    0.7.0.1
 */