package com.viber.voip.contacts.c;

import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.user.UserData;
import com.viber.voip.user.UserDataFileKeeper.RecoverReply;
import java.io.File;

final class h
  implements UserDataFileKeeper.RecoverReply
{
  h(v paramv, String paramString) {}
  
  public void onError()
  {
    a.a(this.b, this.a);
  }
  
  public void onRecoverReply(String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    v localv = this.a;
    if (paramString1.equals(this.b))
    {
      a.c("checkIsUserNeedSetInfo.onRecoverReply name = " + paramString2 + ", photoUri = " + paramUri + ", downloadID = " + paramString3);
      if ((!TextUtils.isEmpty(paramString2)) || (paramUri != null))
      {
        a.c("checkIsUserNeedSetInfo. user has already set info.");
        if (paramString2 == null) {
          paramString2 = "";
        }
        UserData.setName(paramString2);
        if (paramUri != null)
        {
          if (!new File(paramUri.getPath()).exists()) {
            break label145;
          }
          a.c("checkIsUserNeedSetInfo. save info to the preferences");
          UserData.setImage(paramString3, paramUri);
        }
      }
    }
    for (;;)
    {
      if (localv != null)
      {
        localv.a(q.b);
        localv = null;
      }
      a.a(this.b, localv);
      return;
      label145:
      if (!TextUtils.isEmpty(paramString3))
      {
        a.c("checkIsUserNeedSetInfo. download photo with id = " + paramString3 + " and save info to the preferences");
        a.b(paramString3, true, new i(this, paramString3));
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.h
 * JD-Core Version:    0.7.0.1
 */