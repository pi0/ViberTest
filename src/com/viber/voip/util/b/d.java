package com.viber.voip.util.b;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class d
  extends FutureTask<Result>
{
  d(a parama, Callable paramCallable)
  {
    super(paramCallable);
  }
  
  protected void done()
  {
    try
    {
      a.b(this.a, get());
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.w("AsyncTask", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      a.b(this.a, null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.d
 * JD-Core Version:    0.7.0.1
 */