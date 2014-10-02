package com.viber.voip.messages.conversation.ui;

import android.content.Context;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.block.i;
import com.viber.voip.registration.dj;
import com.viber.voip.util.gl;

public class co
{
  private Context a;
  private cp b;
  private MenuItem c;
  private MenuItem d;
  private MenuItem e;
  private MenuItem f;
  private MenuItem g;
  private MenuItem h;
  private MenuItem i;
  private MenuItem j;
  private boolean k = false;
  private boolean l = false;
  
  public co(Context paramContext, cp paramcp)
  {
    this.a = paramContext;
    this.b = paramcp;
  }
  
  public void a(Menu paramMenu)
  {
    this.c = paramMenu.findItem(2131166305);
    this.d = paramMenu.findItem(2131166350);
    this.e = paramMenu.findItem(2131166290);
    this.f = paramMenu.findItem(2131166348);
    this.g = paramMenu.findItem(2131166347);
    this.i = paramMenu.findItem(2131166349);
    this.j = paramMenu.findItem(2131166351);
    int m;
    if (dj.d())
    {
      paramMenu.removeItem(2131166307);
      if (this.d != null)
      {
        MenuItem localMenuItem = this.d;
        if (!this.l) {
          break label215;
        }
        m = 2131493665;
        label122:
        localMenuItem.setTitle(m);
      }
      if (this.j != null)
      {
        if ((!this.l) && (!ViberApplication.isTablet())) {
          break label222;
        }
        this.j.setVisible(false);
      }
    }
    for (;;)
    {
      if ((this.c != null) && (this.a != null) && (gl.d(this.a))) {
        this.c.setIcon(2130838261);
      }
      return;
      this.h = paramMenu.findItem(2131166307);
      break;
      label215:
      m = 2131493745;
      break label122;
      label222:
      this.j.setVisible(false);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
    if (this.k)
    {
      if (this.g != null) {
        this.g.setVisible(false);
      }
      if (this.f != null) {
        this.f.setVisible(false);
      }
      if (this.j != null) {
        this.j.setVisible(false);
      }
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.e == null) {
      return;
    }
    this.e.setVisible(paramBoolean1);
    MenuItem localMenuItem = this.e;
    if (paramBoolean2) {}
    for (int m = 2131494046;; m = 2131493706)
    {
      localMenuItem.setTitle(m);
      return;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    if (this.h == null) {
      return;
    }
    MenuItem localMenuItem1 = this.h;
    boolean bool;
    MenuItem localMenuItem2;
    if ((paramBoolean1) && (!paramBoolean2))
    {
      bool = true;
      localMenuItem1.setVisible(bool);
      localMenuItem2 = this.h;
      if (!i.a(paramString)) {
        break label69;
      }
    }
    label69:
    for (int m = 2131494453;; m = 2131494452)
    {
      localMenuItem2.setTitle(m);
      return;
      bool = false;
      break;
    }
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return bool;
              } while (this.b == null);
              this.b.d();
              return bool;
            } while (this.b == null);
            this.b.p();
            return bool;
          } while (this.b == null);
          this.b.d(false);
          return bool;
        } while (this.b == null);
        this.b.d(bool);
        return bool;
      } while (this.b == null);
      this.b.x();
      return bool;
    } while (this.b == null);
    this.b.y();
    return bool;
  }
  
  public void b(Menu paramMenu)
  {
    if (this.k) {}
  }
  
  public void b(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  public void c(boolean paramBoolean)
  {
    if (this.d == null) {
      return;
    }
    this.d.setVisible(paramBoolean);
  }
  
  public void d(boolean paramBoolean)
  {
    if (this.i == null) {
      return;
    }
    this.i.setVisible(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.co
 * JD-Core Version:    0.7.0.1
 */