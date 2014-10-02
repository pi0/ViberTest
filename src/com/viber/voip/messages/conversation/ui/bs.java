package com.viber.voip.messages.conversation.ui;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.voip.util.b.al;
import com.viber.voip.util.p;

class bs
  implements al
{
  bs(ba paramba) {}
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    if ((this.a.k != null) && (this.a.k.getActivity() != null)) {
      this.a.k.getSherlockActivity().getSupportActionBar().setIcon(new p(this.a.k.getActivity().getResources(), paramBitmap));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.bs
 * JD-Core Version:    0.7.0.1
 */