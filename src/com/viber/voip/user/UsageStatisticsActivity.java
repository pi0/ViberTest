package com.viber.voip.user;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.text.Html;
import android.widget.Button;
import android.widget.TextView;
import com.viber.voip.app.ViberPreferenceActivity;

public class UsageStatisticsActivity
  extends ViberPreferenceActivity
{
  private static final String LOG_TAG = UsageStatisticsActivity.class.getName();
  private static final String PREF_3G_DATA = "3g_data";
  private static final String PREF_DATA_STATISTIC = "data_statistic";
  private static final String PREF_RECEIVED_MSG = "msg_received";
  private static final String PREF_SENT_MSG = "msg_sent";
  private static final String PREF_WIFI_DATA = "wifi_data";
  private static final String SUMMARY_COLOR = "#017dc5";
  
  private void initViews()
  {
    ((TextView)findViewById(2131165573)).setText(2131494125);
    Button localButton = (Button)findViewById(2131166059);
    localButton.setVisibility(0);
    localButton.setOnClickListener(new UsageStatisticsActivity.1(this));
  }
  
  private void showResetDialog(PreferenceActivity paramPreferenceActivity)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(paramPreferenceActivity).setMessage(2131494005).setNegativeButton(2131494006, new UsageStatisticsActivity.3(this, paramPreferenceActivity)).setPositiveButton(2131493558, new UsageStatisticsActivity.2(this)).create();
    localAlertDialog.requestWindowFeature(1);
    localAlertDialog.show();
  }
  
  private void updateStatistics(Context paramContext, PreferenceScreen paramPreferenceScreen)
  {
    String str1 = StatisticsUtil.getViberWifiStatistic(paramContext);
    String str2 = StatisticsUtil.getViber3GStatistic(paramContext);
    if ((str1 != null) && (str2 != null))
    {
      paramPreferenceScreen.findPreference("wifi_data").setSummary(Html.fromHtml("<font color=\"#017dc5\">" + str1 + "</font>"));
      paramPreferenceScreen.findPreference("3g_data").setSummary(Html.fromHtml("<font color=\"#017dc5\">" + str2 + "</font>"));
    }
    for (;;)
    {
      int i = StatisticsUtil.getSentMsgStatisticsCount(paramContext);
      paramPreferenceScreen.findPreference("msg_sent").setSummary(Html.fromHtml("<font color=\"#017dc5\">" + i + "</font>"));
      int j = StatisticsUtil.getRecMsgStatisticsCount(paramContext);
      paramPreferenceScreen.findPreference("msg_received").setSummary(Html.fromHtml("<font color=\"#017dc5\">" + j + "</font>"));
      return;
      Preference localPreference = paramPreferenceScreen.findPreference("data_statistic");
      if (localPreference != null) {
        paramPreferenceScreen.removePreference(localPreference);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903303);
    addPreferencesFromResource(2131034128);
    initViews();
    updateStatistics(this, getPreferenceScreen());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UsageStatisticsActivity
 * JD-Core Version:    0.7.0.1
 */