package com.viber.error.report;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.w;
import java.io.File;

public class ErrorReportDialog
  extends ViberActivity
  implements View.OnClickListener
{
  private Button a;
  private Button b;
  private CheckBox c;
  private CheckBox d;
  private String e;
  
  private void a()
  {
    finish();
  }
  
  private String[] b()
  {
    File localFile = new File(this.e);
    localFile.mkdir();
    return localFile.list(new c(this));
  }
  
  private void c()
  {
    try
    {
      String str1 = getResources().getString(2131494832);
      String str2 = getResources().getString(2131494339);
      a.a(this, this.d.isChecked(), str1, str2);
      finish();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void finish()
  {
    ViberApplication.log(3, "ErrorReportDialog", "finish mForget.isChecked():" + this.c.isChecked());
    try
    {
      if (this.c.isChecked()) {
        for (String str : b())
        {
          ViberApplication.log(3, "ErrorReportDialog", "delete old crash file:" + this.e + str);
          new File(this.e + str).delete();
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      super.finish();
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.a) {
      c();
    }
    while (paramView != this.b) {
      return;
    }
    a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903175);
    this.a = ((Button)findViewById(2131165716));
    this.b = ((Button)findViewById(2131165717));
    this.c = ((CheckBox)findViewById(2131165714));
    this.d = ((CheckBox)findViewById(2131165715));
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e = w.d();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.error.report.ErrorReportDialog
 * JD-Core Version:    0.7.0.1
 */