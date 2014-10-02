package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.a.b;

final class l
  implements t
{
  l(GroupUserInfo paramGroupUserInfo) {}
  
  public void a(String paramString1, Uri paramUri, String paramString2)
  {
    b.d().a(paramUri, this.a.clientName, paramString1);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.l
 * JD-Core Version:    0.7.0.1
 */