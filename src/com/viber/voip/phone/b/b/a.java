package com.viber.voip.phone.b.b;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.util.SparseIntArray;
import android.view.ContextThemeWrapper;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

public class a
  extends DialogFragment
{
  private SparseIntArray a = new SparseIntArray();
  
  private a()
  {
    this.a.put(6, 2131493812);
    this.a.put(4, 2131493816);
    this.a.put(3, 2131493818);
    this.a.put(2, 2131493817);
    this.a.put(5, 2131493819);
  }
  
  public static a a(int paramInt, String paramString)
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_reason", paramInt);
    localBundle.putString("arg_caller", paramString);
    locala.setArguments(localBundle);
    return locala;
  }
  
  private String a()
  {
    return getArguments().getString("arg_caller");
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(getActivity(), 2131558709));
    localBuilder.setTitle(2131493811);
    int i = getArguments().getInt("arg_reason");
    if ((i == 1) || (i == 7))
    {
      localBuilder.setMessage(getString(2131493813));
      localBuilder.setNegativeButton(getString(2131493814), null);
      localBuilder.setPositiveButton(getString(2131493815), new b(this));
      bc localbc = bc.a();
      u localu = com.viber.voip.a.a.z;
      com.viber.voip.a.a.z.getClass();
      localbc.a(localu.b("345"));
    }
    for (;;)
    {
      return localBuilder.create();
      if ((i == 2) || (i == 4)) {
        localBuilder.setTitle(2131493811);
      }
      int j = this.a.get(i, 2131493818);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a();
      localBuilder.setMessage(getString(j, arrayOfObject));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.b.a
 * JD-Core Version:    0.7.0.1
 */