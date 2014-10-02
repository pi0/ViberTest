package com.viber.voip.contacts.c.a;

import android.os.Handler;
import java.util.Set;

public class b
  implements a
{
  private final a a;
  private final Handler b;
  
  public b(Handler paramHandler, a parama)
  {
    this.b = paramHandler;
    this.a = parama;
  }
  
  private void a(g paramg)
  {
    this.b.postAtFrontOfQueue(new f(this, paramg));
  }
  
  public void a(String paramString)
  {
    a(new e(this, paramString));
  }
  
  public void a(Set<String> paramSet)
  {
    a(new c(this, paramSet));
  }
  
  public void b(Set<String> paramSet)
  {
    a(new d(this, paramSet));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.a.b
 * JD-Core Version:    0.7.0.1
 */