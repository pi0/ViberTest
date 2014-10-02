package com.viber.voip;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.app.ViberActivity;

public class DontKillMeActivity
  extends ViberActivity
  implements View.OnClickListener
{
  public static boolean a = false;
  
  private void a(String paramString) {}
  
  public void onClick(View paramView)
  {
    a("onClick view:" + paramView);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a("onCreate");
    requestWindowFeature(1);
    setRequestedOrientation(1);
    setContentView(2130903188);
    findViewById(2131165768).setOnClickListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.DontKillMeActivity
 * JD-Core Version:    0.7.0.1
 */