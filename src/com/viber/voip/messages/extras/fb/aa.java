package com.viber.voip.messages.extras.fb;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;

class aa
  implements Runnable
{
  aa(s params, String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, Context paramContext) {}
  
  public void run()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("message", this.a);
    if (!TextUtils.isEmpty(this.b)) {
      localBundle.putString("link", this.b);
    }
    ai localai = new ai(this.g, this.c, this.a, this.d, this.e, 0);
    s.a(this.g, this.c, this.a, this.d, this.e, 0);
    s.a(this.g, this.f, localBundle, "me/feed", localai, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.aa
 * JD-Core Version:    0.7.0.1
 */