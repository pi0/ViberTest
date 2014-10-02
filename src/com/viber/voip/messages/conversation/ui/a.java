package com.viber.voip.messages.conversation.ui;

import com.viber.voip.a.ac;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.messages.ui.ExpandablePanelLayout;
import com.viber.voip.messages.ui.cx;

public class a
  implements cx
{
  private ExpandablePanelLayout a;
  private m b = com.viber.voip.a.a.n;
  
  public a(ExpandablePanelLayout paramExpandablePanelLayout)
  {
    this.a = paramExpandablePanelLayout;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      bc.a().a(this.b.b.c());
      this.a.a(paramInt);
    }
    while (!this.a.b(paramInt)) {
      return;
    }
    bc.a().a(this.b.b.d());
    this.a.a();
  }
  
  public void a(m paramm)
  {
    this.b = paramm;
  }
  
  public void a(boolean paramBoolean)
  {
    a(2131165913, paramBoolean);
  }
  
  public void b(boolean paramBoolean)
  {
    a(2131165914, paramBoolean);
  }
  
  public void c(boolean paramBoolean)
  {
    a(2131165697, paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.a
 * JD-Core Version:    0.7.0.1
 */