package com.viber.voip.messages.adapters;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.util.b.al;
import com.viber.voip.util.hx;

class f
  implements al
{
  private g b;
  private boolean c;
  
  public f(MediaLayout paramMediaLayout, g paramg, boolean paramBoolean)
  {
    this.b = paramg;
    this.c = paramBoolean;
  }
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    MediaLayout.a(this.a, null);
    if (!paramBoolean) {
      this.a.a.setBackgroundResource(0);
    }
    int i;
    TextView localTextView;
    int j;
    if (("video".equals(this.b.e())) || ("animated_message".equals(this.b.e())))
    {
      View localView = MediaLayout.b(this.a);
      if (!MediaLayout.a(this.a)) {
        break label171;
      }
      i = 0;
      localView.setVisibility(i);
      if (!this.c) {
        break label183;
      }
      MediaLayout.b(this.a).setPadding(0, 0, 0, MediaLayout.c(this.a));
      localTextView = MediaLayout.d(this.a);
      boolean bool = MediaLayout.a(this.a);
      j = 0;
      if (!bool) {
        break label177;
      }
    }
    for (;;)
    {
      localTextView.setVisibility(j);
      MediaLayout.d(this.a).setText(hx.a((int)this.b.h()));
      return;
      label171:
      i = 4;
      break;
      label177:
      j = 4;
    }
    label183:
    MediaLayout.b(this.a).setPadding(0, 0, 0, 0);
    MediaLayout.d(this.a).setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.f
 * JD-Core Version:    0.7.0.1
 */