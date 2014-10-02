package com.viber.voip.g;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.v;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class h
  extends a
{
  private static final String a = h.class.getSimpleName();
  private PowerManager b = null;
  private PowerManager.WakeLock c = null;
  private PhoneControllerWrapper d;
  
  public h(Context paramContext)
  {
    super(paramContext);
    this.b = ((PowerManager)paramContext.getSystemService("power"));
    if (g())
    {
      this.c = this.b.newWakeLock(32, a);
      this.c.setReferenceCounted(false);
      this.d = b().getPhoneController(false);
      i locali = new i(this);
      this.d.getDelegatesManager().getDialerPhoneStateListener().registerDelegate(new DialerControllerDelegate.DialerPhoneState[] { locali });
    }
    a("WakeLock proximity helper created");
  }
  
  private boolean g()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 17)
      {
        int i = ((Integer)PowerManager.class.getDeclaredMethod("getSupportedWakeLockFlags", new Class[0]).invoke(this.b, new Object[0])).intValue();
        a("PowerManager supported flags: " + i);
        int j = ((Integer)PowerManager.class.getDeclaredField("PROXIMITY_SCREEN_OFF_WAKE_LOCK").get(null)).intValue();
        if (((i & j) != 0) && (32 == j))
        {
          a("Proximity wake lock is available");
          return true;
        }
      }
      else
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = Integer.TYPE;
        arrayOfClass[1] = String.class;
        Method localMethod = PowerManager.class.getDeclaredMethod("validateWakeLockParameters", arrayOfClass);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(32);
        arrayOfObject[1] = a;
        localMethod.invoke(null, arrayOfObject);
        a("Proximity wake lock is available");
        return true;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  /* Error */
  public void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 125	java/lang/StringBuilder
    //   4: dup
    //   5: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   8: ldc 171
    //   10: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: iload_1
    //   14: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   17: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokevirtual 95	com/viber/voip/g/h:a	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 30	com/viber/voip/g/h:c	Landroid/os/PowerManager$WakeLock;
    //   27: ifnull +131 -> 158
    //   30: aload_0
    //   31: getfield 30	com/viber/voip/g/h:c	Landroid/os/PowerManager$WakeLock;
    //   34: astore_2
    //   35: aload_2
    //   36: monitorenter
    //   37: iload_1
    //   38: tableswitch	default:+34 -> 72, 0:+81->119, 1:+34->72, 2:+34->72, 3:+37->75, 4:+37->75
    //   73: monitorexit
    //   74: return
    //   75: aload_0
    //   76: getfield 30	com/viber/voip/g/h:c	Landroid/os/PowerManager$WakeLock;
    //   79: invokevirtual 174	android/os/PowerManager$WakeLock:isHeld	()Z
    //   82: ifne +28 -> 110
    //   85: aload_0
    //   86: ldc 176
    //   88: invokevirtual 95	com/viber/voip/g/h:a	(Ljava/lang/String;)V
    //   91: aload_0
    //   92: invokevirtual 179	com/viber/voip/g/h:e	()V
    //   95: aload_0
    //   96: invokevirtual 182	com/viber/voip/g/h:c	()Lcom/viber/voip/phone/v;
    //   99: invokevirtual 186	com/viber/voip/phone/v:b	()V
    //   102: goto -30 -> 72
    //   105: astore_3
    //   106: aload_2
    //   107: monitorexit
    //   108: aload_3
    //   109: athrow
    //   110: aload_0
    //   111: ldc 188
    //   113: invokevirtual 95	com/viber/voip/g/h:a	(Ljava/lang/String;)V
    //   116: goto -44 -> 72
    //   119: aload_0
    //   120: getfield 30	com/viber/voip/g/h:c	Landroid/os/PowerManager$WakeLock;
    //   123: invokevirtual 174	android/os/PowerManager$WakeLock:isHeld	()Z
    //   126: ifeq +23 -> 149
    //   129: aload_0
    //   130: ldc 190
    //   132: invokevirtual 95	com/viber/voip/g/h:a	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: invokevirtual 193	com/viber/voip/g/h:f	()V
    //   139: aload_0
    //   140: invokevirtual 182	com/viber/voip/g/h:c	()Lcom/viber/voip/phone/v;
    //   143: invokevirtual 195	com/viber/voip/phone/v:c	()V
    //   146: goto -74 -> 72
    //   149: aload_0
    //   150: ldc 197
    //   152: invokevirtual 95	com/viber/voip/g/h:a	(Ljava/lang/String;)V
    //   155: goto -83 -> 72
    //   158: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	this	h
    //   0	159	1	paramInt	int
    //   34	73	2	localWakeLock	PowerManager.WakeLock
    //   105	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   72	74	105	finally
    //   75	102	105	finally
    //   106	108	105	finally
    //   110	116	105	finally
    //   119	146	105	finally
    //   149	155	105	finally
  }
  
  public void a(boolean paramBoolean)
  {
    if (this.c != null) {
      for (;;)
      {
        boolean bool;
        synchronized (this.c)
        {
          int i = this.d.getDialerController().getPhoneState();
          if ((4 != i) && (3 != i))
          {
            a("setEnabled: not in call");
            return;
          }
          bool = this.c.isHeld();
          if ((paramBoolean) && (!bool))
          {
            a("setEnabled: acquiring...");
            e();
            c().b();
            return;
          }
        }
        if ((!paramBoolean) && (bool))
        {
          a("setEnabled: releasing...");
          f();
          c().c();
        }
        else
        {
          a("setEnabled: nothing changed");
        }
      }
    }
  }
  
  public void e()
  {
    this.c.acquire();
  }
  
  public void f()
  {
    int i = 1;
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = PowerManager.WakeLock.class.getDeclaredMethod("release", arrayOfClass);
      PowerManager.WakeLock localWakeLock = this.c;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      localMethod.invoke(localWakeLock, arrayOfObject);
      if (i == 0) {
        this.c.release();
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        i = 0;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.g.h
 * JD-Core Version:    0.7.0.1
 */