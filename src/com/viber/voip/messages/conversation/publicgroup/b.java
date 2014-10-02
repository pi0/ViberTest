package com.viber.voip.messages.conversation.publicgroup;

import android.graphics.Bitmap;
import android.net.Uri;
import com.viber.voip.util.b.al;
import com.viber.voip.widget.TextViewWithDescription;

class b
  implements al
{
  b(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if ((this.a.isFinishing()) || (paramBitmap == null)) {
      return;
    }
    this.a.g.setText(" ");
    this.a.g.setLeftDrawable(paramBitmap);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.b
 * JD-Core Version:    0.7.0.1
 */