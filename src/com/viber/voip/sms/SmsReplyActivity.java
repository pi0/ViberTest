package com.viber.voip.sms;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.aa;
import com.viber.voip.a.af;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.h.b;
import com.viber.voip.h.d;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.ui.PttViewController;
import com.viber.voip.messages.ui.popup.view.PopupStickerQuickReply;
import com.viber.voip.util.gl;
import com.viber.voip.util.w;

public class SmsReplyActivity
  extends ViberActivity
  implements TextWatcher, View.OnClickListener
{
  public static boolean a = false;
  private static final String x = s.class.getSimpleName();
  private View b;
  private View c;
  private View d;
  private TextView e;
  private TextView f;
  private EditText g;
  private ImageButton h;
  private ImageButton i;
  private ImageButton j;
  private RelativeLayout k;
  private String l;
  private String m;
  private int n;
  private Handler o = new Handler();
  private boolean p;
  private View q;
  private PopupStickerQuickReply r;
  private View s;
  private PttViewController t;
  private boolean u = true;
  private View.OnTouchListener v = new q(this);
  private Runnable w = new r(this);
  
  private void a(Intent paramIntent)
  {
    a("SmsReplyActivity handleIntent");
    this.l = paramIntent.getStringExtra("number");
    this.m = paramIntent.getStringExtra("sms_body");
    this.n = paramIntent.getIntExtra("sms_id", 0);
    this.p = false;
    w.a(this.l, this.l, new l(this));
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, x, paramString);
  }
  
  private void b()
  {
    this.u = true;
    this.o.removeCallbacks(this.w);
    this.o.postDelayed(this.w, 15000L);
  }
  
  private void c()
  {
    String str = this.g.getText().toString();
    if (!TextUtils.isEmpty(str.trim())) {
      s.a(this.l, this.m, this.n, true, new k(this, str));
    }
  }
  
  private void d()
  {
    this.b = findViewById(2131165712);
    this.c = findViewById(2131166123);
    this.e = ((TextView)findViewById(2131165400));
    this.f = ((TextView)findViewById(2131166125));
    this.d = findViewById(2131165769);
    this.h = ((ImageButton)findViewById(2131165858));
    this.i = ((ImageButton)findViewById(2131165868));
    this.g = ((EditText)findViewById(2131165866));
    this.j = ((ImageButton)findViewById(2131165867));
    this.k = ((RelativeLayout)findViewById(2131166124));
    this.q = findViewById(2131166048);
    this.r = ((PopupStickerQuickReply)findViewById(2131166049));
    this.s = findViewById(2131166050);
    this.t = ((PttViewController)findViewById(2131165697));
    this.h.setOnClickListener(this);
    this.j.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.c.setVisibility(0);
    this.b.setVisibility(8);
    this.g.setHint(2131494230);
    this.g.addTextChangedListener(this);
    this.c.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.k.setOnClickListener(this);
    this.d.setOnTouchListener(this.v);
    this.g.setOnTouchListener(this.v);
    this.f.setOnTouchListener(this.v);
    this.k.setOnTouchListener(this.v);
    if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      this.b.setBackgroundResource(17170444);
    }
    this.r.setStickerSelectListener(new n(this));
    this.s.setOnClickListener(new o(this));
    this.t.setCallbacks(new p(this));
  }
  
  private void e()
  {
    if (this.t.getVisibility() == 8)
    {
      this.t.setVisibility(0);
      this.q.setVisibility(8);
      return;
    }
    this.t.setVisibility(8);
    this.q.setVisibility(0);
  }
  
  private void f()
  {
    boolean bool1 = true;
    if (TextUtils.isEmpty(this.g.getText()))
    {
      int i1 = this.t.getVisibility();
      boolean bool2 = false;
      if (i1 == 0) {
        bool2 = bool1;
      }
      long l1 = a();
      if (l1 != -1L) {
        b.d().a(bool2, new d(l1), bool1);
      }
      while (bool2)
      {
        this.j.setImageResource(2130838048);
        return;
        b.d().a(bool2, new d(this.l), bool1);
      }
      this.j.setImageResource(2130838052);
      return;
    }
    this.j.setImageResource(2130838047);
    ImageButton localImageButton = this.j;
    if (!TextUtils.isEmpty(this.g.getText())) {}
    for (;;)
    {
      localImageButton.setEnabled(bool1);
      return;
      bool1 = false;
    }
  }
  
  public long a()
  {
    ConversationEntityImpl localConversationEntityImpl = as.a().a(this.l);
    if (localConversationEntityImpl != null) {
      return localConversationEntityImpl.getId();
    }
    return -1L;
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onBackPressed()
  {
    a("SmsReplyActivity onBackPressed");
    s.g();
    finish();
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.h)
    {
      s.a(this.l, this.m, this.n, true, null);
      s.g();
      bc.a().a(com.viber.voip.a.a.x.a.d());
    }
    for (;;)
    {
      this.o.removeCallbacks(this.w);
      finish();
      return;
      if ((!TextUtils.isEmpty(this.l)) && (!TextUtils.isEmpty(this.m)))
      {
        boolean bool = TextUtils.isEmpty(this.g.getText());
        if ((paramView != this.j) || (!bool)) {
          j.a(this, 0L, this.l);
        }
        if (paramView == this.j)
        {
          if (TextUtils.isEmpty(this.g.getText()))
          {
            e();
            f();
            return;
          }
          c();
          s.a(this);
          bc.a().a(com.viber.voip.a.a.x.a.c());
        }
        else
        {
          s.a(this.l, this.m, this.n, true, null);
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a("SmsReplyActivity onCreate newIntent " + a);
    if (!a)
    {
      ViberApplication.startHomeActivity();
      finish();
      return;
    }
    gl.b(this);
    setContentView(2130903331);
    d();
    onNewIntent(getIntent());
  }
  
  protected void onDestroy()
  {
    a("SmsReplyActivity onDestroy");
    this.o.removeCallbacks(this.w);
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    a("SmsReplyActivity onNewIntent newIntent=" + a);
    a = false;
    b();
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }
  
  protected void onPause()
  {
    a("SmsReplyActivity onPause");
    this.t.c();
    ViberApplication.getInstance().getPhoneController(false).getPttPlaylist().b(null, true);
    b.d().a(false, new d(-1L), true);
    this.u = true;
    super.onPause();
  }
  
  protected void onResume()
  {
    this.t.b();
    boolean bool;
    if (this.t.getVisibility() == 0)
    {
      bool = true;
      long l1 = a();
      if (l1 == -1L) {
        break label59;
      }
      b.d().a(bool, new d(l1), true);
    }
    for (;;)
    {
      super.onResume();
      return;
      bool = false;
      break;
      label59:
      b.d().a(bool, new d(this.l), true);
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.o.removeCallbacks(this.w);
    f();
  }
  
  public void onUserInteraction()
  {
    a("onUserInteraction");
    this.u = false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.SmsReplyActivity
 * JD-Core Version:    0.7.0.1
 */