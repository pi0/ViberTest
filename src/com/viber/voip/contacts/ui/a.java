package com.viber.voip.contacts.ui;

import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import com.viber.voip.util.b.al;
import com.viber.voip.util.gl;

class a
  implements al
{
  a(ContactDetailsFragment paramContactDetailsFragment) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (this.a.getActivity() != null)
    {
      if (paramBoolean) {
        break label54;
      }
      if ((!ContactDetailsFragment.a(this.a)) || (gl.e(this.a.getActivity()))) {}
    }
    else
    {
      return;
    }
    this.a.a(ContactDetailsFragment.b(this.a), paramBoolean);
    return;
    label54:
    ContactDetailsFragment.c(this.a).setOnClickListener(null);
    this.a.a(null, paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.a
 * JD-Core Version:    0.7.0.1
 */