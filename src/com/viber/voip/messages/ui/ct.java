package com.viber.voip.messages.ui;

import android.net.Uri;
import com.viber.voip.messages.d;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.b.b.f;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.zoobe.sdk.helper.ZoobeResult;

class ct
  implements Runnable
{
  ct(MessageComposerView paramMessageComposerView, ZoobeResult paramZoobeResult) {}
  
  public void run()
  {
    MessageComposerView.c("ZoobeReadyListener: onReady  video url = " + this.a.videoUrl + "Share url = " + this.a.shareUrl + "link params = " + this.a.linkParams);
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.b).a("animated_message", "", 0);
    com.viber.voip.messages.extras.image.a locala = m.a(MessageComposerView.o(this.b), this.a.thmbnail, true);
    if (locala != null)
    {
      localMessageEntityImpl.setBody(locala.a.toString());
      localMessageEntityImpl.setThumbnailHeight(locala.c);
      localMessageEntityImpl.setThumbnailWidth(locala.b);
      w localw = w.a(this.b.getContext());
      x localx = new z().b(false).a(new f(this.b.getContext())).b();
      localw.b(locala.a, localx);
    }
    localMessageEntityImpl.setBucket(com.viber.voip.k.a.a(this.a));
    localMessageEntityImpl.setDownloadId(com.viber.voip.k.a.a(this.a.linkParams));
    m.a(MessageComposerView.o(this.b), this.a.thmbnail, false, com.viber.voip.k.a.b(localMessageEntityImpl.getDownloadId()));
    this.b.a(localMessageEntityImpl, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ct
 * JD-Core Version:    0.7.0.1
 */