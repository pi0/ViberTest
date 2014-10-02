package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gl;

public class ContactsListView
  extends t
{
  private TextView A;
  private TextView B;
  private int a;
  private int b;
  private boolean z;
  
  public ContactsListView(Context paramContext)
  {
    super(new ContextThemeWrapper(paramContext, 2131558756));
  }
  
  public ContactsListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(new ContextThemeWrapper(paramContext, 2131558756), paramAttributeSet);
  }
  
  public ContactsListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(new ContextThemeWrapper(paramContext, 2131558756), paramAttributeSet, paramInt);
  }
  
  public void a(ak paramak)
  {
    if ((this.z) || (this.o.e.isLayoutRequested()) || (!this.A.getText().equals(paramak.b())) || (!this.B.getText().equals(paramak.c())))
    {
      this.A.setText(paramak.b());
      this.B.setText(paramak.c());
      this.z = false;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.o.e.findViewById(2131165766).getLayoutParams();
      localMarginLayoutParams.leftMargin = this.a;
      localMarginLayoutParams.rightMargin = this.b;
    }
    if ((!paramBoolean1) && (paramBoolean2)) {
      if (Build.VERSION.SDK_INT >= 11) {
        gl.a(this, 1);
      }
    }
    for (int i = 2130837702;; i = 2130837701)
    {
      this.o.e.setBackgroundResource(i);
      return;
    }
  }
  
  protected ai c()
  {
    Resources localResources = getResources();
    this.a = localResources.getDimensionPixelSize(2131362118);
    this.b = localResources.getDimensionPixelSize(2131362119);
    ai localai = new ai();
    localai.e = inflate(getContext(), 2130903187, null);
    localai.f = localai.e.findViewById(2131165766);
    localai.e.setVisibility(0);
    this.B = ((TextView)localai.e.findViewById(2131165358));
    this.A = ((TextView)localai.e.findViewById(2131165767));
    this.A.setGravity(19);
    return localai;
  }
  
  protected int getHeaderTag()
  {
    return 2131165340;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.z = true;
  }
  
  public void setupViews(boolean paramBoolean)
  {
    a(paramBoolean, ViberApplication.isTablet());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ContactsListView
 * JD-Core Version:    0.7.0.1
 */