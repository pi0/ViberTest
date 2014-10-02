package com.viber.voip.util;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;

public class bl
{
  public boolean a = false;
  private HomeActivity b;
  private ActionBar c;
  private boolean d;
  private boolean e;
  private View f;
  private View g;
  private TextView h;
  private TextView i;
  private View.OnClickListener j;
  private int k = -1;
  
  public bl(HomeActivity paramHomeActivity)
  {
    this.b = paramHomeActivity;
    this.c = paramHomeActivity.getSupportActionBar();
    this.d = ViberApplication.isTablet();
    this.e = gl.e(paramHomeActivity);
    this.c.setNavigationMode(2);
    this.c.setDisplayShowTitleEnabled(false);
    this.c.setDisplayShowHomeEnabled(false);
    if (this.d)
    {
      this.f = a();
      this.g = this.f.findViewById(2131165195);
      this.h = ((TextView)this.f.findViewById(2131165494));
      this.i = ((TextView)this.f.findViewById(2131165495));
      this.c.setCustomView(this.f);
    }
  }
  
  private LinearLayout a()
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(this.b).inflate(2130903103, null);
    ((TextView)localLinearLayout.findViewById(2131165494)).setTextAppearance(this.b, 2131558458);
    TextView localTextView = (TextView)localLinearLayout.findViewById(2131165495);
    localTextView.setTextAppearance(this.b, 2131558495);
    ((LinearLayout.LayoutParams)localTextView.getLayoutParams()).setMargins(0, 0, 0, 0);
    return localLinearLayout;
  }
  
  private boolean b(int paramInt)
  {
    if (this.c.getNavigationMode() != paramInt)
    {
      this.c.setNavigationMode(paramInt);
      return true;
    }
    return false;
  }
  
  public void a(int paramInt)
  {
    if (this.k != paramInt) {
      this.k = paramInt;
    }
    if (this.d) {}
    switch (paramInt)
    {
    default: 
    case 0: 
    case 3: 
      do
      {
        return;
      } while (this.a);
      c(true, false);
      if (this.e)
      {
        this.f.setOnClickListener(null);
        this.f.setClickable(false);
        return;
      }
      this.f.setOnClickListener(this.j);
      return;
    }
    c(false, true);
    this.c.setDisplayShowTitleEnabled(false);
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.j = paramOnClickListener;
  }
  
  public void a(boolean paramBoolean)
  {
    b(paramBoolean, true);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool;
    View localView;
    int m;
    if (((!paramBoolean1) || (this.e)) && (paramBoolean2) && ((this.k == 0) || (this.k == 3)))
    {
      bool = true;
      c(bool, paramBoolean1);
      if (bool)
      {
        if ((this.h.getVisibility() == 8) && (!gj.c(this.h.getText().toString()))) {
          this.h.setVisibility(0);
        }
        if ((this.i.getVisibility() == 8) && (!gj.c(this.i.getText().toString()))) {
          this.i.setVisibility(0);
        }
        if (this.f.getVisibility() == 8) {
          this.f.setVisibility(0);
        }
        localView = this.g;
        m = 0;
        if (paramBoolean1) {
          break label160;
        }
      }
    }
    for (;;)
    {
      localView.setVisibility(m);
      return;
      bool = false;
      break;
      label160:
      m = 8;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    int m;
    boolean bool;
    if (paramBoolean)
    {
      m = 0;
      bool = b(m);
      if (!paramBoolean) {
        break label104;
      }
      switch (this.k)
      {
      }
    }
    for (;;)
    {
      if (bool) {
        this.k = -2;
      }
      return;
      m = 2;
      break;
      this.c.setIcon(2130837773);
      continue;
      this.c.setIcon(2130837767);
      continue;
      this.c.setIcon(2130837764);
    }
    label104:
    this.c.setIcon(2130838256);
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.k != -2) {
      if (!paramBoolean1) {
        break label28;
      }
    }
    label28:
    for (int m = 2;; m = 0)
    {
      b(m);
      a(paramBoolean1, paramBoolean2);
      return;
    }
  }
  
  public void c(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = true;
    boolean bool2;
    ActionBar localActionBar;
    if (!paramBoolean1)
    {
      bool2 = bool1;
      localActionBar = this.b.getSupportActionBar();
      localActionBar.setTitle("");
      localActionBar.setDisplayShowCustomEnabled(paramBoolean1);
      localActionBar.setDisplayShowTitleEnabled(bool2);
      if ((!bool2) || (paramBoolean2)) {
        break label60;
      }
    }
    for (;;)
    {
      localActionBar.setDisplayHomeAsUpEnabled(bool1);
      return;
      bool2 = false;
      break;
      label60:
      bool1 = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bl
 * JD-Core Version:    0.7.0.1
 */