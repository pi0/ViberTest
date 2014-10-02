package com.viber.voip.messages.extras.fb;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.viber.voip.messages.extras.image.h;
import java.io.File;

class y
  implements Runnable
{
  y(s params, String paramString1, Context paramContext, String paramString2, long paramLong, String paramString3, String paramString4) {}
  
  public void run()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("message", this.a);
    Uri localUri = h.a(this.b, this.c);
    if (localUri != null)
    {
      File localFile = new File(h.a(s.c(this.g), localUri));
      localBundle.putParcelable("picture", s.a(this.g, localFile));
      ai localai = new ai(this.g, this.d, this.e, this.f, this.c, 1);
      s.a(this.g, this.d, this.e, this.f, this.c, 1);
      s.a(this.g, this.b, localBundle, "me/photos", localai, localUri);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.y
 * JD-Core Version:    0.7.0.1
 */