package com.viber.voip.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import com.viber.voip.ui.ViberEditText;

public class aa
  extends ViberEditText
{
  private ae a;
  
  public aa(Context paramContext)
  {
    super(paramContext);
  }
  
  @SuppressLint({"NewApi"})
  public void a()
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      setOnCreateContextMenuListener(new ac(this));
      return;
    }
    setCustomSelectionActionModeCallback(new ad(this));
  }
  
  protected void onSelectionChanged(int paramInt1, int paramInt2)
  {
    super.onSelectionChanged(paramInt1, paramInt2);
    if (this.a != null) {
      new Handler().post(new ab(this, paramInt1, paramInt2));
    }
  }
  
  public void setOnSelectionChangedListener(ae paramae)
  {
    this.a = paramae;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.aa
 * JD-Core Version:    0.7.0.1
 */