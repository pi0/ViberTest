package com.viber.voip;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.al;

class ap
  implements al
{
  ap(MyQRCodeActivity paramMyQRCodeActivity) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      h.c(this.a.getApplicationContext(), paramUri);
      MyQRCodeActivity.a(this.a, this.a.a());
      return;
    }
    MyQRCodeActivity.a(this.a).setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ap
 * JD-Core Version:    0.7.0.1
 */