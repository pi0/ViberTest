package com.viber.voip.messages.extras.fb;

import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.io.IOException;
import java.net.MalformedURLException;

public class al
  extends AsyncTask<Void, Void, Void>
{
  private String a = null;
  private Activity b;
  private s c;
  private ae d;
  private Dialog e;
  private Handler f;
  
  public al(s params, Activity paramActivity, ae paramae)
  {
    this.b = paramActivity;
    this.c = params;
    this.d = paramae;
    this.f = dc.a(dk.a);
  }
  
  private static Dialog a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    return a(paramActivity, paramInt1, paramActivity.getString(paramInt2));
  }
  
  private static Dialog a(Activity paramActivity, int paramInt, String paramString)
  {
    Dialog localDialog = new Dialog(paramActivity, 2131558638);
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(2130903193);
    ImageView localImageView = (ImageView)localDialog.findViewById(2131165785);
    ((TextView)localDialog.findViewById(2131165787)).setText(paramString);
    if (paramInt == 2130838197)
    {
      localDialog.setCanceledOnTouchOutside(true);
      localDialog.findViewById(2131165786).setVisibility(0);
      localImageView.setVisibility(8);
      return localDialog;
    }
    localImageView.setImageResource(paramInt);
    return localDialog;
  }
  
  private void a(Dialog paramDialog, int paramInt)
  {
    this.f.postDelayed(new am(this, paramDialog), paramInt);
  }
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      this.c.e();
      return null;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        this.a = localMalformedURLException.toString();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        this.a = localIOException.toString();
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        this.a = localIllegalArgumentException.toString();
      }
    }
    catch (FacebookException localFacebookException)
    {
      for (;;)
      {
        this.a = localFacebookException.toString();
      }
    }
  }
  
  protected void a(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    if (this.e != null) {
      this.e.dismiss();
    }
    if ((!((ViberApplication)this.b.getApplication()).isOnForeground()) || (this.b.isFinishing())) {
      return;
    }
    if (this.a == null) {}
    for (this.e = a(this.b, 2130838198, 2131493959);; this.e = a(this.b, 2130838199, this.a))
    {
      this.e.show();
      a(this.e, 2000);
      return;
      if (this.a.contains("Error validating access token"))
      {
        if (this.d == null) {
          break;
        }
        this.d.onFacebookValidationError();
        return;
      }
    }
  }
  
  protected void onPreExecute()
  {
    this.e = a(this.b, 2130838197, 2131493963);
    this.e.show();
    super.onPreExecute();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.al
 * JD-Core Version:    0.7.0.1
 */