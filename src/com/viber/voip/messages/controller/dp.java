package com.viber.voip.messages.controller;

import android.net.Uri;
import android.os.Handler;

public class dp
  implements dn
{
  private final dn a;
  private final Handler b;
  
  public dp(Handler paramHandler, dn paramdn)
  {
    this.a = paramdn;
    this.b = paramHandler;
  }
  
  private void a(du paramdu)
  {
    this.b.postAtFrontOfQueue(new dq(this, paramdu));
  }
  
  public void a(Uri paramUri)
  {
    a(new dr(this, paramUri));
  }
  
  public void a(String paramString)
  {
    a(new ds(this, paramString));
  }
  
  public void a(String[] paramArrayOfString, do paramdo)
  {
    a(new dt(this, paramArrayOfString, paramdo));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.dp
 * JD-Core Version:    0.7.0.1
 */