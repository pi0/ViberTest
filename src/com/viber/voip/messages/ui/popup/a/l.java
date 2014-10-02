package com.viber.voip.messages.ui.popup.a;

import android.app.Activity;
import android.view.View;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;

public abstract class l
{
  private Activity a;
  private ai b;
  private boolean c;
  
  public l(Activity paramActivity, ai paramai, boolean paramBoolean)
  {
    a(paramActivity);
    a(paramai);
    this.c = paramBoolean;
  }
  
  public int a(int paramInt)
  {
    return -1;
  }
  
  public abstract View a(View paramView, int paramInt);
  
  public void a(int paramInt, boolean paramBoolean) {}
  
  protected void a(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  protected void a(ai paramai)
  {
    this.b = paramai;
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public int b(int paramInt)
  {
    return -1;
  }
  
  public abstract boolean b();
  
  public abstract int c();
  
  protected int d(int paramInt)
  {
    an localan;
    if (this.b != null)
    {
      localan = this.b.e(paramInt);
      if (localan != null) {
        break label27;
      }
    }
    label27:
    while (("text".equals(localan.e())) || ("sms".equals(localan.e())))
    {
      return 1;
      localan = null;
      break;
    }
    return 2;
  }
  
  public ai f()
  {
    return this.b;
  }
  
  public Activity g()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.l
 * JD-Core Version:    0.7.0.1
 */