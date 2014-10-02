package com.viber.voip.contacts.ui;

import android.net.Uri;
import com.viber.voip.contacts.b.e;
import com.viber.voip.messages.conversation.ar;

public class cn
{
  public boolean a = false;
  public boolean b = false;
  public boolean c = false;
  private e e;
  private ar f;
  
  protected cn(cb paramcb) {}
  
  private cn(cb paramcb, e parame)
  {
    this.e = parame;
  }
  
  public cn a(boolean paramBoolean)
  {
    this.a = paramBoolean;
    return this;
  }
  
  public String a()
  {
    if (this.f != null) {
      return this.f.d();
    }
    if (this.e != null) {
      return this.e.a();
    }
    return "";
  }
  
  public Uri b()
  {
    if (this.e != null) {
      return this.e.b();
    }
    return null;
  }
  
  public cn b(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }
  
  public cn c(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.cn
 * JD-Core Version:    0.7.0.1
 */