package com.viber.voip;

import android.net.Uri;
import android.util.Pair;

class av
  implements Runnable
{
  private Uri b;
  private int c;
  
  private av(as paramas) {}
  
  public void a(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void a(Uri paramUri)
  {
    this.b = paramUri;
  }
  
  public void run()
  {
    int i = this.c;
    if (as.b(this.a) != this.c) {
      return;
    }
    aw localaw = new aw(as.a(this.a, this.b, as.e(), true), true);
    synchronized (as.a(this.a))
    {
      as.a(this.a, new Pair(Integer.valueOf(i), localaw));
      as.g(this.a);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.av
 * JD-Core Version:    0.7.0.1
 */