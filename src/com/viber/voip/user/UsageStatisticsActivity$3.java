package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.PreferenceActivity;

class UsageStatisticsActivity$3
  implements DialogInterface.OnClickListener
{
  UsageStatisticsActivity$3(UsageStatisticsActivity paramUsageStatisticsActivity, PreferenceActivity paramPreferenceActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    StatisticsUtil.resetUsageStatistic(this.val$activity);
    UsageStatisticsActivity.access$100(this.this$0, this.val$activity, this.val$activity.getPreferenceScreen());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UsageStatisticsActivity.3
 * JD-Core Version:    0.7.0.1
 */