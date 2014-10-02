package com.viber.voip.stickers.e;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;

public class h
{
  private NotificationManager a;
  private Context b;
  private a c;
  
  public h(Context paramContext)
  {
    this.b = paramContext;
    this.a = ((NotificationManager)paramContext.getSystemService("notification"));
    if (Build.VERSION.SDK_INT < 11) {}
    for (Object localObject = new g(this.b);; localObject = new b(this.b))
    {
      this.c = ((a)localObject);
      return;
    }
  }
  
  public void a(int paramInt)
  {
    this.a.cancel(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, String paramString, Bitmap paramBitmap)
  {
    String str1 = paramInt2 + "%";
    String str2 = this.b.getString(2131494386);
    Notification localNotification = this.c.a(paramInt1, paramString, str2, str1, paramBitmap, true, paramInt2, false);
    localNotification.flags = 32;
    this.a.notify(paramInt1, localNotification);
  }
  
  public void a(int paramInt, String paramString)
  {
    String str = this.b.getString(2131494386);
    Notification localNotification = this.c.a(paramInt, paramString, str, "", null, true, 0, true);
    localNotification.flags = 32;
    this.a.notify(paramInt, localNotification);
  }
  
  public void a(int paramInt, String paramString, Bitmap paramBitmap)
  {
    String str = this.b.getString(2131494388);
    Notification localNotification = this.c.a(paramInt, paramString, str, "", paramBitmap, false, 0, true);
    localNotification.flags = 16;
    this.a.cancel(paramInt);
    this.a.notify(paramInt, localNotification);
  }
  
  public void b(int paramInt, String paramString, Bitmap paramBitmap)
  {
    String str = this.b.getString(2131494387);
    Notification localNotification = this.c.a(paramInt, paramString, str, "", paramBitmap, false, 0, true);
    localNotification.flags = 16;
    this.a.cancel(paramInt);
    this.a.notify(paramInt, localNotification);
  }
  
  public void c(int paramInt, String paramString, Bitmap paramBitmap)
  {
    String str = this.b.getString(2131494385);
    Notification localNotification = this.c.a(paramInt, paramString, str, "", paramBitmap, true, 0, true);
    localNotification.flags = 32;
    this.a.notify(paramInt, localNotification);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.e.h
 * JD-Core Version:    0.7.0.1
 */