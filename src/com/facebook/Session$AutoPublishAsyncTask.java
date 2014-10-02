package com.facebook;

import android.content.Context;
import android.os.AsyncTask;
import com.facebook.internal.Utility;

class Session$AutoPublishAsyncTask
  extends AsyncTask<Void, Void, Void>
{
  private final Context mApplicationContext;
  private final String mApplicationId;
  
  public Session$AutoPublishAsyncTask(Session paramSession, String paramString, Context paramContext)
  {
    this.mApplicationId = paramString;
    this.mApplicationContext = paramContext.getApplicationContext();
  }
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      Settings.publishInstallAndWait(this.mApplicationContext, this.mApplicationId);
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Utility.logd("Facebook-publish", localException.getMessage());
      }
    }
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    synchronized (this.this$0)
    {
      Session.access$902(this.this$0, null);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.Session.AutoPublishAsyncTask
 * JD-Core Version:    0.7.0.1
 */