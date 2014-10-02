package com.viber.voip.user;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.facebook.FacebookException;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.fb.aj;
import com.viber.voip.messages.extras.fb.c;
import com.viber.voip.messages.extras.fb.s;

final class LoadFacebookDetailsTask
  extends AsyncTask<s, Void, FacebookDetails>
{
  private static final String LOG_TAG = LoadFacebookDetailsTask.class.getSimpleName();
  private String errorMessage;
  private boolean isTaskFinished;
  private final FacebookDetailsListener listener;
  private Context mContext;
  private ProgressDialog progressDialog;
  
  LoadFacebookDetailsTask(Context paramContext, FacebookDetailsListener paramFacebookDetailsListener)
  {
    this.mContext = paramContext;
    this.listener = paramFacebookDetailsListener;
    this.errorMessage = "";
    this.progressDialog = new ProgressDialog(paramContext);
    this.progressDialog.setMessage(paramContext.getResources().getString(2131494086));
  }
  
  private boolean isActivityDestroyed()
  {
    return ((Activity)this.mContext).isFinishing();
  }
  
  private FacebookDetails loadFacebookDetails(s params)
  {
    aj localaj;
    try
    {
      localaj = params.d();
      if (localaj == null) {
        throw new c("Facebook user profile is null");
      }
    }
    catch (FacebookException localFacebookException)
    {
      throw new c(localFacebookException.getMessage());
    }
    String str1 = localaj.b();
    if (str1 == null) {
      str1 = "";
    }
    String str2 = localaj.a();
    if (str2 == null) {
      throw new c("Facebook user id is null");
    }
    return new FacebookDetails(str1, params.a(str2));
  }
  
  private void restoreProgressDialog()
  {
    this.progressDialog = new ProgressDialog(this.mContext);
    this.progressDialog.setMessage(this.mContext.getResources().getString(2131494086));
    this.progressDialog.show();
  }
  
  public void cancelProgressDialog()
  {
    if ((this.progressDialog.isShowing()) && (!isActivityDestroyed())) {
      this.progressDialog.dismiss();
    }
  }
  
  protected FacebookDetails doInBackground(s... paramVarArgs)
  {
    s locals = paramVarArgs[0];
    try
    {
      FacebookDetails localFacebookDetails = loadFacebookDetails(locals);
      return localFacebookDetails;
    }
    catch (c localc)
    {
      this.errorMessage = localc.getMessage();
      ViberApplication.log(6, LOG_TAG, "Failed to load facebook details: " + localc.getMessage(), localc);
    }
    return null;
  }
  
  public boolean isFinished()
  {
    return this.isTaskFinished;
  }
  
  protected void onPostExecute(FacebookDetails paramFacebookDetails)
  {
    this.isTaskFinished = true;
    cancelProgressDialog();
    if (paramFacebookDetails != null)
    {
      this.listener.onLoaded(paramFacebookDetails);
      return;
    }
    this.listener.onLoadingError(this.errorMessage);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    this.isTaskFinished = false;
    this.progressDialog.show();
  }
  
  public void restoreTask(Context paramContext)
  {
    this.mContext = paramContext;
    restoreProgressDialog();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.LoadFacebookDetailsTask
 * JD-Core Version:    0.7.0.1
 */