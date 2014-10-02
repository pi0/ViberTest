package com.viber.voip.messages.conversation.publicgroup;

import android.net.Uri;
import com.viber.voip.util.hv;

class u
  extends x
{
  u(t paramt, long paramLong)
  {
    super(paramt.g, null);
  }
  
  public void a(Uri paramUri, String paramString)
  {
    long l = Long.parseLong(paramString, 16);
    this.b.g.a(paramUri, hv.c(l + ""));
    CreatePublicGroupActivity.a(this.b.g, this.a, this.b.a, this.b.b, this.b.c, this.b.d, this.b.e, this.b.f, l);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.u
 * JD-Core Version:    0.7.0.1
 */