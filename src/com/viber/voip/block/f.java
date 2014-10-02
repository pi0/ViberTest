package com.viber.voip.block;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.fq;
import com.viber.voip.util.hd;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

class f
  implements DialogInterface.OnClickListener
{
  f(e parame, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.matches(fq.g.pattern()))
    {
      String str2 = hd.a(ViberApplication.getInstance(), str1, str1);
      HashSet localHashSet = new HashSet();
      localHashSet.add(str2);
      i.a(this.b.getActivity(), null, localHashSet, null, false);
      return;
    }
    e.a(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.block.f
 * JD-Core Version:    0.7.0.1
 */