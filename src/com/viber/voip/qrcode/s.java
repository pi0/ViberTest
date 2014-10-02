package com.viber.voip.qrcode;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.viber.dexshared.ZXing.Result;

public final class s
  extends Handler
{
  private final ScannerActivity a;
  private final g b;
  private t c;
  private final e d;
  
  s(ScannerActivity paramScannerActivity, e parame)
  {
    this.a = paramScannerActivity;
    this.b = new g(paramScannerActivity, null);
    this.b.start();
    this.c = t.b;
    this.d = parame;
    parame.c();
  }
  
  private void b()
  {
    if ((this.c == t.b) || (this.c == t.c))
    {
      this.c = t.a;
      this.d.a(this.b.a(), 2131165306);
      this.a.d();
    }
  }
  
  public void a()
  {
    this.c = t.d;
    this.d.d();
    Message.obtain(this.b.a(), 2131165310).sendToTarget();
    try
    {
      this.b.join(500L);
      label39:
      removeMessages(2131165308);
      removeMessages(2131165307);
      removeMessages(2131165309);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label39;
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    float f;
    Bitmap localBitmap2;
    switch (paramMessage.what)
    {
    case 2131165310: 
    default: 
      return;
    case 2131165311: 
      b();
      return;
    case 2131165308: 
      this.c = t.b;
      Bundle localBundle = paramMessage.getData();
      f = 1.0F;
      if (localBundle != null)
      {
        byte[] arrayOfByte = localBundle.getByteArray("barcode_bitmap");
        localBitmap2 = null;
        if (arrayOfByte != null) {
          localBitmap2 = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, null).copy(Bitmap.Config.ARGB_8888, true);
        }
        f = localBundle.getFloat("barcode_scaled_factor");
      }
      break;
    }
    for (Bitmap localBitmap1 = localBitmap2;; localBitmap1 = null)
    {
      this.a.a((ZXing.Result)paramMessage.obj, localBitmap1, f);
      return;
      if (this.c == t.c) {
        break;
      }
      this.c = t.a;
      this.d.a(this.b.a(), 2131165306);
      return;
      this.a.setResult(-1, (Intent)paramMessage.obj);
      this.a.finish();
      return;
      this.c = t.c;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.s
 * JD-Core Version:    0.7.0.1
 */