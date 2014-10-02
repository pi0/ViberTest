package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.user.PublicGroupParticipantDetailsActivity;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.gn;
import com.viber.voip.widget.ah;

public class PublicGroupInfoParticipantView
  extends FrameLayout
  implements View.OnClickListener
{
  private View a;
  private ah b;
  private TextView c;
  private w d;
  private x e;
  private String f;
  private String g;
  private Uri h;
  private long i;
  private long j;
  private boolean k;
  private int l;
  
  public PublicGroupInfoParticipantView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PublicGroupInfoParticipantView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  void a()
  {
    this.b.setImageBitmap(null);
    setVisibility(4);
  }
  
  protected void a(Context paramContext)
  {
    this.d = w.a(paramContext);
    this.e = x.a(paramContext);
    LayoutInflater.from(paramContext).inflate(2130903308, this);
    this.a = findViewById(2131165359);
    this.b = ((ah)findViewById(2131165296));
    this.c = ((TextView)findViewById(2131165400));
  }
  
  public void a(String paramString1, Uri paramUri, boolean paramBoolean, String paramString2, long paramLong1, long paramLong2)
  {
    this.f = paramString1;
    this.h = paramUri;
    this.k = paramBoolean;
    this.i = paramLong1;
    this.g = paramString2;
    this.j = paramLong2;
    if (paramBoolean) {
      if (!TextUtils.isEmpty(paramString1)) {
        this.c.setText(getContext().getString(2131494049, new Object[] { paramString1 }));
      }
    }
    for (;;)
    {
      setVisibility(0);
      this.d.a(paramUri, this.b, this.e);
      return;
      this.c.setText(getContext().getString(2131494050));
      continue;
      this.c.setText(paramString1);
    }
  }
  
  public ah getImage()
  {
    return this.b;
  }
  
  public void onClick(View paramView)
  {
    String str;
    Intent localIntent;
    if (this.k) {
      if (ViberApplication.isTablet())
      {
        str = "com.viber.voip.action.YOU_DIALOG";
        localIntent = new Intent(str);
      }
    }
    for (;;)
    {
      getContext().startActivity(localIntent);
      return;
      str = "com.viber.voip.action.YOU";
      break;
      if (this.l == 3) {
        localIntent = PublicGroupParticipantDetailsActivity.buildIntent(getContext(), this.h, this.f);
      } else if (this.i == 0L) {
        localIntent = gn.a(ViberApplication.isTablet(), this.g, this.f, this.h, true, null);
      } else {
        localIntent = gn.a(ViberApplication.isTablet(), this.i, this.j, this.f, "", this.h, this.g, null);
      }
    }
  }
  
  public void setDefaultOnClickListener(int paramInt)
  {
    this.l = paramInt;
    this.a.setOnClickListener(this);
  }
  
  public void setImageResource(int paramInt)
  {
    this.b.setImageResource(paramInt);
  }
  
  public void setImageSize(int paramInt)
  {
    this.b.setLayoutParams(new LinearLayout.LayoutParams(paramInt, paramInt));
    invalidate();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoParticipantView
 * JD-Core Version:    0.7.0.1
 */