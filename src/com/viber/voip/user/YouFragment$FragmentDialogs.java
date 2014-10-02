package com.viber.voip.user;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.actionbarsherlock.app.SherlockDialogFragment;

public class YouFragment$FragmentDialogs
  extends SherlockDialogFragment
{
  private static final String DIALOG_ID_ARG = "dialog_id";
  
  public static FragmentDialogs newInstance(int paramInt)
  {
    FragmentDialogs localFragmentDialogs = new FragmentDialogs();
    Bundle localBundle = new Bundle();
    localBundle.putInt("dialog_id", paramInt);
    localFragmentDialogs.setArguments(localBundle);
    return localFragmentDialogs;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    switch (getArguments().getInt("dialog_id"))
    {
    default: 
      return null;
    case 10: 
      View localView = LayoutInflater.from(getActivity()).inflate(2130903347, null);
      EditText localEditText = (EditText)localView.findViewById(2131166168);
      String str = UserData.getName();
      localEditText.setText(str);
      localEditText.setSelection(str.length());
      return new AlertDialog.Builder(getActivity()).setTitle(2131494024).setView(localView).setNegativeButton(2131493558, null).setPositiveButton(2131494012, new YouFragment.FragmentDialogs.1(this, localEditText)).create();
    case 11: 
      return new AlertDialog.Builder(getActivity()).setTitle(2131493943).setMessage(2131493944).setNegativeButton(2131493558, new YouFragment.FragmentDialogs.3(this)).setPositiveButton(2131493557, new YouFragment.FragmentDialogs.2(this)).create();
    }
    return new AlertDialog.Builder(getActivity()).setTitle(2131494615).setMessage(2131494616).setPositiveButton(2131493557, null).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.FragmentDialogs
 * JD-Core Version:    0.7.0.1
 */