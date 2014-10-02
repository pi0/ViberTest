package com.viber.voip;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.viber.voip.util.b.al;

class i
  implements al
{
  i(AddFriendPreview paramAddFriendPreview) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    AddFriendPreview.c(this.a).setImageDrawable(new BitmapDrawable(this.a.getResources(), paramBitmap));
    if ((paramUri != null) && (paramBoolean))
    {
      String str = paramUri.getScheme();
      if ((str != null) && (str.startsWith("http"))) {
        AddFriendPreview.a(this.a, null);
      }
    }
    AddFriendPreview.a(this.a, true);
    AddFriendPreview.b(this.a, true);
    if (paramBoolean) {
      AddFriendPreview.c(this.a, true);
    }
    if ((paramBoolean) || (AddFriendPreview.d(this.a))) {
      AddFriendPreview.e(this.a).setVisibility(0);
    }
    if ((!paramBoolean) && (AddFriendPreview.d(this.a)))
    {
      AddFriendPreview.c(this.a).getDrawable().setColorFilter(AddFriendPreview.f(this.a));
      AddFriendPreview.g(this.a).setImageResource(2130838108);
      AddFriendPreview.h(this.a).setImageResource(2130838208);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.i
 * JD-Core Version:    0.7.0.1
 */