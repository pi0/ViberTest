package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.dexshared.GMaps.Factory;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.adapters.g;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class d
{
  private j a;
  private i b;
  private GMaps.Factory c;
  private double d;
  private double e;
  
  public d(j paramj, i parami)
  {
    this.a = paramj;
    this.b = parami;
  }
  
  public static double a(int paramInt)
  {
    return paramInt / 1000000.0D;
  }
  
  public static int a()
  {
    int i = 51;
    if (ViberApplication.getInstance().getBaseContext() != null) {
      i = BitmapFactory.decodeResource(ViberApplication.getInstance().getBaseContext().getResources(), 2130837719).getHeight();
    }
    return i;
  }
  
  public static int a(double paramDouble)
  {
    return (int)Math.round(1000000.0D * paramDouble);
  }
  
  public static Bitmap a(Bitmap paramBitmap)
  {
    return a(paramBitmap, 100);
  }
  
  /* Error */
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    // Byte code:
    //   0: iload_1
    //   1: i2f
    //   2: invokestatic 72	com/viber/voip/messages/extras/image/h:a	(F)I
    //   5: istore_2
    //   6: aload_0
    //   7: ifnull +95 -> 102
    //   10: aload_0
    //   11: invokevirtual 54	android/graphics/Bitmap:getHeight	()I
    //   14: iload_2
    //   15: if_icmple +87 -> 102
    //   18: aload_0
    //   19: iconst_0
    //   20: iconst_0
    //   21: aload_0
    //   22: invokevirtual 75	android/graphics/Bitmap:getWidth	()I
    //   25: iload_2
    //   26: invokestatic 79	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    //   29: astore 5
    //   31: aload 5
    //   33: astore_3
    //   34: iconst_3
    //   35: ldc 81
    //   37: new 83	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   44: ldc 86
    //   46: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_0
    //   50: invokevirtual 54	android/graphics/Bitmap:getHeight	()I
    //   53: invokevirtual 93	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   56: ldc 95
    //   58: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_3
    //   62: invokevirtual 54	android/graphics/Bitmap:getHeight	()I
    //   65: invokevirtual 93	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   68: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 103	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   74: aload_3
    //   75: aload_0
    //   76: if_acmpeq +7 -> 83
    //   79: aload_0
    //   80: invokestatic 106	com/viber/voip/messages/extras/image/h:c	(Landroid/graphics/Bitmap;)V
    //   83: aload_3
    //   84: areturn
    //   85: astore 4
    //   87: aload_0
    //   88: astore_3
    //   89: aload 4
    //   91: invokevirtual 109	java/lang/Exception:printStackTrace	()V
    //   94: goto -20 -> 74
    //   97: astore 4
    //   99: goto -10 -> 89
    //   102: aload_0
    //   103: astore_3
    //   104: goto -30 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramBitmap	Bitmap
    //   0	107	1	paramInt	int
    //   5	21	2	i	int
    //   33	71	3	localBitmap1	Bitmap
    //   85	5	4	localException1	java.lang.Exception
    //   97	1	4	localException2	java.lang.Exception
    //   29	3	5	localBitmap2	Bitmap
    // Exception table:
    //   from	to	target	type
    //   18	31	85	java/lang/Exception
    //   34	74	97	java/lang/Exception
  }
  
  private static String a(double paramDouble1, double paramDouble2, int paramInt1, int paramInt2, int paramInt3)
  {
    String[] arrayOfString1 = { "<lat>", "<lng>", "<zoom>", "<width>", "<height>" };
    String[] arrayOfString2 = new String[5];
    arrayOfString2[0] = String.valueOf(paramDouble1);
    arrayOfString2[1] = String.valueOf(paramDouble2);
    arrayOfString2[2] = String.valueOf(paramInt1);
    arrayOfString2[3] = String.valueOf(paramInt2);
    arrayOfString2[4] = String.valueOf(paramInt3);
    return TextUtils.replace("http://maps.google.com/maps/api/staticmap?zoom=<zoom>&size=<width>x<height>&scale=<scale>&maptype=roadmap&sensor=true&center=<lat>,<lng>", arrayOfString1, arrayOfString2).toString();
  }
  
  public static String a(g paramg)
  {
    double d1 = a(paramg.f() / 10);
    double d2 = a(paramg.g() / 10);
    int i = com.viber.voip.messages.extras.image.h.a(100.0F) + a();
    return a(d1, d2, 16, com.viber.voip.messages.extras.image.h.a(200.0F), i);
  }
  
  public static String a(MessageEntityImpl paramMessageEntityImpl)
  {
    return a(paramMessageEntityImpl, com.viber.voip.messages.extras.image.h.a(200.0F), com.viber.voip.messages.extras.image.h.a(100.0F) + a());
  }
  
  public static String a(MessageEntityImpl paramMessageEntityImpl, int paramInt1, int paramInt2)
  {
    return a(a(paramMessageEntityImpl.getLat() / 10), a(paramMessageEntityImpl.getLng() / 10), 16, paramInt1, paramInt2);
  }
  
  public static String a(String paramString)
  {
    return TextUtils.replace("https://maps.googleapis.com/maps/api/geocode/json?address=<address>&sensor=true", new String[] { "<address>" }, new String[] { paramString }).toString();
  }
  
  private GMaps.Factory b()
  {
    try
    {
      if (this.c == null) {
        this.c = ViberEnv.getGMapsFactory();
      }
      GMaps.Factory localFactory = this.c;
      return localFactory;
    }
    finally {}
  }
  
  public static String b(double paramDouble1, double paramDouble2)
  {
    String[] arrayOfString1 = { "<lat>", "<lng>" };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = String.valueOf(paramDouble1);
    arrayOfString2[1] = String.valueOf(paramDouble2);
    return TextUtils.replace("https://maps.googleapis.com/maps/api/geocode/json?latlng=<lat>,<lng>&sensor=true", arrayOfString1, arrayOfString2).toString();
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, "Places", paramString);
  }
  
  public void a(double paramDouble1, double paramDouble2)
  {
    a(paramDouble1, paramDouble2, null);
  }
  
  public void a(double paramDouble1, double paramDouble2, i parami)
  {
    this.d = paramDouble1;
    this.e = paramDouble2;
    if (parami != null) {
      this.b = parami;
    }
    dc.a(dk.h).postAtFrontOfQueue(new f(this, paramDouble1, paramDouble2));
  }
  
  public void a(double paramDouble1, double paramDouble2, j paramj)
  {
    this.d = paramDouble1;
    this.e = paramDouble2;
    if (paramj != null) {
      this.a = paramj;
    }
    dc.a(dk.h).postAtFrontOfQueue(new h(this, paramDouble1, paramDouble2));
  }
  
  public void a(String paramString, j paramj)
  {
    if (paramj != null) {
      this.a = paramj;
    }
    dc.a(dk.h).postAtFrontOfQueue(new h(this, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.d
 * JD-Core Version:    0.7.0.1
 */