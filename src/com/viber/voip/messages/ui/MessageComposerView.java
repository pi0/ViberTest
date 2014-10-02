package com.viber.voip.messages.ui;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.location.LocationManager;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.TextKeyListener;
import android.text.method.TextKeyListener.Capitalize;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ac;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.messages.LocationEditText;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.ao;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.v;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.sms.s;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.user.SchedulingUtils;
import com.viber.voip.widget.RadioButton;
import com.zoobe.sdk.helper.ZoobeResult;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MessageComposerView
  extends LinearLayout
  implements bj, p, u
{
  private static final String a = MessageComposerView.class.getSimpleName();
  private com.viber.voip.messages.i A;
  private m B = com.viber.voip.a.a.n;
  private int C;
  private String D;
  private h E;
  private ai F;
  private ao G;
  private ISoundService H;
  private ConversationFragment I;
  private InputMethodManager J;
  private TextWatcher K = new bw(this);
  private final Runnable L = new bx(this);
  private cz M;
  private cy N;
  private da O;
  private cv P;
  private final int[] b = { 2131099673 };
  private cw c;
  private boolean d;
  private boolean e;
  private boolean f;
  private Context g;
  private com.viber.voip.messages.d h;
  private Handler i;
  private String j;
  private LocationManager k;
  private boolean l = false;
  private View m;
  private LocationEditText n;
  private RadioButton o;
  private RadioButton p;
  private RadioButton q;
  private ImageButton r;
  private TextView s;
  private Runnable t;
  private bb u;
  private boolean v = false;
  private boolean w;
  private boolean x;
  private AnimationDrawable y;
  private ViberApplication z;
  
  public MessageComposerView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public MessageComposerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  @TargetApi(11)
  public MessageComposerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(int paramInt)
  {
    if (l())
    {
      boolean bool = ViberApplication.preferences().b(j.at(), j.au());
      if ((this.H != null) && (bool)) {
        this.H.playSample(paramInt, 1.0F, 1.0F, 0, 0, 1.0F);
      }
    }
  }
  
  private void a(Context paramContext)
  {
    this.g = paramContext;
    this.J = ((InputMethodManager)getContext().getSystemService("input_method"));
    this.C = paramContext.getResources().getInteger(2131427337);
    if (!isInEditMode())
    {
      this.z = ViberApplication.getInstance();
      this.A = this.z.getMessagesManager();
      this.z.getPhoneController(false).addReadyListener(new cg(this));
    }
    this.i = new Handler();
    setOrientation(0);
    this.m = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903252, this);
    this.r = ((ImageButton)findViewById(2131165917));
    this.r.setOnClickListener(new cm(this));
    this.o = ((RadioButton)findViewById(2131165913));
    this.p = ((RadioButton)findViewById(2131165914));
    this.q = ((RadioButton)findViewById(2131165918));
    if ((this.E != null) && (this.E.t()))
    {
      this.q.setEnabled(false);
      this.q.setVisibility(8);
      this.r.setVisibility(0);
    }
    this.P = new cv(this, null);
    this.o.setOnClickListener(this.P);
    this.p.setOnClickListener(this.P);
    this.q.setOnClickListener(this.P);
    this.n = ((LocationEditText)findViewById(2131165915));
    this.n.addTextChangedListener(new bg(bd.a(), this.n, this.B));
    this.i.removeCallbacks(this.L);
    this.i.postDelayed(this.L, 2000L);
    this.n.setOnInterfaceLocationClickListener(new cn(this));
    this.n.addTextChangedListener(this.K);
    this.n.setKeyListener(new TextKeyListener(TextKeyListener.Capitalize.SENTENCES, true));
    this.n.setOnClickListener(new co(this));
    this.n.setRightImageResource(2130837630);
    if (!isInEditMode())
    {
      this.k = ((LocationManager)paramContext.getSystemService("location"));
      this.v = Settings.Secure.getString(paramContext.getContentResolver(), "default_input_method").toLowerCase().contains("swiftkey");
      this.u = new bb(paramContext, this.v);
    }
  }
  
  private void b(MessageEntityImpl paramMessageEntityImpl)
  {
    if (this.G != null) {
      this.i.post(new cc(this, paramMessageEntityImpl));
    }
  }
  
  private String d(String paramString)
  {
    Matcher localMatcher = bb.a.matcher(paramString.subSequence(0, paramString.length()));
    bd localbd = bd.a();
    while (localMatcher.find())
    {
      String str = localMatcher.group(0);
      bf localbf = localbd.b(str);
      if (str != null) {
        paramString = paramString.replace(str, localbf.a());
      }
    }
    return paramString;
  }
  
  private static void e(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public static void h()
  {
    e("setShowStickerMenuAnimation");
    ViberApplication.preferences().a(j.az(), 0);
  }
  
  private void i()
  {
    int i1 = ViberApplication.preferences().b(j.az(), 3);
    e("setStickerButtonAnimation:" + i1);
    if (i1 < 3)
    {
      int i2 = i1 + 1;
      ViberApplication.preferences().a(j.az(), i2);
      SchedulingUtils.doAfterLayout(this.p, new cp(this));
      return;
    }
    this.p.setButtonDrawable(2130838059);
  }
  
  private boolean j()
  {
    return TextUtils.isEmpty(this.n.getText().toString().trim());
  }
  
  private void k()
  {
    if (this.E != null) {
      if (this.E.k() == null) {
        break label48;
      }
    }
    label48:
    for (String str = this.E.k();; str = "")
    {
      if (this.D != null)
      {
        str = this.D;
        this.D = null;
      }
      setMessageDraft(str);
      return;
    }
  }
  
  private boolean l()
  {
    ISoundService localISoundService = this.H;
    boolean bool = false;
    if (localISoundService != null)
    {
      int i1 = this.H.getStreamVolume(this.H.stream_Notification());
      bool = false;
      if (i1 != 0) {
        bool = true;
      }
    }
    return bool;
  }
  
  private void m()
  {
    if (this.E == null) {}
    PhoneControllerWrapper localPhoneControllerWrapper;
    do
    {
      return;
      localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
      if ((localPhoneControllerWrapper != null) && (this.j != null) && (!this.E.l()) && (!this.x))
      {
        localPhoneControllerWrapper.handleUserIsTyping(this.j, true);
        return;
      }
    } while (localPhoneControllerWrapper == null);
    localPhoneControllerWrapper.handleGroupUserIsTyping(this.E.d(), true);
  }
  
  private void n()
  {
    if (this.v) {}
    for (String str1 = d(this.n.getText().toString());; str1 = this.n.getText().toString())
    {
      String str2 = str1.trim();
      ViberApplication.getInstance();
      if (!TextUtils.isEmpty(str2)) {
        a(new by(this, str2));
      }
      return;
    }
  }
  
  private void o()
  {
    Editable localEditable = this.n.getText();
    if ((localEditable != null) && (localEditable.length() > 0)) {
      setMessageEditText("");
    }
  }
  
  private void p()
  {
    if (this.E != null)
    {
      if (a()) {
        break label52;
      }
      bc.a().a(this.B.a(true));
      if (this.k.isProviderEnabled("network")) {
        setShareLocationOption(true);
      }
    }
    else
    {
      return;
    }
    f();
    return;
    label52:
    bc.a().a(this.B.a(false));
    setShareLocationOption(false);
  }
  
  private void q()
  {
    if (this.E != null)
    {
      boolean bool = this.k.isProviderEnabled("network");
      if ((this.w) && (!bool)) {
        this.w = false;
      }
      setShareLocationOption(this.w);
    }
  }
  
  private void r()
  {
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation1.setDuration(200L);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation2.setDuration(400L);
    this.i.post(new ck(this, localAlphaAnimation1));
    this.i.postDelayed(new cl(this, localAlphaAnimation2), 1600L);
  }
  
  private void setShareLocationOption(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.n.setRightImageResource(2130837631);
      this.s.setText(2131493917);
      this.s.setBackgroundResource(2130837973);
    }
    for (;;)
    {
      if (a() != paramBoolean)
      {
        this.w = paramBoolean;
        a(false);
        if (this.E != null) {
          ViberApplication.getInstance().getMessagesManager().c().a(this.E.a(), this.w);
        }
      }
      return;
      this.n.setRightImageResource(2130837630);
      this.s.setText(2131493918);
      this.s.setBackgroundResource(2130837972);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    this.t = new cf(this, paramInt1, paramInt2);
    if (this.h != null)
    {
      this.t.run();
      this.t = null;
    }
  }
  
  public void a(int paramInt1, int paramInt2, View paramView)
  {
    g();
    boolean bool1;
    if (paramInt1 == 3)
    {
      bool1 = true;
      if (paramInt2 != 2131165697) {
        break label81;
      }
      RadioButton localRadioButton = this.q;
      boolean bool2 = false;
      if (paramInt1 == 3) {
        bool2 = true;
      }
      localRadioButton.setChecked(bool2);
      if (this.E != null) {
        com.viber.voip.h.b.d().a(bool1, new com.viber.voip.h.d(this.E.a()), true);
      }
    }
    label81:
    do
    {
      return;
      bool1 = false;
      break;
      if (paramInt2 == 2131165914)
      {
        this.p.setChecked(bool1);
        return;
      }
    } while (paramInt2 != 2131165913);
    this.o.setChecked(bool1);
  }
  
  public void a(int paramInt1, int paramInt2, String paramString)
  {
    this.t = new ce(this, paramInt1, paramInt2, paramString);
    if (this.h != null)
    {
      this.t.run();
      this.t = null;
    }
  }
  
  public void a(long paramLong)
  {
    a(new cr(this, paramLong));
  }
  
  public void a(h paramh)
  {
    int i1;
    if ((this.E == null) || (this.E.a() != paramh.a()))
    {
      i1 = 1;
      this.E = paramh;
      if (!this.E.l()) {
        break label231;
      }
    }
    label231:
    for (m localm = com.viber.voip.a.a.o;; localm = com.viber.voip.a.a.n)
    {
      this.B = localm;
      this.A = ViberApplication.getInstance().getMessagesManager();
      if (!this.E.l())
      {
        this.j = this.E.e();
        this.x = com.viber.voip.block.i.a(this.j);
      }
      this.h = new com.viber.voip.messages.controller.b.b(this.E.d(), this.E.e(), this.E.b());
      if ((this.E.l()) || (this.t != null))
      {
        this.i.post(this.t);
        this.t = null;
      }
      if (i1 != 0)
      {
        this.i.post(new bs(this));
        this.w = this.E.r();
      }
      com.viber.voip.h.b.d().a(com.viber.voip.h.b.d().b(), new com.viber.voip.h.d(this.E.a()), true);
      if (ViberApplication.isTablet()) {
        i();
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    this.t = new ch(this, paramMessageEntityImpl);
    if (this.h != null)
    {
      this.t.run();
      this.t = null;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean)
  {
    if ((paramMessageEntityImpl == null) || (this.E == null)) {
      return;
    }
    paramMessageEntityImpl.setConversationId(this.E.a());
    paramMessageEntityImpl.setConversationType(this.E.b());
    paramMessageEntityImpl.setGroupId(this.E.d());
    paramMessageEntityImpl.setRecipientNumber(this.E.e());
    paramMessageEntityImpl.setParticipantId(1L);
    ViberApplication.getInstance().getLocationManager().b();
    if (this.F != null)
    {
      int i2 = this.F.getCount();
      if (i2 > 0)
      {
        an localan = this.F.e(i2 - 1);
        if ((localan == null) || (localan.S()) || (!s.d())) {}
      }
    }
    for (int i1 = 1;; i1 = 0)
    {
      if (paramBoolean) {
        this.A.c().b();
      }
      if ((a()) && ((paramMessageEntityImpl.getLat() == 0) || (paramMessageEntityImpl.getLng() == 0))) {
        paramMessageEntityImpl.setExtraStatus(0);
      }
      b(paramMessageEntityImpl);
      if (paramMessageEntityImpl.getMimeType().equals("text")) {
        this.i.post(new cb(this));
      }
      if (i1 == 0) {
        break;
      }
      s.a(this.g);
      return;
    }
  }
  
  public void a(bf parambf)
  {
    if (!this.v)
    {
      int i2 = this.n.getText().length();
      String str = parambf.a();
      bc.a().a(this.B.b.c(str));
      if (i2 + str.length() < this.C)
      {
        int i3 = this.n.getSelectionStart();
        this.n.getText().insert(this.n.getSelectionEnd(), str);
        this.n.setSelection(i3 + str.length());
      }
      return;
    }
    Character localCharacter = parambf.b();
    int i1 = this.n.getSelectionStart();
    this.n.getText().insert(this.n.getSelectionEnd(), localCharacter.toString());
    this.n.setSelection(i1 + 1);
  }
  
  public void a(ZoobeResult paramZoobeResult)
  {
    e("sendAnimatedMessage result.success=" + paramZoobeResult.success);
    if (paramZoobeResult.success)
    {
      this.t = new ct(this, paramZoobeResult);
      if (this.h != null)
      {
        this.t.run();
        this.t = null;
      }
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    if ((this.E != null) && (!this.E.l()))
    {
      com.viber.voip.block.i.a(getContext(), this.E.p(), this.E.q(), true, this.I.h(), paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  public void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (this.h == null) {
        this.t = new ca(this, paramString);
      }
    }
    else {
      return;
    }
    a(this.h.a("text", paramString, 0), true);
  }
  
  public void a(ArrayList<SendMediaDataContainer> paramArrayList)
  {
    this.t = new cd(this, paramArrayList);
    if (this.h != null)
    {
      this.t.run();
      this.t = null;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((this.s == null) || (this.E == null)) {}
    do
    {
      do
      {
        do
        {
          return;
        } while (this.s.getVisibility() != 8);
        if (!a()) {
          break;
        }
        if (paramBoolean)
        {
          r();
          this.l = true;
          return;
        }
      } while (ViberApplication.preferences().b("show_location_tooltip", 0) == 1);
      ViberApplication.preferences().a("show_location_tooltip", 1);
      r();
      this.l = true;
      return;
    } while (!this.l);
    r();
    this.l = false;
  }
  
  public boolean a()
  {
    return this.w;
  }
  
  public void b()
  {
    this.E = null;
    this.h = null;
  }
  
  public void b(long paramLong)
  {
    ViberApplication.getInstance().getMessagesManager().c().a(paramLong, new ci(this));
  }
  
  public void b(String paramString)
  {
    if ("ptt".equals(paramString)) {
      this.O.c(true);
    }
    do
    {
      return;
      if ("menu".equals(paramString))
      {
        this.M.a(true);
        return;
      }
      if ("keyboard".equals(paramString))
      {
        this.n.requestFocus();
        this.J.showSoftInput(this.n, 0);
        return;
      }
    } while (!"stickers".equals(paramString));
    this.N.b(true);
  }
  
  public void c()
  {
    this.J.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  public void d()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.g);
    View localView = LayoutInflater.from(this.g).inflate(2130903347, null);
    EditText localEditText = (EditText)localView.findViewById(2131166168);
    localBuilder.setTitle("Send custom stiker");
    localEditText.setHint("Enter stiker id");
    localEditText.setInputType(2);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(8);
    localEditText.setFilters(arrayOfInputFilter);
    localBuilder.setView(localView);
    localBuilder.setPositiveButton(2131493558, new cu(this));
    localBuilder.setNegativeButton(2131493557, new bt(this, localEditText));
    localBuilder.show();
  }
  
  public void e()
  {
    this.i.removeCallbacks(this.L);
  }
  
  public void f()
  {
    Intent localIntent = new Intent("com.viber.voip.action.CHANGE_LOCATION_SETTINGS");
    localIntent.setFlags(268435456);
    this.g.startActivity(localIntent);
  }
  
  public void g()
  {
    this.P.a(null);
  }
  
  public String getMessageDraft()
  {
    return this.n.getText().toString();
  }
  
  public View getOptionsButton()
  {
    return this.o;
  }
  
  public void setBlocked(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }
  
  public void setConversationMessageLoader(v paramv)
  {
    this.F = paramv;
  }
  
  public void setDraft(String paramString)
  {
    this.D = paramString;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    this.n.setEnabled(paramBoolean);
    this.o.setClickable(paramBoolean);
    if ((this.E != null) && (!this.E.t()))
    {
      this.q.setEnabled(paramBoolean);
      return;
    }
    this.r.setEnabled(paramBoolean);
  }
  
  public void setExternalControls(TextView paramTextView)
  {
    this.s = paramTextView;
  }
  
  public void setFragment(ConversationFragment paramConversationFragment)
  {
    this.I = paramConversationFragment;
  }
  
  public void setHost(cw paramcw)
  {
    this.c = paramcw;
  }
  
  public void setMessageDraft(String paramString)
  {
    setMessageEditText(paramString);
    this.u.a(this.n, bd.b, false);
    if (paramString.length() > 0) {
      this.n.setSelection(paramString.length());
    }
  }
  
  public void setMessageEditText(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      this.f = true;
    }
    this.n.setText(paramString);
  }
  
  public void setMessageSender(ao paramao)
  {
    this.G = paramao;
  }
  
  public void setOnButtonsListener(cx paramcx)
  {
    this.M = paramcx;
    this.N = paramcx;
    this.O = paramcx;
  }
  
  public void setOnEmotionsButtonListener(cy paramcy)
  {
    this.N = paramcy;
  }
  
  public void setOnOptionsButtonListener(cz paramcz)
  {
    this.M = paramcz;
  }
  
  public void setOnPttButtonListener(da paramda)
  {
    this.O = paramda;
  }
  
  public void setVisible(boolean paramBoolean)
  {
    View localView = this.m;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.MessageComposerView
 * JD-Core Version:    0.7.0.1
 */