package com.viber.voip.qrcode;

import android.os.Handler;
import android.os.Looper;
import com.viber.dexshared.ZXing.BarcodeFormat;
import com.viber.dexshared.ZXing.DecodeHintType;
import com.viber.dexshared.ZXing.ResultPointCallback;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class g
  extends Thread
{
  private final ScannerActivity a;
  private final Map<ZXing.DecodeHintType, Object> b;
  private Handler c;
  private final CountDownLatch d;
  
  g(ScannerActivity paramScannerActivity, ZXing.ResultPointCallback paramResultPointCallback)
  {
    this.a = paramScannerActivity;
    this.d = new CountDownLatch(1);
    this.b = new EnumMap(ZXing.DecodeHintType.class);
    this.b.put(ZXing.DecodeHintType.POSSIBLE_FORMATS, EnumSet.of(ZXing.BarcodeFormat.QR_CODE));
    this.b.put(ZXing.DecodeHintType.NEED_RESULT_POINT_CALLBACK, paramResultPointCallback);
  }
  
  Handler a()
  {
    try
    {
      this.d.await();
      label7:
      return this.c;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label7;
    }
  }
  
  public void run()
  {
    Looper.prepare();
    this.c = new f(this.a, this.b);
    this.d.countDown();
    Looper.loop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.g
 * JD-Core Version:    0.7.0.1
 */