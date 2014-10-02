package com.viber.voip.user;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ba;
import com.viber.voip.a.bc;
import com.viber.voip.messages.extras.fb.ad;
import com.viber.voip.messages.extras.fb.ae;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.al;
import com.viber.voip.messages.extras.twitter.l;
import com.viber.voip.util.ft;

public class YouViberExperienceLayout
  extends LinearLayout
  implements View.OnClickListener, ae
{
  private ad authListener;
  private final com.viber.voip.messages.extras.fb.s fbManager = ViberApplication.getInstance().getFacebookManager();
  private Activity mActivity;
  private View mSmsMarginView;
  private View mSmsView;
  
  public YouViberExperienceLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public YouViberExperienceLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View localView = LayoutInflater.from(paramContext).inflate(2130903086, this);
    localView.findViewById(2131165467).setOnClickListener(this);
    localView.findViewById(2131165466).setOnClickListener(this);
    localView.findViewById(2131165470).setOnClickListener(this);
    this.mSmsView = localView.findViewById(2131165469);
    this.mSmsMarginView = localView.findViewById(2131165468);
  }
  
  private void facebookClicked()
  {
    this.authListener = new YouViberExperienceLayout.1(this);
    if (this.fbManager.b() == ah.c)
    {
      postFacebookInvite();
      return;
    }
    if (this.fbManager.b() == ah.b)
    {
      this.fbManager.a(this.mActivity, this.authListener);
      return;
    }
    this.fbManager.a(this.mActivity, this.authListener, true);
  }
  
  private void mailClicked()
  {
    bc.a().a(a.h.c());
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setFlags(268435456);
    localIntent.setType("plain/text");
    localIntent.putExtra("android.intent.extra.SUBJECT", getContext().getString(2131494123));
    localIntent.putExtra("android.intent.extra.TEXT", getContext().getString(2131494131));
    getContext().startActivity(Intent.createChooser(localIntent, getContext().getString(2131494123)));
  }
  
  private void postFacebookInvite()
  {
    if (ft.c(this.mActivity)) {
      new al(this.fbManager, this.mActivity, this).execute(new Void[0]);
    }
  }
  
  private void smsClicked()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    if (Build.VERSION.SDK_INT > 18) {
      localIntent.setData(Uri.parse("sms:"));
    }
    for (;;)
    {
      localIntent.putExtra("sms_body", com.viber.voip.sms.s.b(getContext()));
      try
      {
        getContext().startActivity(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        localActivityNotFoundException.printStackTrace();
      }
      localIntent.setType("vnd.android-dir/mms-sms");
    }
  }
  
  private void twitterClicked()
  {
    l locall = ViberApplication.getInstance().getTwitterManager();
    locall.a(this.mActivity, new YouViberExperienceLayout.2(this, locall));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131165468: 
    default: 
      return;
    case 2131165467: 
      facebookClicked();
      return;
    case 2131165466: 
      twitterClicked();
      return;
    case 2131165470: 
      mailClicked();
      return;
    }
    smsClicked();
  }
  
  public void onFacebookValidationError()
  {
    this.fbManager.a(this.mActivity, this.authListener, true);
  }
  
  public void setActivity(Activity paramActivity)
  {
    this.mActivity = paramActivity;
  }
  
  public void setSmsVisible(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mSmsView.setOnClickListener(this);
      return;
    }
    this.mSmsMarginView.setVisibility(8);
    this.mSmsView.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouViberExperienceLayout
 * JD-Core Version:    0.7.0.1
 */