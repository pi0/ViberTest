package com.viber.voip.messages.controller;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.a;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import com.viber.voip.util.upload.ac;
import com.viber.voip.util.upload.n;
import com.viber.voip.util.upload.s;
import java.io.File;

public class ce
{
  private Context a;
  private Handler b;
  
  public ce(Context paramContext, Handler paramHandler)
  {
    this.a = paramContext;
    this.b = paramHandler;
  }
  
  private void a(String paramString) {}
  
  public void a(long paramLong, Uri paramUri, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.DATA_ROAMING_DIALOG");
    localIntent.putExtra("message_id", paramLong);
    localIntent.putExtra("message_uri", paramUri);
    localIntent.putExtra("message_seq", paramString1);
    localIntent.putExtra("message_type", paramString2);
    localIntent.setFlags(268435456);
    this.a.startActivity(localIntent);
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, Uri paramUri, boolean paramBoolean, co paramco)
  {
    cf localcf = new cf(this, paramco, paramMessageEntityImpl, paramBoolean);
    if (paramMessageEntityImpl.isPublicGroup())
    {
      ac.a(paramMessageEntityImpl, paramUri, localcf);
      return;
    }
    ac.a(paramUri, String.valueOf(paramMessageEntityImpl.getMessageSeq()), paramMessageEntityImpl.getMimeType(), localcf);
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, cn paramcn)
  {
    a("startDownload = " + paramMessageEntityImpl);
    if (paramMessageEntityImpl == null) {
      return;
    }
    s.a(paramMessageEntityImpl, new ck(this, paramMessageEntityImpl, paramcn));
  }
  
  public boolean a(MessageEntityImpl paramMessageEntityImpl)
  {
    if (paramMessageEntityImpl.isPublicWatcher()) {
      return false;
    }
    ft localft = ft.a(this.a);
    boolean bool1 = ViberApplication.preferences().b(j.ac(), j.ad());
    boolean bool2 = ViberApplication.preferences().b(j.ae(), j.af());
    if (((bool1) && ("image".equals(paramMessageEntityImpl.getMimeType()))) || ((bool2) && ("video".equals(paramMessageEntityImpl.getMimeType())))) {}
    for (boolean bool3 = true;; bool3 = false)
    {
      a("onMediaReceived checkAutoDownloadMedia network:" + localft.a() + ",MEDIA_TYPE:" + paramMessageEntityImpl.getMimeType() + ",allowDownloadMedia:" + bool3);
      if (((localft.a() != 0) || (!bool3)) && (localft.a() != 1)) {
        break;
      }
      a("onMediaReceived checkAutoDownloadMedia TRUE");
      return true;
    }
  }
  
  public boolean b(MessageEntityImpl paramMessageEntityImpl, cn paramcn)
  {
    if (!paramMessageEntityImpl.getMimeType().equals("animated_message")) {}
    while (!n.a(paramMessageEntityImpl.getDownloadId(), "animated_message_cache").exists()) {
      return false;
    }
    Uri localUri1 = Uri.fromFile(n.a(paramMessageEntityImpl.getDownloadId(), "animated_message_cache"));
    Uri localUri2 = Uri.fromFile(n.a(paramMessageEntityImpl.getDownloadId(), paramMessageEntityImpl.getMimeType()));
    bj.a(localUri1, localUri2);
    paramMessageEntityImpl.setMediaUri(localUri2.toString());
    long l = m.a(this.a, localUri2, paramMessageEntityImpl.getMimeType());
    if (TextUtils.isEmpty(paramMessageEntityImpl.getBody())) {}
    for (Uri localUri3 = null;; localUri3 = Uri.parse(paramMessageEntityImpl.getBody()))
    {
      a locala = m.a(this.a, localUri2, localUri3);
      n.a(localUri2);
      paramcn.a(l, localUri2, locala);
      return true;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.ce
 * JD-Core Version:    0.7.0.1
 */