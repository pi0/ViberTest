package org.acra.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.acra.ReportField;
import org.acra.ReportingInteractionMode;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface ReportsCrashes
{
  String[] additionalDropBoxTags() default {};
  
  String[] additionalSharedPreferences() default {};
  
  ReportField[] customReportContent() default {};
  
  boolean deleteUnapprovedReportsOnApplicationStart() default true;
  
  int dropboxCollectionMinutes() default 5;
  
  boolean forceCloseDialogAfterToast() default false;
  
  String formKey();
  
  String formUri() default "";
  
  String formUriBasicAuthLogin() default "ACRA-NULL-STRING";
  
  String formUriBasicAuthPassword() default "ACRA-NULL-STRING";
  
  boolean includeDropBoxSystemTags() default false;
  
  String[] logcatArguments() default {"-t", "200", "-v", "time"};
  
  String mailTo() default "";
  
  ReportingInteractionMode mode() default ReportingInteractionMode.SILENT;
  
  int resDialogCommentPrompt() default 0;
  
  int resDialogEmailPrompt() default 0;
  
  int resDialogIcon() default 17301543;
  
  int resDialogOkToast() default 0;
  
  int resDialogText() default 0;
  
  int resDialogTitle() default 0;
  
  int resNotifIcon() default 17301624;
  
  int resNotifText() default 0;
  
  int resNotifTickerText() default 0;
  
  int resNotifTitle() default 0;
  
  int resToastText() default 0;
  
  int sharedPreferencesMode() default 0;
  
  String sharedPreferencesName() default "";
  
  int socketTimeout() default 3000;
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.annotation.ReportsCrashes
 * JD-Core Version:    0.7.0.1
 */