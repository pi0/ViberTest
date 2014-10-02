package com.viber.voip.qrcode;

import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;

final class l
  implements Camera.PreviewCallback
{
  private static final String a = l.class.getSimpleName();
  private final d b;
  private Handler c;
  private int d;
  
  l(d paramd)
  {
    this.b = paramd;
  }
  
  void a(Handler paramHandler, int paramInt)
  {
    this.c = paramHandler;
    this.d = paramInt;
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    Point localPoint = this.b.a();
    Handler localHandler = this.c;
    if ((localPoint != null) && (localHandler != null))
    {
      localHandler.obtainMessage(this.d, localPoint.x, localPoint.y, paramArrayOfByte).sendToTarget();
      this.c = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.l
 * JD-Core Version:    0.7.0.1
 */