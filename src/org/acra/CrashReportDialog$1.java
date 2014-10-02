package org.acra;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import org.acra.annotation.ReportsCrashes;

class CrashReportDialog$1
  implements View.OnClickListener
{
  CrashReportDialog$1(CrashReportDialog paramCrashReportDialog) {}
  
  public void onClick(View paramView)
  {
    ErrorReporter localErrorReporter = ErrorReporter.getInstance();
    localErrorReporter.getClass();
    ErrorReporter.ReportsSenderWorker localReportsSenderWorker = new ErrorReporter.ReportsSenderWorker(localErrorReporter);
    localReportsSenderWorker.setApprovePendingReports();
    if (CrashReportDialog.access$000(this.this$0) != null) {
      localReportsSenderWorker.setUserComment(this.this$0.mReportFileName, CrashReportDialog.access$000(this.this$0).getText().toString());
    }
    if ((CrashReportDialog.access$100(this.this$0) != null) && (CrashReportDialog.access$200(this.this$0) != null))
    {
      String str = CrashReportDialog.access$200(this.this$0).getText().toString();
      SharedPreferences.Editor localEditor = CrashReportDialog.access$100(this.this$0).edit();
      localEditor.putString("acra.user.email", str);
      localEditor.commit();
      localReportsSenderWorker.setUserEmail(this.this$0.mReportFileName, str);
    }
    Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from CrashReportDialog");
    localReportsSenderWorker.start();
    int i = ACRA.getConfig().resDialogOkToast();
    if (i != 0) {
      Toast.makeText(this.this$0.getApplicationContext(), i, 1).show();
    }
    this.this$0.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.CrashReportDialog.1
 * JD-Core Version:    0.7.0.1
 */