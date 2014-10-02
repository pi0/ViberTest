package com.viber.voip.messages.conversation.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.a.a.a.k;
import com.viber.voip.messages.conversation.v;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.messages.ui.bo;

public class cq
  extends bo<Long>
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private cr a;
  private w b;
  private ViberFragmentActivity c;
  private View d;
  private ImageButton e;
  private ImageButton f;
  private View g;
  private boolean h = false;
  
  public cq(cr paramcr, ViberFragmentActivity paramViberFragmentActivity, w paramw, View paramView)
  {
    this.c = paramViberFragmentActivity;
    this.a = paramcr;
    this.b = paramw;
    this.d = paramView;
    c();
  }
  
  private void c()
  {
    this.e = ((ImageButton)this.d.findViewById(2131165937));
    this.f = ((ImageButton)this.d.findViewById(2131165935));
    this.g = this.d.findViewById(2131165936);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
  }
  
  private void e()
  {
    if (this.a != null) {
      this.a.a(f());
    }
  }
  
  private void k()
  {
    if (this.a != null) {
      this.a.a(this.h);
    }
  }
  
  protected ActionMode a(ActionMode.Callback paramCallback)
  {
    if (this.c != null) {
      return this.c.startActionMode(paramCallback);
    }
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    ActionBarSherlock localActionBarSherlock;
    if (this.c != null)
    {
      localActionBarSherlock = this.c.getActionBarSherlock();
      if (!paramBoolean) {
        break label63;
      }
      localActionBarSherlock.setUiOptions(1);
      localActionBarSherlock.dispatchInvalidateOptionsMenu();
      d(null);
    }
    for (;;)
    {
      this.h = paramBoolean;
      k();
      if (this.a != null) {
        this.a.e(this.h);
      }
      return;
      label63:
      localActionBarSherlock.setUiOptions(0);
      localActionBarSherlock.dispatchInvalidateOptionsMenu();
      j();
    }
  }
  
  public boolean a()
  {
    return this.h;
  }
  
  public boolean a(long paramLong)
  {
    if (c(Long.valueOf(paramLong)))
    {
      b(Long.valueOf(paramLong));
      return false;
    }
    a(Long.valueOf(paramLong));
    return true;
  }
  
  public void b()
  {
    if (this.c != null) {
      a(this.c, this.c.getString(2131493820), g());
    }
  }
  
  protected void d()
  {
    if (this.a != null) {
      this.a.e(this.h);
    }
    View localView = this.g;
    if (g() > 0) {}
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131166289: 
      if (g() == this.b.e().getCount()) {
        i();
      }
      for (;;)
      {
        b();
        return true;
        b(this.b.e().i());
        if (this.a != null) {
          this.a.q();
        }
      }
    }
    e();
    return true;
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    k localk = (k)paramCompoundButton.getTag();
    View localView;
    if (paramBoolean)
    {
      a(Long.valueOf(((a)localk.c()).a()));
      b();
      localView = this.g;
      if (g() <= 0) {
        break label81;
      }
    }
    label81:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
      b(Long.valueOf(((a)localk.c()).a()));
      break;
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131165937) {
      e();
    }
    while (paramView.getId() != 2131165935) {
      return;
    }
    if (g() == this.b.e().getCount()) {
      i();
    }
    for (;;)
    {
      b();
      return;
      b(this.b.e().i());
      if (this.a != null) {
        this.a.q();
      }
    }
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if (this.a != null) {
      this.a.r();
    }
    this.d.setVisibility(0);
    a(paramActionMode);
    b();
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    if (this.a != null) {
      this.a.s();
    }
    this.d.setVisibility(8);
    this.h = false;
    i();
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.cq
 * JD-Core Version:    0.7.0.1
 */