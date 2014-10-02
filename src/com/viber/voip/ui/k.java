package com.viber.voip.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.SearchView;

public class k
  extends aa
{
  protected boolean a;
  private MenuItem d;
  private SearchView e;
  
  public k(Context paramContext, ab paramab)
  {
    super(paramContext, paramab);
  }
  
  public String a()
  {
    if (this.e != null) {
      return this.e.getQuery().toString();
    }
    return "";
  }
  
  public void a(MenuItem paramMenuItem, boolean paramBoolean, String paramString)
  {
    a(paramMenuItem, paramBoolean, true, paramString);
  }
  
  public void a(MenuItem paramMenuItem, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    this.d = paramMenuItem;
    this.d.setOnActionExpandListener(new l(this));
    this.e = ((SearchView)this.d.getActionView());
    this.e.setQuery(paramString, false);
    if (this.e != null)
    {
      View localView = this.e.findViewById(2131165523);
      if (localView != null) {
        localView.setBackgroundResource(2130837781);
      }
      this.e.setOnQueryTextListener(new m(this));
    }
    if ((!TextUtils.isEmpty(paramString)) && (paramBoolean2)) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      if (paramBoolean1)
      {
        this.d.expandActionView();
        this.e.setQuery(paramString, true);
      }
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (this.e != null)
    {
      SearchView localSearchView = this.e;
      if (paramString == null) {
        paramString = "";
      }
      localSearchView.setQuery(paramString, true);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (this.d != null) {
      this.d.setVisible(paramBoolean);
    }
  }
  
  public void b()
  {
    this.e.setQuery("", false);
  }
  
  public View c()
  {
    return this.e;
  }
  
  public void d()
  {
    if (this.d != null) {
      this.d.expandActionView();
    }
  }
  
  public boolean e()
  {
    if (this.d != null) {
      return this.d.isActionViewExpanded();
    }
    return false;
  }
  
  public void f()
  {
    if (this.d != null) {
      this.d.collapseActionView();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.k
 * JD-Core Version:    0.7.0.1
 */