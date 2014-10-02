package com.viber.voip.messages.extras.fb;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.viber.voip.messages.extras.image.h;
import java.io.File;

class z
  implements Runnable
{
  z(s params, String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, Context paramContext) {}
  
  public void run()
  {
    Bundle localBundle = new Bundle();
    File localFile = new File(h.a(s.c(this.g), Uri.parse(this.a)));
    localBundle.putParcelable(localFile.getName(), s.a(this.g, localFile));
    localBundle.putString("description", this.b);
    ai localai = new ai(this.g, this.c, this.d, this.e, this.a, 3);
    s.a(this.g, this.c, this.d, this.e, this.a, 3);
    s.a(this.g, this.f, localBundle, "me/videos", localai, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.z
 * JD-Core Version:    0.7.0.1
 */