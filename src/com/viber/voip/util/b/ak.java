package com.viber.voip.util.b;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import com.viber.voip.contacts.b.d;
import com.viber.voip.util.bu;
import com.viber.voip.util.upload.s;

class ak
  implements al
{
  final al a;
  final x b;
  final Uri c;
  final d d;
  final ImageView e;
  
  public ak(ad paramad, Uri paramUri, d paramd, ImageView paramImageView, x paramx, al paramal)
  {
    this.c = paramUri;
    this.d = paramd;
    this.e = paramImageView;
    this.b = paramx;
    this.a = paramal;
  }
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    ad.a(this.f, null);
    if (this.a != null) {
      this.a.a(paramUri, paramBitmap, paramBoolean);
    }
    if ((paramUri == null) || (paramBoolean)) {}
    for (;;)
    {
      return;
      if (bu.a(this.c))
      {
        x localx = this.b.b().b(false).b();
        this.f.a(this.c, this.e, paramBitmap, localx, this.a);
        return;
      }
      if (this.d != null) {}
      for (String str = this.d.n(); !TextUtils.isEmpty(str); str = ad.b(paramUri.getPath()))
      {
        s.a(str, true, new ai(this.f, paramUri, this.c, paramBitmap, this.e, this.b, this.a, null));
        return;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.ak
 * JD-Core Version:    0.7.0.1
 */