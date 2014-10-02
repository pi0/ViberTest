package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.voip.user.UserData;

class i
  extends r
{
  i(h paramh, String paramString)
  {
    super(null);
  }
  
  public void a(String paramString)
  {
    a.c("checkIsUserNeedSetInfo. download complete! path: " + paramString);
    UserData.setImage(this.a, Uri.parse(paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.i
 * JD-Core Version:    0.7.0.1
 */