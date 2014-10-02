package com.viber.voip.messages.conversation.publicgroup;

import android.net.Uri;
import com.viber.jni.LocationInfo;
import com.viber.voip.util.hv;
import com.viber.voip.util.upload.ac;
import com.viber.voip.util.upload.ak;

class t
  extends x
{
  t(CreatePublicGroupActivity paramCreatePublicGroupActivity, String paramString1, String paramString2, LocationInfo paramLocationInfo, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    super(paramCreatePublicGroupActivity, null);
  }
  
  public void a(Uri paramUri, String paramString)
  {
    long l = Long.parseLong(paramString, 16);
    this.g.a(paramUri, hv.b(l + ""));
    if (this.g.o != null)
    {
      CreatePublicGroupActivity.d(this.g, "upload background");
      ac.a(ak.e, this.g.o, new u(this, l));
      return;
    }
    if (this.g.p > 0L)
    {
      CreatePublicGroupActivity.d(this.g, "default background = " + this.g.p + " converted id: " + this.g.p);
      CreatePublicGroupActivity.a(this.g, l, this.a, this.b, this.c, this.d, this.e, this.f, this.g.p);
      return;
    }
    CreatePublicGroupActivity.a(this.g, l, this.a, this.b, this.c, this.d, this.e, this.f, 0L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.t
 * JD-Core Version:    0.7.0.1
 */