package org.acra;

import android.view.View;
import android.view.View.OnClickListener;

class CrashReportDialog$2
  implements View.OnClickListener
{
  CrashReportDialog$2(CrashReportDialog paramCrashReportDialog) {}
  
  public void onClick(View paramView)
  {
    ErrorReporter.getInstance().deletePendingReports();
    this.this$0.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.CrashReportDialog.2
 * JD-Core Version:    0.7.0.1
 */