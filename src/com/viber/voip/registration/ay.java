package com.viber.voip.registration;

import android.content.Intent;
import android.os.AsyncTask;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.ft;
import com.viber.voip.util.t;
import java.io.IOException;

class ay
  extends AsyncTask<String, Integer, Object>
{
  private t b = new t();
  
  private ay(DeActivationActivity paramDeActivationActivity) {}
  
  protected Object a(String... paramVarArgs)
  {
    ViberApplication localViberApplication = (ViberApplication)this.a.getApplication();
    if (!ft.b(localViberApplication)) {
      return "com.viber.voip.action.CONNECTION_PROBLEM";
    }
    localViberApplication.getActivationController().setShouldDeactivate(true);
    bc localbc = localViberApplication.getActivationController().getDeActivationManager();
    ActivationController localActivationController = ViberApplication.getInstance().getActivationController();
    String str1 = localActivationController.getRegNumber();
    String str2 = localActivationController.getCountryCode();
    try
    {
      df localdf = localbc.a(str1, str2, localViberApplication.getHardwareParameters().getUdid(), this.b);
      return localdf;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    this.b.b();
  }
  
  protected void onPostExecute(Object paramObject)
  {
    this.a.a(2);
    if (paramObject == null)
    {
      this.a.b(3);
      return;
    }
    if ((paramObject instanceof String))
    {
      Intent localIntent = new Intent((String)paramObject);
      localIntent.setFlags(268435456);
      this.a.startActivity(localIntent);
      this.a.finish();
      return;
    }
    if (((df)paramObject).a)
    {
      DeActivationActivity.a(this.a);
      return;
    }
    DeActivationActivity.a(this.a, ((df)paramObject).c);
  }
  
  protected void onPreExecute()
  {
    this.a.b(2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ay
 * JD-Core Version:    0.7.0.1
 */