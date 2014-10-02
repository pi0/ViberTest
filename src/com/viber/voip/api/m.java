package com.viber.voip.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.ActivationController;

public class m
  implements aa
{
  public void a(Context paramContext, String[] paramArrayOfString, y paramy, Uri paramUri)
  {
    Intent localIntent;
    if (paramArrayOfString.length == 1) {
      if ("welcome".equals(paramArrayOfString[0])) {
        if (ViberApplication.isActivated()) {
          localIntent = new Intent("com.viber.voip.action.MESSAGES");
        }
      }
    }
    for (;;)
    {
      int i;
      if (localIntent != null)
      {
        boolean bool1 = ViberApplication.isActivated();
        i = 0;
        if (!bool1) {}
      }
      for (;;)
      {
        paramy.a(i, localIntent);
        return;
        int n;
        if (4 == ViberUrlHandlerActivity.a().getStep())
        {
          ViberUrlHandlerActivity.a().resumeActivation();
          boolean bool2 = ViberApplication.isActivated();
          n = 0;
          if (!bool2) {
            break label113;
          }
        }
        for (;;)
        {
          paramy.a(n, null);
          return;
          ViberUrlHandlerActivity.a().setStep(0, true);
          break;
          label113:
          n = 3;
        }
        if ("registration".equals(paramArrayOfString[0]))
        {
          if (ViberApplication.isActivated())
          {
            localIntent = new Intent("com.viber.voip.action.MESSAGES");
            break;
          }
          ViberUrlHandlerActivity.a().setStep(0, true);
          paramy.a(3, null);
          return;
        }
        if (paramArrayOfString[0].startsWith("activation"))
        {
          if (ViberApplication.isActivated())
          {
            localIntent = new Intent("com.viber.voip.action.MESSAGES");
            break;
          }
          if (!TextUtils.isEmpty(ViberUrlHandlerActivity.a().getRegNumberCanonized())) {}
          for (int k = 1;; k = 0)
          {
            int m = ViberUrlHandlerActivity.a().getStep();
            if ((1 != m) && (k == 0)) {
              break label297;
            }
            if (1 != m) {
              ViberUrlHandlerActivity.a().setStep(1, false);
            }
            localIntent = new Intent("com.viber.voip.action.ACTIVATION");
            String str = Uri.parse(paramArrayOfString[0]).getQueryParameter("code");
            if (TextUtils.isEmpty(str)) {
              break;
            }
            localIntent.putExtra("activation_code", str);
            break;
          }
          label297:
          ViberUrlHandlerActivity.a().setStep(0, true);
          paramy.a(3, null);
          return;
        }
        if (!"enterdetails".equals(paramArrayOfString[0])) {
          break label403;
        }
        int j = ViberUrlHandlerActivity.a().getStep();
        if (ViberApplication.isActivated())
        {
          ViberUrlHandlerActivity.a().setStep(6, true);
          paramy.a(0, null);
          return;
        }
        if (1 == j) {
          ViberUrlHandlerActivity.a().setStep(1, true);
        }
        for (;;)
        {
          paramy.a(3, null);
          return;
          ViberUrlHandlerActivity.a().setStep(0, true);
        }
        i = 3;
        continue;
        i = 1;
      }
      label403:
      localIntent = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.m
 * JD-Core Version:    0.7.0.1
 */