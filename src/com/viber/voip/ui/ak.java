package com.viber.voip.ui;

import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.ui.b.b;

public class ak
{
  private boolean a;
  private boolean b;
  private String c;
  private String d;
  private boolean e;
  
  public ak() {}
  
  public ak(Object paramObject)
  {
    if ((paramObject instanceof b))
    {
      locala = (a)((b)paramObject).c();
      a(locala.j());
      b(locala.j());
      a(locala.O());
      c(true);
    }
    while (!(paramObject instanceof ak))
    {
      a locala;
      return;
    }
    ak localak = (ak)paramObject;
    a(localak.a());
    b(localak.d());
    a(localak.b());
    b(localak.c());
    c(true);
  }
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean a()
  {
    return this.b;
  }
  
  public String b()
  {
    return this.c;
  }
  
  public void b(String paramString)
  {
    this.d = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  public String c()
  {
    return this.d;
  }
  
  public void c(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public boolean d()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ak
 * JD-Core Version:    0.7.0.1
 */