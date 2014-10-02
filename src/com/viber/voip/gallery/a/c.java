package com.viber.voip.gallery.a;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;

public abstract class c<D>
  extends AsyncTaskLoader<D>
{
  private D a;
  
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  public void deliverResult(D paramD)
  {
    if (isReset()) {}
    do
    {
      return;
      this.a = paramD;
    } while (!isStarted());
    super.deliverResult(paramD);
  }
  
  protected void onReset()
  {
    super.onReset();
    onStopLoading();
    this.a = null;
  }
  
  protected void onStartLoading()
  {
    super.onStartLoading();
    if (this.a != null) {
      deliverResult(this.a);
    }
    if ((takeContentChanged()) || (this.a == null)) {
      forceLoad();
    }
  }
  
  protected void onStopLoading()
  {
    super.onStopLoading();
    cancelLoad();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a.c
 * JD-Core Version:    0.7.0.1
 */