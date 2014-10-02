package com.viber.voip.gallery.selection;

import android.content.res.Resources;
import android.view.View.OnClickListener;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.view.menu.ActionMenuItemView;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.util.gl;

public class a
{
  ActionMenuItemView a;
  private ViberFragmentActivity b;
  private View.OnClickListener c;
  private String d;
  private int e;
  private int f;
  private int g;
  private int h;
  private boolean i;
  private boolean j;
  private CapitalizingButton k;
  private b l;
  
  public a(ViberFragmentActivity paramViberFragmentActivity, View.OnClickListener paramOnClickListener, b paramb)
  {
    this.b = paramViberFragmentActivity;
    this.c = paramOnClickListener;
    this.l = paramb;
    this.g = this.b.getResources().getColor(2131296418);
    this.h = this.b.getResources().getColor(2131296318);
    this.d = paramViberFragmentActivity.getString(2131494426);
  }
  
  private void d()
  {
    this.l.a();
  }
  
  private void e()
  {
    CapitalizingButton localCapitalizingButton;
    if ((this.a != null) && (this.k != null))
    {
      String str = Integer.toString(this.e) + "/" + Integer.toString(this.f);
      this.a.setTitle(str);
      localCapitalizingButton = this.k;
      if (this.e >= this.f) {
        break label85;
      }
    }
    label85:
    for (int m = this.g;; m = this.h)
    {
      localCapitalizingButton.setTextColor(m);
      return;
    }
  }
  
  private void f()
  {
    ActionBar localActionBar = this.b.getSupportActionBar();
    if (this.i) {}
    for (Object localObject = null;; localObject = this.d)
    {
      localActionBar.setSubtitle((CharSequence)localObject);
      return;
    }
  }
  
  public void a()
  {
    this.b.getSupportActionBar().setTitle(2131494425);
    this.b.getSupportActionBar().setSubtitle(null);
  }
  
  public void a(int paramInt)
  {
    this.f = paramInt;
    e();
  }
  
  public void a(String paramString)
  {
    this.b.getSupportActionBar().setTitle(paramString);
    f();
  }
  
  public void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public boolean a(Menu paramMenu)
  {
    this.b.getSupportMenuInflater().inflate(2131755025, paramMenu);
    gl.a(paramMenu.findItem(2131166288), 2130837612, 2131494199, this.c);
    this.a = ((ActionMenuItemView)paramMenu.findItem(2131166318).getActionView());
    this.k = ((CapitalizingButton)this.a.findViewById(2131165497));
    this.k.setEnabled(false);
    this.k.setTypeface(null, 0);
    e();
    return true;
  }
  
  public void b()
  {
    this.i = true;
    f();
    d();
  }
  
  public void b(int paramInt)
  {
    this.e = paramInt;
    e();
  }
  
  public boolean b(Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.findItem(2131166288);
    if ((this.i) && ((this.e > 0) || (this.j))) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      paramMenu.findItem(2131166318).setVisible(this.i);
      return true;
    }
  }
  
  public void c()
  {
    this.i = false;
    f();
    d();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.a
 * JD-Core Version:    0.7.0.1
 */