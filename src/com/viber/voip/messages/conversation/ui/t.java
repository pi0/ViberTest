package com.viber.voip.messages.conversation.ui;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.l;
import com.viber.voip.messages.ui.ExpandablePanelLayout;
import com.viber.voip.util.hs;

class t
  implements hs
{
  t(m paramm) {}
  
  public void a(String paramString1, String paramString2)
  {
    Uri localUri = Uri.parse(paramString1);
    if (paramString1.startsWith("tel:"))
    {
      m.c(this.a).n.setTag(localUri);
      m.a(this.a).registerForContextMenu(m.c(this.a).n);
      if (m.e(this.a)) {
        ((com.viber.voip.messages.ui.chathead.a.b)m.a(this.a)).c(m.c(this.a).n);
      }
      for (;;)
      {
        m.a(this.a).unregisterForContextMenu(m.c(this.a).n);
        return;
        m.a(this.a).getActivity().openContextMenu(m.c(this.a).n);
      }
    }
    try
    {
      if (ViberApplication.getInstance().getContactManager().c(localUri.getSchemeSpecificPart()) == l.a)
      {
        m.a(this.a).startActivity(new Intent("com.viber.voip.action.DIALER", localUri));
        return;
      }
      Intent localIntent = new Intent("android.intent.action.VIEW", localUri);
      localIntent.putExtra("com.android.browser.application_id", m.a(this.a).D().getPackageName());
      m.a(this.a).startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.t
 * JD-Core Version:    0.7.0.1
 */