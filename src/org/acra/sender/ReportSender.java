package org.acra.sender;

import org.acra.CrashReportData;

public abstract interface ReportSender
{
  public abstract void send(CrashReportData paramCrashReportData);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.sender.ReportSender
 * JD-Core Version:    0.7.0.1
 */