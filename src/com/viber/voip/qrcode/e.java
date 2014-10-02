package com.viber.voip.qrcode;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.view.SurfaceHolder;
import com.viber.dexshared.ZXing.Factory;
import com.viber.dexshared.ZXing.PlanarYUVLuminanceSource;
import com.viber.voip.ViberEnv;
import java.io.IOException;

public final class e
{
  private static final String a = e.class.getSimpleName();
  private final Context b;
  private final d c;
  private Camera d;
  private a e;
  private Rect f;
  private Rect g;
  private boolean h;
  private boolean i;
  private int j = -1;
  private int k;
  private int l;
  private final l m;
  
  public e(Context paramContext)
  {
    this.b = paramContext;
    this.c = new d(paramContext);
    this.m = new l(this.c);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int n = paramInt1 * 5 / 8;
    if (n < paramInt2) {
      return paramInt2;
    }
    if (n > paramInt3) {
      return paramInt3;
    }
    return n;
  }
  
  public ZXing.PlanarYUVLuminanceSource a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Rect localRect = f();
    if (localRect == null) {
      return null;
    }
    return ViberEnv.getZXingFactory().newPlanarYUVLuminanceSource(paramArrayOfByte, paramInt1, paramInt2, localRect.left, localRect.top, localRect.width(), localRect.height(), false);
  }
  
  /* Error */
  public void a(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 92	com/viber/voip/qrcode/e:h	Z
    //   6: ifeq +95 -> 101
    //   9: aload_0
    //   10: getfield 50	com/viber/voip/qrcode/e:c	Lcom/viber/voip/qrcode/d;
    //   13: invokevirtual 95	com/viber/voip/qrcode/d:b	()Landroid/graphics/Point;
    //   16: astore 4
    //   18: iload_1
    //   19: aload 4
    //   21: getfield 100	android/graphics/Point:x	I
    //   24: if_icmple +9 -> 33
    //   27: aload 4
    //   29: getfield 100	android/graphics/Point:x	I
    //   32: istore_1
    //   33: iload_2
    //   34: aload 4
    //   36: getfield 103	android/graphics/Point:y	I
    //   39: if_icmple +9 -> 48
    //   42: aload 4
    //   44: getfield 103	android/graphics/Point:y	I
    //   47: istore_2
    //   48: aload 4
    //   50: getfield 100	android/graphics/Point:x	I
    //   53: iload_1
    //   54: isub
    //   55: iconst_2
    //   56: idiv
    //   57: istore 5
    //   59: aload 4
    //   61: getfield 103	android/graphics/Point:y	I
    //   64: iload_2
    //   65: isub
    //   66: iconst_2
    //   67: idiv
    //   68: istore 6
    //   70: aload_0
    //   71: new 70	android/graphics/Rect
    //   74: dup
    //   75: iload 5
    //   77: iload 6
    //   79: iload 5
    //   81: iload_1
    //   82: iadd
    //   83: iload 6
    //   85: iload_2
    //   86: iadd
    //   87: invokespecial 106	android/graphics/Rect:<init>	(IIII)V
    //   90: putfield 108	com/viber/voip/qrcode/e:f	Landroid/graphics/Rect;
    //   93: aload_0
    //   94: aconst_null
    //   95: putfield 110	com/viber/voip/qrcode/e:g	Landroid/graphics/Rect;
    //   98: aload_0
    //   99: monitorexit
    //   100: return
    //   101: aload_0
    //   102: iload_1
    //   103: putfield 112	com/viber/voip/qrcode/e:k	I
    //   106: aload_0
    //   107: iload_2
    //   108: putfield 114	com/viber/voip/qrcode/e:l	I
    //   111: goto -13 -> 98
    //   114: astore_3
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_3
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	e
    //   0	119	1	paramInt1	int
    //   0	119	2	paramInt2	int
    //   114	4	3	localObject	Object
    //   16	44	4	localPoint	android.graphics.Point
    //   57	26	5	n	int
    //   68	19	6	i1	int
    // Exception table:
    //   from	to	target	type
    //   2	33	114	finally
    //   33	48	114	finally
    //   48	98	114	finally
    //   101	111	114	finally
  }
  
  public void a(Handler paramHandler, int paramInt)
  {
    try
    {
      Camera localCamera = this.d;
      if ((localCamera != null) && (this.i))
      {
        this.m.a(paramHandler, paramInt);
        localCamera.setOneShotPreviewCallback(this.m);
      }
      return;
    }
    finally {}
  }
  
  public void a(SurfaceHolder paramSurfaceHolder)
  {
    Camera localCamera1;
    for (;;)
    {
      try
      {
        localCamera1 = this.d;
        if (localCamera1 != null) {
          break label57;
        }
        if (this.j >= 0)
        {
          localCamera1 = com.viber.voip.qrcode.a.a.a(this.j);
          if (localCamera1 != null) {
            break;
          }
          throw new IOException("Unable to open camera.");
        }
      }
      finally {}
      localCamera1 = com.viber.voip.qrcode.a.a.a();
    }
    this.d = localCamera1;
    label57:
    Camera localCamera2 = localCamera1;
    if (this.j >= 0) {
      this.c.a(this.j, localCamera2);
    }
    for (;;)
    {
      localCamera2.setPreviewDisplay(paramSurfaceHolder);
      if (!this.h)
      {
        this.h = true;
        this.c.a(localCamera2);
        if ((this.k > 0) && (this.l > 0))
        {
          a(this.k, this.l);
          this.k = 0;
          this.l = 0;
        }
      }
      Camera.Parameters localParameters1 = localCamera2.getParameters();
      String str;
      if (localParameters1 == null) {
        str = null;
      }
      try
      {
        for (;;)
        {
          this.c.a(localCamera2, false);
          return;
          this.c.a(com.viber.voip.qrcode.a.a.b(), localCamera2);
          break;
          str = localParameters1.flatten();
        }
      }
      catch (RuntimeException localRuntimeException1)
      {
        for (;;)
        {
          if (str != null)
          {
            Camera.Parameters localParameters2 = localCamera2.getParameters();
            localParameters2.unflatten(str);
            try
            {
              localCamera2.setParameters(localParameters2);
              this.c.a(localCamera2, true);
            }
            catch (RuntimeException localRuntimeException2) {}
          }
        }
      }
    }
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 117	com/viber/voip/qrcode/e:d	Landroid/hardware/Camera;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_3
    //   19: goto -6 -> 13
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	e
    //   22	4	1	localObject	Object
    //   6	2	2	localCamera	Camera
    //   12	7	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public void b()
  {
    try
    {
      if (this.d != null)
      {
        this.d.release();
        this.d = null;
        this.f = null;
        this.g = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void c()
  {
    try
    {
      Camera localCamera = this.d;
      if ((localCamera != null) && (!this.i))
      {
        localCamera.startPreview();
        this.i = true;
        this.e = new a(this.b, this.d);
      }
      return;
    }
    finally {}
  }
  
  public void d()
  {
    try
    {
      if (this.e != null)
      {
        this.e.b();
        this.e = null;
      }
      if ((this.d != null) && (this.i))
      {
        this.d.stopPreview();
        this.m.a(null, 0);
        this.i = false;
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public Rect e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 108	com/viber/voip/qrcode/e:f	Landroid/graphics/Rect;
    //   6: ifnonnull +115 -> 121
    //   9: aload_0
    //   10: getfield 117	com/viber/voip/qrcode/e:d	Landroid/hardware/Camera;
    //   13: astore_3
    //   14: aconst_null
    //   15: astore_2
    //   16: aload_3
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_2
    //   23: areturn
    //   24: aload_0
    //   25: getfield 50	com/viber/voip/qrcode/e:c	Lcom/viber/voip/qrcode/d;
    //   28: invokevirtual 95	com/viber/voip/qrcode/d:b	()Landroid/graphics/Point;
    //   31: astore 4
    //   33: aconst_null
    //   34: astore_2
    //   35: aload 4
    //   37: ifnull -17 -> 20
    //   40: aload 4
    //   42: getfield 100	android/graphics/Point:x	I
    //   45: sipush 240
    //   48: sipush 1200
    //   51: invokestatic 198	com/viber/voip/qrcode/e:a	(III)I
    //   54: istore 5
    //   56: aload 4
    //   58: getfield 103	android/graphics/Point:y	I
    //   61: sipush 240
    //   64: sipush 675
    //   67: invokestatic 198	com/viber/voip/qrcode/e:a	(III)I
    //   70: istore 6
    //   72: aload 4
    //   74: getfield 100	android/graphics/Point:x	I
    //   77: iload 5
    //   79: isub
    //   80: iconst_2
    //   81: idiv
    //   82: istore 7
    //   84: aload 4
    //   86: getfield 103	android/graphics/Point:y	I
    //   89: iload 6
    //   91: isub
    //   92: iconst_2
    //   93: idiv
    //   94: istore 8
    //   96: aload_0
    //   97: new 70	android/graphics/Rect
    //   100: dup
    //   101: iload 7
    //   103: iload 8
    //   105: iload 5
    //   107: iload 7
    //   109: iadd
    //   110: iload 6
    //   112: iload 8
    //   114: iadd
    //   115: invokespecial 106	android/graphics/Rect:<init>	(IIII)V
    //   118: putfield 108	com/viber/voip/qrcode/e:f	Landroid/graphics/Rect;
    //   121: aload_0
    //   122: getfield 108	com/viber/voip/qrcode/e:f	Landroid/graphics/Rect;
    //   125: astore_2
    //   126: goto -106 -> 20
    //   129: astore_1
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	e
    //   129	4	1	localObject	Object
    //   15	111	2	localRect	Rect
    //   13	4	3	localCamera	Camera
    //   31	54	4	localPoint	android.graphics.Point
    //   54	56	5	n	int
    //   70	45	6	i1	int
    //   82	28	7	i2	int
    //   94	21	8	i3	int
    // Exception table:
    //   from	to	target	type
    //   2	14	129	finally
    //   24	33	129	finally
    //   40	121	129	finally
    //   121	126	129	finally
  }
  
  /* Error */
  public Rect f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 110	com/viber/voip/qrcode/e:g	Landroid/graphics/Rect;
    //   6: ifnonnull +162 -> 168
    //   9: aload_0
    //   10: invokevirtual 200	com/viber/voip/qrcode/e:e	()Landroid/graphics/Rect;
    //   13: astore_3
    //   14: aconst_null
    //   15: astore_2
    //   16: aload_3
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_2
    //   23: areturn
    //   24: new 70	android/graphics/Rect
    //   27: dup
    //   28: aload_3
    //   29: invokespecial 203	android/graphics/Rect:<init>	(Landroid/graphics/Rect;)V
    //   32: astore 4
    //   34: aload_0
    //   35: getfield 50	com/viber/voip/qrcode/e:c	Lcom/viber/voip/qrcode/d;
    //   38: invokevirtual 205	com/viber/voip/qrcode/d:a	()Landroid/graphics/Point;
    //   41: astore 5
    //   43: aload_0
    //   44: getfield 50	com/viber/voip/qrcode/e:c	Lcom/viber/voip/qrcode/d;
    //   47: invokevirtual 95	com/viber/voip/qrcode/d:b	()Landroid/graphics/Point;
    //   50: astore 6
    //   52: aconst_null
    //   53: astore_2
    //   54: aload 5
    //   56: ifnull -36 -> 20
    //   59: aconst_null
    //   60: astore_2
    //   61: aload 6
    //   63: ifnull -43 -> 20
    //   66: aload 4
    //   68: aload_3
    //   69: getfield 76	android/graphics/Rect:top	I
    //   72: aload 5
    //   74: getfield 100	android/graphics/Point:x	I
    //   77: imul
    //   78: aload 6
    //   80: getfield 103	android/graphics/Point:y	I
    //   83: idiv
    //   84: putfield 73	android/graphics/Rect:left	I
    //   87: aload 4
    //   89: aload_3
    //   90: getfield 208	android/graphics/Rect:bottom	I
    //   93: aload 5
    //   95: getfield 100	android/graphics/Point:x	I
    //   98: imul
    //   99: aload 6
    //   101: getfield 103	android/graphics/Point:y	I
    //   104: idiv
    //   105: putfield 211	android/graphics/Rect:right	I
    //   108: aload 4
    //   110: aload 6
    //   112: getfield 100	android/graphics/Point:x	I
    //   115: aload_3
    //   116: getfield 211	android/graphics/Rect:right	I
    //   119: isub
    //   120: aload 5
    //   122: getfield 103	android/graphics/Point:y	I
    //   125: imul
    //   126: aload 6
    //   128: getfield 100	android/graphics/Point:x	I
    //   131: idiv
    //   132: putfield 76	android/graphics/Rect:top	I
    //   135: aload 4
    //   137: aload 6
    //   139: getfield 100	android/graphics/Point:x	I
    //   142: aload_3
    //   143: getfield 73	android/graphics/Rect:left	I
    //   146: isub
    //   147: aload 5
    //   149: getfield 103	android/graphics/Point:y	I
    //   152: imul
    //   153: aload 6
    //   155: getfield 100	android/graphics/Point:x	I
    //   158: idiv
    //   159: putfield 208	android/graphics/Rect:bottom	I
    //   162: aload_0
    //   163: aload 4
    //   165: putfield 110	com/viber/voip/qrcode/e:g	Landroid/graphics/Rect;
    //   168: aload_0
    //   169: getfield 110	com/viber/voip/qrcode/e:g	Landroid/graphics/Rect;
    //   172: astore_2
    //   173: goto -153 -> 20
    //   176: astore_1
    //   177: aload_0
    //   178: monitorexit
    //   179: aload_1
    //   180: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	e
    //   176	4	1	localObject	Object
    //   15	158	2	localRect1	Rect
    //   13	130	3	localRect2	Rect
    //   32	132	4	localRect3	Rect
    //   41	107	5	localPoint1	android.graphics.Point
    //   50	104	6	localPoint2	android.graphics.Point
    // Exception table:
    //   from	to	target	type
    //   2	14	176	finally
    //   24	52	176	finally
    //   66	168	176	finally
    //   168	173	176	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.e
 * JD-Core Version:    0.7.0.1
 */