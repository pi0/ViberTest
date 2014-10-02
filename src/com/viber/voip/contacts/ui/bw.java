package com.viber.voip.contacts.ui;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.viber.voip.ui.aa;
import com.viber.voip.ui.ab;

public class bw
  extends aa
{
  private final View a;
  private final EditText d;
  
  public bw(Context paramContext, ab paramab, View paramView)
  {
    super(paramContext, paramab);
    this.a = paramView;
    this.d = ((EditText)this.a.findViewById(2131166017));
    if (this.d != null) {
      this.d.addTextChangedListener(new bx(this));
    }
  }
  
  public String a()
  {
    if (this.d != null) {
      return this.d.getText().toString();
    }
    return "";
  }
  
  public void a(String paramString)
  {
    EditText localEditText;
    if (this.d != null)
    {
      localEditText = this.d;
      if (paramString != null) {
        break label40;
      }
    }
    label40:
    for (String str = "";; str = paramString)
    {
      localEditText.setText(str);
      if (paramString != null) {
        this.d.setSelection(paramString.length());
      }
      return;
    }
  }
  
  public void b()
  {
    if (this.d != null) {
      this.d.setText("");
    }
  }
  
  public View c()
  {
    return this.d;
  }
  
  public void d()
  {
    if ((this.a != null) && (this.a.getVisibility() == 8)) {
      this.a.setVisibility(0);
    }
  }
  
  public boolean e()
  {
    View localView = this.a;
    boolean bool = false;
    if (localView != null)
    {
      int i = this.a.getVisibility();
      bool = false;
      if (i == 0) {
        bool = true;
      }
    }
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bw
 * JD-Core Version:    0.7.0.1
 */