package org.acra;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;

final class ErrorReporter$ReportsSenderWorker
  extends Thread
{
  private boolean mApprovePendingReports = false;
  private String mCommentedReportFileName = null;
  private boolean mSendOnlySilentReports = false;
  private String mUserComment = null;
  private String mUserEmail = null;
  
  public ErrorReporter$ReportsSenderWorker(ErrorReporter paramErrorReporter) {}
  
  public ErrorReporter$ReportsSenderWorker(ErrorReporter paramErrorReporter, boolean paramBoolean)
  {
    this.mSendOnlySilentReports = paramBoolean;
  }
  
  private PowerManager.WakeLock acquireWakeLock()
  {
    PackageManager localPackageManager = ErrorReporter.access$000().getPackageManager();
    int i = 0;
    if (localPackageManager != null)
    {
      int j = localPackageManager.checkPermission("android.permission.WAKE_LOCK", ErrorReporter.access$000().getPackageName());
      i = 0;
      if (j == 0) {
        i = 1;
      }
    }
    if (i == 0) {
      return null;
    }
    PowerManager.WakeLock localWakeLock = ((PowerManager)ErrorReporter.access$000().getSystemService("power")).newWakeLock(1, "ACRA wakelock");
    localWakeLock.acquire();
    return localWakeLock;
  }
  
  public void run()
  {
    PowerManager.WakeLock localWakeLock = acquireWakeLock();
    try
    {
      if (this.mApprovePendingReports)
      {
        this.this$0.approvePendingReports();
        this.mCommentedReportFileName = this.mCommentedReportFileName.replace(".stacktrace", "-approved.stacktrace");
      }
      ErrorReporter.access$100(ErrorReporter.access$000(), this.mCommentedReportFileName, this.mUserComment, this.mUserEmail);
      this.this$0.checkAndSendReports(ErrorReporter.access$000(), this.mSendOnlySilentReports);
      return;
    }
    finally
    {
      if (localWakeLock != null) {
        localWakeLock.release();
      }
    }
  }
  
  public void setApprovePendingReports()
  {
    this.mApprovePendingReports = true;
  }
  
  void setUserComment(String paramString1, String paramString2)
  {
    this.mCommentedReportFileName = paramString1;
    this.mUserComment = paramString2;
  }
  
  void setUserEmail(String paramString1, String paramString2)
  {
    this.mCommentedReportFileName = paramString1;
    this.mUserEmail = paramString2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.ErrorReporter.ReportsSenderWorker
 * JD-Core Version:    0.7.0.1
 */