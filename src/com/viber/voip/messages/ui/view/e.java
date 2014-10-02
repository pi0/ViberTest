package com.viber.voip.messages.ui.view;

import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import com.viber.voip.util.b.al;

class e
  implements al
{
  private ImageView b;
  
  public e(c paramc, ImageView paramImageView)
  {
    this.b = paramImageView;
  }
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (this.b != null) {
      this.b.setImageBitmap(paramBitmap);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.e
 * JD-Core Version:    0.7.0.1
 */