package com.viber.voip.registration;

import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import java.io.IOException;

class aa
  extends AsyncTask<Void, Integer, df>
{
  private com.viber.voip.util.t b = new com.viber.voip.util.t();
  
  private aa(t paramt) {}
  
  protected df a(Void... paramVarArgs)
  {
    String str1 = ViberApplication.getInstance().getHardwareParameters().getUdid();
    String str2 = this.a.g().getRegNumberCanonized();
    cr localcr = new cr(bc.b().n);
    try
    {
      df localdf = localcr.a(str1, str2);
      return localdf;
    }
    catch (IOException localIOException)
    {
      ViberApplication.log(6, "ActivationFragment", localIOException.getMessage(), localIOException);
    }
    return null;
  }
  
  protected void a(df paramdf)
  {
    t.a(this.a, null);
    if ((this.a.getActivity() == null) || (this.a.getActivity().isFinishing())) {
      return;
    }
    if ((paramdf != null) && (paramdf.a)) {
      Toast.makeText(this.a.getActivity(), 2131494353, 1).show();
    }
    t.g(this.a).setEnabled(true);
    this.a.g("activation_waiting_dialog");
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    this.b.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.aa
 * JD-Core Version:    0.7.0.1
 */