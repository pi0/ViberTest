package com.viber.voip.util;

import android.app.ProgressDialog;
import android.net.Uri;
import java.util.List;

class g
  implements h
{
  g(f paramf) {}
  
  public void a(String paramString)
  {
    label199:
    for (;;)
    {
      try
      {
        f.a("onWriteConversation fName = " + paramString + ", threadCount = " + f.a(this.a) + ", files.size = " + f.b(this.a).size());
        if (paramString != null)
        {
          f.b(this.a).add(paramString);
          if (f.a(this.a) - f.b(this.a).size() <= 0)
          {
            if (f.b(this.a).size() == 0) {
              break label199;
            }
            String[] arrayOfString = (String[])f.b(this.a).toArray(new String[f.a(this.a)]);
            Uri localUri = f.a(arrayOfString, f.a());
            f.a(this.a, arrayOfString);
            f.a(this.a, localUri);
            f.d(this.a).cancel();
          }
        }
        else
        {
          f.c(this.a);
          continue;
        }
        f.a("File size == 0. Nothing to send!");
      }
      finally {}
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.g
 * JD-Core Version:    0.7.0.1
 */