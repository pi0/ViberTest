package org.acra;

import android.os.Looper;
import android.widget.Toast;
import org.acra.annotation.ReportsCrashes;

class ErrorReporter$1
  extends Thread
{
  ErrorReporter$1(ErrorReporter paramErrorReporter) {}
  
  public void run()
  {
    Looper.prepare();
    Toast.makeText(ErrorReporter.access$000(), ACRA.getConfig().resToastText(), 1).show();
    Looper.loop();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.ErrorReporter.1
 * JD-Core Version:    0.7.0.1
 */