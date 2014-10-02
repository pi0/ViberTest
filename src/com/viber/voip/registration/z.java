package com.viber.voip.registration;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.rakuten.l;
import java.io.IOException;
import java.util.Locale;

class z
  extends AsyncTask<String, Integer, df>
{
  private com.viber.voip.util.t b = new com.viber.voip.util.t();
  
  private z(t paramt) {}
  
  protected df a(String... paramVarArgs)
  {
    String str1 = paramVarArgs[0];
    try
    {
      ViberApplication localViberApplication = ViberApplication.getInstance();
      String str2 = localViberApplication.getResources().getConfiguration().locale.getLanguage();
      localViberApplication.getActivationController().checkNetworkConnection();
      df localdf2 = localViberApplication.getActivationController().getActivationManager().a(localViberApplication.getHardwareParameters().getUdid(), str1, str2, this.b);
      localdf1 = localdf2;
      IOException localIOException2;
      ViberApplication.log(6, "ActivationFragment", localIOException2.getMessage(), localIOException2);
    }
    catch (IOException localIOException1)
    {
      try
      {
        l.a().a(localdf1);
        return localdf1;
      }
      catch (IOException localIOException3)
      {
        df localdf1;
        break label85;
      }
      localIOException1 = localIOException1;
      localdf1 = null;
      localIOException2 = localIOException1;
    }
    label85:
    return localdf1;
  }
  
  protected void a(df paramdf)
  {
    t.a(this.a, null);
    if ((this.a.getActivity() == null) || (this.a.getActivity().isFinishing())) {
      return;
    }
    if (paramdf == null)
    {
      t.f(this.a);
      return;
    }
    if (paramdf.a)
    {
      t.a(this.a, paramdf);
      return;
    }
    this.a.g("activation_waiting_dialog");
    t.a(this.a, paramdf.c);
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    this.b.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.z
 * JD-Core Version:    0.7.0.1
 */