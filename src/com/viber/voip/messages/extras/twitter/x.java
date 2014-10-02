package com.viber.voip.messages.extras.twitter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.dexshared.TwitterHelper;
import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.aw;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.at;

class x
  extends AsyncTask<Void, Void, String>
{
  private Activity b;
  private String c;
  private Dialog d;
  
  public x(l paraml, Activity paramActivity, String paramString)
  {
    this.b = paramActivity;
    this.c = paramString;
  }
  
  private Dialog a(int paramInt1, int paramInt2)
  {
    Dialog localDialog = new Dialog(this.b, 2131558638);
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(2130903193);
    ImageView localImageView = (ImageView)localDialog.findViewById(2131165785);
    ((TextView)localDialog.findViewById(2131165787)).setText(l.g(this.a).getString(paramInt2));
    if (paramInt1 == 2130838197)
    {
      localDialog.setCanceledOnTouchOutside(true);
      localDialog.findViewById(2131165786).setVisibility(0);
      localImageView.setVisibility(8);
      return localDialog;
    }
    localImageView.setImageResource(paramInt1);
    return localDialog;
  }
  
  private void a()
  {
    dc.a(dk.a).postDelayed(new y(this), 2000L);
  }
  
  protected String a(Void... paramVarArgs)
  {
    if ((this.c != null) && (!TextUtils.isEmpty(this.c)))
    {
      String str = l.a(this.a).updateTwitterStatus(this.c);
      if (str == null) {
        str = "error";
      }
      while (str.length() > 0) {
        return str;
      }
      return null;
    }
    return this.b.getResources().getString(2131493953);
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    at.a(this.d);
    if (paramString != null)
    {
      bc.a().a(l.e(this.a).a.a(aq.b, paramString));
      if (paramString.equals("error"))
      {
        this.d = a(2130838199, 2131493962);
        this.d.show();
        a();
      }
      for (;;)
      {
        l.d(this.a, paramString);
        return;
        l.a(this.a, paramString, false);
      }
    }
    this.d = a(2130838198, 2131493959);
    this.d.show();
    a();
    l.f(this.a);
  }
  
  protected void onPreExecute()
  {
    this.d = a(2130838197, 2131494113);
    this.d.show();
    l.d(this.a);
    super.onPreExecute();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.x
 * JD-Core Version:    0.7.0.1
 */