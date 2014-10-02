package com.viber.voip.qrcode;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.viber.dexshared.ZXing.DecodeHintType;
import com.viber.dexshared.ZXing.Factory;
import com.viber.dexshared.ZXing.MultiFormatReader;
import com.viber.dexshared.ZXing.PlanarYUVLuminanceSource;
import com.viber.voip.ViberEnv;
import java.io.ByteArrayOutputStream;
import java.util.Map;

final class f
  extends Handler
{
  private static final String a = f.class.getSimpleName();
  private ZXing.Factory b = ViberEnv.getZXingFactory();
  private final ScannerActivity c;
  private final ZXing.MultiFormatReader d = this.b.newMultiFormatReader();
  private boolean e = true;
  
  f(ScannerActivity paramScannerActivity, Map<ZXing.DecodeHintType, Object> paramMap)
  {
    this.d.setHints(paramMap);
    this.c = paramScannerActivity;
  }
  
  private static void a(ZXing.PlanarYUVLuminanceSource paramPlanarYUVLuminanceSource, Bundle paramBundle)
  {
    int[] arrayOfInt = paramPlanarYUVLuminanceSource.renderThumbnail();
    int i = paramPlanarYUVLuminanceSource.getThumbnailWidth();
    Bitmap localBitmap = Bitmap.createBitmap(arrayOfInt, 0, i, i, paramPlanarYUVLuminanceSource.getThumbnailHeight(), Bitmap.Config.ARGB_8888);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localBitmap.compress(Bitmap.CompressFormat.JPEG, 50, localByteArrayOutputStream);
    paramBundle.putByteArray("barcode_bitmap", localByteArrayOutputStream.toByteArray());
    paramBundle.putFloat("barcode_scaled_factor", i / paramPlanarYUVLuminanceSource.getWidth());
  }
  
  /* Error */
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 123	java/lang/System:currentTimeMillis	()J
    //   3: lstore 4
    //   5: aload_0
    //   6: getfield 54	com/viber/voip/qrcode/f:c	Lcom/viber/voip/qrcode/ScannerActivity;
    //   9: invokevirtual 128	com/viber/voip/qrcode/ScannerActivity:c	()Lcom/viber/voip/qrcode/e;
    //   12: aload_1
    //   13: iload_2
    //   14: iload_3
    //   15: invokevirtual 133	com/viber/voip/qrcode/e:a	([BII)Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;
    //   18: astore 6
    //   20: aconst_null
    //   21: astore 7
    //   23: aload 6
    //   25: ifnull +51 -> 76
    //   28: aload_0
    //   29: getfield 36	com/viber/voip/qrcode/f:b	Lcom/viber/dexshared/ZXing$Factory;
    //   32: aload_0
    //   33: getfield 36	com/viber/voip/qrcode/f:b	Lcom/viber/dexshared/ZXing$Factory;
    //   36: aload 6
    //   38: invokeinterface 137 2 0
    //   43: invokeinterface 141 2 0
    //   48: astore 14
    //   50: aload_0
    //   51: getfield 46	com/viber/voip/qrcode/f:d	Lcom/viber/dexshared/ZXing$MultiFormatReader;
    //   54: aload 14
    //   56: invokeinterface 145 2 0
    //   61: astore 17
    //   63: aload 17
    //   65: astore 7
    //   67: aload_0
    //   68: getfield 46	com/viber/voip/qrcode/f:d	Lcom/viber/dexshared/ZXing$MultiFormatReader;
    //   71: invokeinterface 148 1 0
    //   76: aload_0
    //   77: getfield 54	com/viber/voip/qrcode/f:c	Lcom/viber/voip/qrcode/ScannerActivity;
    //   80: invokevirtual 151	com/viber/voip/qrcode/ScannerActivity:b	()Landroid/os/Handler;
    //   83: astore 8
    //   85: aload 7
    //   87: ifnull +119 -> 206
    //   90: invokestatic 123	java/lang/System:currentTimeMillis	()J
    //   93: lstore 9
    //   95: getstatic 24	com/viber/voip/qrcode/f:a	Ljava/lang/String;
    //   98: new 153	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   105: ldc 156
    //   107: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: lload 9
    //   112: lload 4
    //   114: lsub
    //   115: invokevirtual 163	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   118: ldc 165
    //   120: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: invokestatic 173	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   129: pop
    //   130: aload 8
    //   132: ifnull +42 -> 174
    //   135: aload 8
    //   137: ldc 174
    //   139: aload 7
    //   141: invokestatic 180	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   144: astore 12
    //   146: new 101	android/os/Bundle
    //   149: dup
    //   150: invokespecial 181	android/os/Bundle:<init>	()V
    //   153: astore 13
    //   155: aload 6
    //   157: aload 13
    //   159: invokestatic 183	com/viber/voip/qrcode/f:a	(Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    //   162: aload 12
    //   164: aload 13
    //   166: invokevirtual 187	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   169: aload 12
    //   171: invokevirtual 190	android/os/Message:sendToTarget	()V
    //   174: return
    //   175: astore 16
    //   177: aload_0
    //   178: getfield 46	com/viber/voip/qrcode/f:d	Lcom/viber/dexshared/ZXing$MultiFormatReader;
    //   181: invokeinterface 148 1 0
    //   186: aconst_null
    //   187: astore 7
    //   189: goto -113 -> 76
    //   192: astore 15
    //   194: aload_0
    //   195: getfield 46	com/viber/voip/qrcode/f:d	Lcom/viber/dexshared/ZXing$MultiFormatReader;
    //   198: invokeinterface 148 1 0
    //   203: aload 15
    //   205: athrow
    //   206: aload 8
    //   208: ifnull -34 -> 174
    //   211: aload 8
    //   213: ldc 191
    //   215: invokestatic 194	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   218: invokevirtual 190	android/os/Message:sendToTarget	()V
    //   221: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	f
    //   0	222	1	paramArrayOfByte	byte[]
    //   0	222	2	paramInt1	int
    //   0	222	3	paramInt2	int
    //   3	110	4	l1	long
    //   18	138	6	localPlanarYUVLuminanceSource	ZXing.PlanarYUVLuminanceSource
    //   21	167	7	localObject1	Object
    //   83	129	8	localHandler	Handler
    //   93	18	9	l2	long
    //   144	26	12	localMessage	Message
    //   153	12	13	localBundle	Bundle
    //   48	7	14	localBinaryBitmap	com.viber.dexshared.ZXing.BinaryBitmap
    //   192	12	15	localObject2	Object
    //   175	1	16	localReaderException	com.viber.dexshared.ZXing.ReaderException
    //   61	3	17	localResult	com.viber.dexshared.ZXing.Result
    // Exception table:
    //   from	to	target	type
    //   50	63	175	com/viber/dexshared/ZXing$ReaderException
    //   50	63	192	finally
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (!this.e) {
      return;
    }
    switch (paramMessage.what)
    {
    default: 
      return;
    case 2131165306: 
      a((byte[])paramMessage.obj, paramMessage.arg1, paramMessage.arg2);
      return;
    }
    this.e = false;
    Looper.myLooper().quit();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.f
 * JD-Core Version:    0.7.0.1
 */