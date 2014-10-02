package com.viber.voip.messages.conversation.publicgroup;

import android.graphics.Bitmap;
import android.net.Uri;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.w;
import com.viber.voip.util.p;

class av
  implements al
{
  av(PublicGroupInfoFragment paramPublicGroupInfoFragment) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (!PublicGroupInfoFragment.a(this.a))
    {
      this.a.getSherlockActivity().getSupportActionBar().setIcon(new p(this.a.getResources(), paramBitmap));
      PublicGroupInfoFragment.d(this.a).a(paramUri, PublicGroupInfoFragment.b(this.a), PublicGroupInfoFragment.c(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.av
 * JD-Core Version:    0.7.0.1
 */