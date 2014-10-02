package com.viber.voip;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;

class ar
  implements Runnable
{
  ar(MyQRCodeActivity paramMyQRCodeActivity, Bitmap paramBitmap) {}
  
  public void run()
  {
    if (!this.b.isFinishing())
    {
      MyQRCodeActivity.b(this.b).setImageBitmap(this.a);
      MyQRCodeActivity.a(this.b).setVisibility(8);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ar
 * JD-Core Version:    0.7.0.1
 */