package org.acra;

public enum ReportingInteractionMode
{
  static
  {
    NOTIFICATION = new ReportingInteractionMode("NOTIFICATION", 1);
    TOAST = new ReportingInteractionMode("TOAST", 2);
    ReportingInteractionMode[] arrayOfReportingInteractionMode = new ReportingInteractionMode[3];
    arrayOfReportingInteractionMode[0] = SILENT;
    arrayOfReportingInteractionMode[1] = NOTIFICATION;
    arrayOfReportingInteractionMode[2] = TOAST;
    $VALUES = arrayOfReportingInteractionMode;
  }
  
  private ReportingInteractionMode() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.ReportingInteractionMode
 * JD-Core Version:    0.7.0.1
 */