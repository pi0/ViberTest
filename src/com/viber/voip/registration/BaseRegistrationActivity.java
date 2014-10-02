package com.viber.voip.registration;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.res.Resources;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;

public abstract class BaseRegistrationActivity
  extends ViberFragmentActivity
{
  protected ActivationController a()
  {
    return ViberApplication.getInstance().getActivationController();
  }
  
  protected void b(String paramString)
  {
    ViberApplication.log(3, "RegistrationActivity--->", paramString);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    case 7: 
    default: 
      return null;
    case 2: 
      return new AlertDialog.Builder(this).setCancelable(true).setTitle(2131493728).setMessage(2131493729).setPositiveButton(2131493557, null).create();
    case 4: 
      return new AlertDialog.Builder(this).setCancelable(true).setTitle(2131494400).setMessage(2131494401).setPositiveButton(2131493557, null).create();
    case 5: 
      return new AlertDialog.Builder(this).setCancelable(true).setTitle(2131493731).setMessage(2131493730).setPositiveButton(2131493557, null).create();
    case 6: 
      return new AlertDialog.Builder(this).setCancelable(true).setTitle(2131493775).setMessage(2131494137).setPositiveButton(2131493683, null).create();
    }
    return new AlertDialog.Builder(this).setTitle(2131494823).setMessage("").setCancelable(false).setPositiveButton(2131493557, new ag(this)).create();
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
    switch (paramInt)
    {
    default: 
      return;
    }
    AlertDialog localAlertDialog = (AlertDialog)paramDialog;
    String str = ViberApplication.getInstance().getActivationController().getActicationCode();
    b("SmsDialog.buildSmsDialog: " + str);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = getResources().getString(2131493556);
    arrayOfObject[1] = str;
    localAlertDialog.setMessage(String.format("%s %s", arrayOfObject));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.BaseRegistrationActivity
 * JD-Core Version:    0.7.0.1
 */