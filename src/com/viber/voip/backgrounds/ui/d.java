package com.viber.voip.backgrounds.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.actionbarsherlock.ActionBarSherlock;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.backgrounds.a;

class d
  extends AsyncTask<Object, Object, Object>
{
  d(BackgroundGalleryActivity paramBackgroundGalleryActivity) {}
  
  protected Object doInBackground(Object... paramVarArgs)
  {
    com.viber.voip.backgrounds.q localq = (com.viber.voip.backgrounds.q)paramVarArgs[0];
    bc.a().a(BackgroundGalleryActivity.h(this.a).a(localq.a));
    Uri[] arrayOfUri = a.a().a(ViberApplication.getInstance(), localq);
    if ((arrayOfUri != null) && (arrayOfUri[1] != null) && (arrayOfUri[0] != null))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("landscapeUri", arrayOfUri[1].toString());
      localBundle.putString("portraitUri", arrayOfUri[0].toString());
      localBundle.putString("backgroundUri", localq.g.toString());
      this.a.setResult(-1, new Intent().putExtras(localBundle));
      return "";
    }
    return null;
  }
  
  protected void onPostExecute(Object paramObject)
  {
    super.onPostExecute(paramObject);
    BackgroundGalleryActivity.i(this.a).setProgressBarIndeterminateVisibility(false);
    if (paramObject != null) {
      this.a.finish();
    }
  }
  
  protected void onPreExecute()
  {
    BackgroundGalleryActivity.g(this.a).setProgressBarIndeterminateVisibility(true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.ui.d
 * JD-Core Version:    0.7.0.1
 */