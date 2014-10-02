package com.viber.voip.messages.ui.chathead;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.df;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.registration.cp;
import com.viber.voip.util.fz;
import com.viber.voip.util.gf;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class d
  implements gf
{
  private static final String c = d.class.getSimpleName();
  private static int d = 5;
  private int A;
  private int B;
  private float C;
  private float D;
  private int E;
  private float F;
  private float G;
  private float H;
  private float I;
  private float J;
  private float K;
  private long L;
  private boolean M;
  private boolean N;
  private boolean O;
  private boolean P;
  private boolean Q;
  private boolean R;
  private boolean S;
  private boolean T;
  private boolean U;
  private boolean V;
  private boolean W;
  private FrameLayout X;
  private Vibrator Y;
  private boolean Z;
  public BroadcastReceiver a = new r(this);
  private db aA = new ab(this);
  private df aB = new ad(this);
  private dh aC = new af(this);
  private DialerControllerDelegate.DialerPhoneState aD = new ah(this);
  private fz aa;
  private au ab;
  private TelephonyManager ac;
  private cp ad;
  private cx ae;
  private boolean af;
  private TextView ag;
  private float ah;
  private float ai;
  private float aj;
  private float ak;
  private ArrayList<b> al;
  private Context am;
  private boolean an;
  private AnimatorSet ao;
  private AnimatorSet ap;
  private AnimatorSet aq;
  private AnimatorSet ar;
  private AnimatorSet as;
  private final View.OnTouchListener at = new e(this);
  private final View.OnTouchListener au = new p(this);
  private final View.OnClickListener av = new aa(this);
  private Runnable aw = new al(this);
  private Runnable ax = new aq(this);
  private boolean ay;
  private AnimatorSet az;
  public BroadcastReceiver b = new s(this);
  private c e;
  private View f;
  private View g;
  private com.viber.voip.messages.ui.chathead.a.a h;
  private ImageView i;
  private FrameLayout j;
  private RelativeLayout k;
  private com.viber.voip.messages.ui.chathead.a.l l;
  private PopupWindow m;
  private com.viber.voip.messages.ui.chathead.a.a n;
  private com.viber.voip.messages.ui.chathead.a.a o;
  private com.viber.voip.messages.ui.chathead.a.a p;
  private bb q;
  private Handler r;
  private WindowManager s;
  private WindowManager.LayoutParams t;
  private WindowManager.LayoutParams u;
  private WindowManager.LayoutParams v;
  private WindowManager.LayoutParams w;
  private WindowManager.LayoutParams x;
  private DisplayMetrics y;
  private int z;
  
  public d(Context paramContext)
  {
    this.am = paramContext;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.viber.voip.action.MESSAGE_CHAT_HEADS");
    localIntentFilter.addAction("com.viber.voip.action.CLOSE_POPUP");
    paramContext.registerReceiver(this.a, localIntentFilter);
  }
  
  private float a(int paramInt)
  {
    return this.D + this.e.i * paramInt + this.C * paramInt;
  }
  
  private int a(long paramLong)
  {
    int i1 = 0;
    int i2 = this.al.size();
    while (i1 < i2)
    {
      ConversationEntity localConversationEntity = ((b)this.al.get(i1)).b();
      if ((localConversationEntity != null) && (paramLong == localConversationEntity.getId())) {
        return i1;
      }
      i1++;
    }
    return -1;
  }
  
  private String a(long paramLong, String paramString, boolean paramBoolean)
  {
    this.ag.setSingleLine(false);
    this.ag.setMaxLines(2);
    MessageEntityImpl localMessageEntityImpl = com.viber.voip.messages.controller.c.as.a().q(paramLong);
    if (localMessageEntityImpl == null) {}
    do
    {
      return null;
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("sticker"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493592, new Object[] { paramString });
        }
        return this.am.getString(2131493599, new Object[] { "" });
      }
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("image"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493588, new Object[] { paramString });
        }
        return this.am.getString(2131493595, new Object[] { "" });
      }
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("location"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493587, new Object[] { paramString });
        }
        return this.am.getString(2131493594, new Object[] { "" });
      }
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("sound"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493591, new Object[] { paramString });
        }
        return this.am.getString(2131493598, new Object[] { "" });
      }
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("video"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493589, new Object[] { paramString });
        }
        return this.am.getString(2131493596, new Object[] { "" });
      }
      if (localMessageEntityImpl.getMimeType().equalsIgnoreCase("animated_message"))
      {
        if (paramBoolean) {
          return this.am.getString(2131493590, new Object[] { paramString });
        }
        return this.am.getString(2131493597, new Object[] { "" });
      }
    } while (localMessageEntityImpl.getMimeType().equalsIgnoreCase("call"));
    this.ag.setSingleLine(true);
    this.ag.setMaxLines(1);
    if (paramBoolean) {
      return paramString + ": " + localMessageEntityImpl.getBody();
    }
    return localMessageEntityImpl.getBody();
  }
  
  private List<Animator> a(float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    ArrayList localArrayList = new ArrayList();
    int i1;
    int i2;
    int i3;
    label49:
    ValueAnimator localValueAnimator1;
    ValueAnimator localValueAnimator2;
    if (paramBoolean1)
    {
      i1 = -this.e.t * (-1 + this.al.size());
      i2 = 0;
      Iterator localIterator = this.al.iterator();
      i3 = i1;
      if (!localIterator.hasNext()) {
        break label324;
      }
      b localb = (b)localIterator.next();
      com.viber.voip.messages.ui.chathead.a.a locala = localb.a();
      float f1 = ay.a(locala);
      float f2 = ay.b(locala);
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (paramFloat1 - f1 + i3);
      localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
      float[] arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (paramFloat2 - f2);
      localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
      localArrayList.add(localValueAnimator1);
      localArrayList.add(localValueAnimator2);
      localValueAnimator1.addUpdateListener(new av(this, localb, f1, true));
      localValueAnimator2.addUpdateListener(new aw(this, localb, f2, true));
      if ((paramBoolean2) && (i2 == -1 + this.al.size())) {
        break label282;
      }
      localValueAnimator1.setInterpolator(new OvershootInterpolator(1.0F));
      localValueAnimator2.setInterpolator(new OvershootInterpolator(1.0F));
      label238:
      if (!paramBoolean1) {
        break label309;
      }
      i3 += this.e.t;
    }
    for (;;)
    {
      i2++;
      break label49;
      i1 = this.e.t * (-1 + this.al.size());
      break;
      label282:
      localValueAnimator1.setInterpolator(new OvershootInterpolator());
      localValueAnimator2.setInterpolator(new OvershootInterpolator());
      break label238;
      label309:
      i3 -= this.e.t;
    }
    label324:
    return localArrayList;
  }
  
  private void a(int paramInt1, int paramInt2, com.viber.voip.messages.ui.chathead.a.a parama)
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.i, "scaleX", new float[] { 1.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.i, "scaleY", new float[] { 1.0F });
    int[] arrayOfInt = new int[2];
    this.i.getLocationOnScreen(arrayOfInt);
    int i1 = arrayOfInt[0];
    int i2 = arrayOfInt[1] - this.B;
    this.ap = new AnimatorSet();
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = (i1 - paramInt1);
    ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
    float[] arrayOfFloat2 = new float[1];
    arrayOfFloat2[0] = (i2 - paramInt2);
    ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
    localValueAnimator1.addUpdateListener(new av(this, parama, paramInt1, false));
    localValueAnimator2.addUpdateListener(new aw(this, parama, paramInt2, false));
    this.ap.addListener(new w(this, parama));
    this.ap.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2, localObjectAnimator1, localObjectAnimator2 });
    this.ap.setDuration(250L);
    this.ap.start();
  }
  
  private void a(Context paramContext)
  {
    if (this.an) {
      return;
    }
    this.am = paramContext;
    this.O = true;
    this.P = true;
    this.R = true;
    if (!gl.e(paramContext)) {}
    for (boolean bool = true;; bool = false)
    {
      this.Z = bool;
      this.B = gl.f(this.am);
      this.e = new c(paramContext);
      this.aa = fz.a();
      this.q = new bb(this.am);
      this.q.a(true);
      this.af = ViberApplication.isTablet();
      this.y = new DisplayMetrics();
      this.al = new ArrayList(d);
      this.E = com.viber.voip.messages.extras.image.h.a(1.0F);
      this.s = ((WindowManager)paramContext.getSystemService("window"));
      this.Y = ((Vibrator)paramContext.getSystemService("vibrator"));
      ViberApplication.getInstance().notifyActivityOnForeground(true, null);
      DialerPhoneStateListener localDialerPhoneStateListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getDialerPhoneStateListener();
      DialerControllerDelegate.DialerPhoneState[] arrayOfDialerPhoneState = new DialerControllerDelegate.DialerPhoneState[1];
      arrayOfDialerPhoneState[0] = this.aD;
      localDialerPhoneStateListener.registerDelegate(arrayOfDialerPhoneState);
      this.ae = ViberApplication.getInstance().getMessagesManager().b();
      LayoutInflater localLayoutInflater = (LayoutInflater)paramContext.getSystemService("layout_inflater");
      a(localLayoutInflater, paramContext);
      b();
      d(paramContext);
      this.ap = new AnimatorSet();
      this.aq = new AnimatorSet();
      this.ao = new AnimatorSet();
      this.ar = new AnimatorSet();
      this.as = new AnimatorSet();
      this.r = dc.a(dk.a);
      this.k = ((RelativeLayout)localLayoutInflater.inflate(2130903145, null));
      this.i = ((ImageView)this.k.findViewById(2131165608));
      this.X = ((FrameLayout)this.k.findViewById(2131165607));
      this.h = new com.viber.voip.messages.ui.chathead.a.a(paramContext);
      this.h.setScaleType(ImageView.ScaleType.FIT_XY);
      b(paramContext);
      this.f = new View(this.am);
      this.g = new View(this.am);
      this.j = new FrameLayout(paramContext);
      this.j.setVisibility(4);
      this.f.setBackgroundColor(-16777216);
      this.f.getBackground().setAlpha(216);
      this.f.setVisibility(4);
      this.j.setDrawingCacheQuality(524288);
      this.j.setDrawingCacheEnabled(true);
      ViewHelper.setScaleX(this.i, 0.8F);
      ViewHelper.setScaleY(this.i, 0.8F);
      if ((Build.VERSION.SDK_INT >= 19) && (this.B > 0))
      {
        c localc = this.e;
        localc.a += this.B;
        WindowManager.LayoutParams localLayoutParams = this.w;
        localLayoutParams.flags = (0x4000000 | localLayoutParams.flags);
      }
      this.s.addView(this.g, this.x);
      this.g.getViewTreeObserver().addOnGlobalLayoutListener(new am(this));
      this.s.addView(this.k, this.v);
      this.s.addView(this.f, this.w);
      this.s.addView(this.j, this.t);
      this.s.addView(this.h, this.u);
      this.h.setOnTouchListener(this.at);
      this.j.setOnTouchListener(this.au);
      this.j.setOnClickListener(this.av);
      this.an = true;
      return;
    }
  }
  
  private void a(Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!this.an) {}
    try
    {
      a(paramContext);
      if (d())
      {
        this.j.setVisibility(4);
        this.f.setVisibility(4);
        this.h.setVisibility(4);
      }
      if (this.R)
      {
        b(paramContext, paramLong, paramBoolean1, paramBoolean2);
        return;
      }
    }
    finally {}
    ar localar = new ar(this, paramContext, paramLong, paramBoolean1, paramBoolean2);
    this.r.postDelayed(localar, 100L);
  }
  
  private void a(Context paramContext, Uri paramUri, b paramb, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    ConversationEntity localConversationEntity = paramb.b();
    Bitmap localBitmap;
    if (localConversationEntity.isConversationGroup())
    {
      int i1 = this.am.getResources().getColor(2131296328);
      localBitmap = a(this.am, i1, this.e.b, this.e.b, localConversationEntity.getId(), paramParticipantInfoEntityImpl);
    }
    com.viber.voip.messages.ui.chathead.a.a locala;
    for (;;)
    {
      locala = paramb.a();
      if ((localBitmap == null) || (localBitmap.getHeight() <= 0) || (localBitmap.getWidth() <= 0)) {
        break;
      }
      locala.setImageBitmap(com.viber.voip.messages.extras.image.h.e(localBitmap));
      return;
      localBitmap = null;
      if (paramUri != null) {
        localBitmap = com.viber.voip.util.b.w.a(paramContext, paramUri, false);
      }
    }
    locala.setImageResource(2130838218);
  }
  
  private void a(LayoutInflater paramLayoutInflater, Context paramContext)
  {
    k();
    this.l = new com.viber.voip.messages.ui.chathead.a.l(paramContext.getApplicationContext());
    this.l.setWidth(-1);
    this.l.setHeight(-1);
    this.l.setAnimationStyle(2131558691);
    this.l.setFocusable(true);
    this.l.setBackgroundDrawable(null);
    this.l.setOnDismissListener(new t(this));
    this.l.setSoftInputMode(4);
    this.l.setInputMethodMode(1);
    this.l.update();
    this.ag = ((TextView)paramLayoutInflater.inflate(2130903251, null, false));
    this.m = new PopupWindow(this.ag);
    this.m.setWidth(-2);
    this.m.setHeight(this.e.n);
    this.m.setAnimationStyle(2131558691);
  }
  
  private void a(com.viber.voip.messages.ui.chathead.a.a parama)
  {
    ObjectAnimator localObjectAnimator1;
    float[] arrayOfFloat4;
    if (parama == this.o)
    {
      float[] arrayOfFloat3 = new float[1];
      arrayOfFloat3[0] = (this.e.l / this.e.b);
      localObjectAnimator1 = ObjectAnimator.ofFloat(parama, "scaleX", arrayOfFloat3);
      arrayOfFloat4 = new float[1];
      arrayOfFloat4[0] = (this.e.l / this.e.b);
    }
    float[] arrayOfFloat2;
    for (ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(parama, "scaleY", arrayOfFloat4);; localObjectAnimator2 = ObjectAnimator.ofFloat(parama, "scaleY", arrayOfFloat2))
    {
      this.az = new AnimatorSet();
      this.az.addListener(new u(this));
      this.az.setDuration(250L);
      this.az.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
      this.az.start();
      return;
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (this.e.k / this.e.b);
      localObjectAnimator1 = ObjectAnimator.ofFloat(parama, "scaleX", arrayOfFloat1);
      arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (this.e.k / this.e.b);
    }
  }
  
  private void a(com.viber.voip.messages.ui.chathead.a.a parama, int paramInt)
  {
    int i1 = paramInt + 1;
    int i2 = this.al.size() - i1;
    this.ao = new AnimatorSet();
    float f1;
    ValueAnimator localValueAnimator2;
    if (this.Z)
    {
      f1 = ay.a(parama);
      if (!this.Z) {
        break label151;
      }
      float[] arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (a(i2) - f1);
      localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
      localValueAnimator2.addUpdateListener(new av(this, parama, f1, false));
    }
    label151:
    ValueAnimator localValueAnimator1;
    for (Object localObject = localValueAnimator2;; localObject = localValueAnimator1)
    {
      this.ao.playTogether(new Animator[] { localObject });
      this.ao.setInterpolator(new AccelerateDecelerateInterpolator());
      this.ao.setDuration(250L);
      this.ao.start();
      return;
      f1 = ay.b(parama);
      break;
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (a(i2) - f1);
      localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
      localValueAnimator1.addUpdateListener(new aw(this, parama, f1, false));
    }
  }
  
  private void a(b paramb)
  {
    a(paramb, null, true, null);
  }
  
  private void a(b paramb, int paramInt)
  {
    int i1 = paramInt + 1;
    int i2 = this.al.size() - i1;
    com.viber.voip.messages.ui.chathead.a.a locala = paramb.a();
    this.aq = new AnimatorSet();
    float f1 = ay.a(locala);
    float f2 = ay.b(locala);
    float f5;
    float f6;
    if (this.Z)
    {
      f5 = a(i2);
      f6 = this.e.c;
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (f5 - f1);
      ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
      float[] arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (f6 - f2);
      ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
      localValueAnimator1.addUpdateListener(new av(this, locala, f1, false));
      localValueAnimator2.addUpdateListener(new aw(this, locala, f2, false));
      this.aq.addListener(new y(this, locala));
      this.aq.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2 });
      this.aq.setInterpolator(new OvershootInterpolator(1.0F));
      this.aq.setDuration(700L);
      this.aq.start();
      return;
    }
    if (this.af) {}
    for (float f3 = this.z - (this.z - this.e.w) / 2 + this.e.a - this.e.e - this.e.i;; f3 = this.z - this.e.e - this.e.i)
    {
      float f4 = a(i2);
      f5 = f3;
      f6 = f4;
      break;
    }
  }
  
  private void a(b paramb, Uri paramUri, int paramInt, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    ViewHelper.setAlpha(paramb.a(), 0.0F);
    a(paramb, paramUri, false, paramParticipantInfoEntityImpl);
    if (paramInt < d)
    {
      (paramInt + 1);
      ViewHelper.setAlpha(paramb.a(), 0.0F);
      if (this.Z)
      {
        ay.a(paramb.a(), this.D);
        ay.b(paramb.a(), -this.e.i);
        float f2 = ay.b(paramb.a());
        float[] arrayOfFloat3 = new float[1];
        arrayOfFloat3[0] = (this.e.c - f2);
        localValueAnimator = ValueAnimator.ofFloat(arrayOfFloat3);
        localValueAnimator.addUpdateListener(new aw(this, paramb, f2, false));
        localValueAnimator.setInterpolator(new OvershootInterpolator(1.0F));
        ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramb.a(), "alpha", new float[] { 0.0F, 1.0F });
        AnimatorSet localAnimatorSet = new AnimatorSet();
        localAnimatorSet.addListener(new ao(this, paramBoolean, paramb));
        localAnimatorSet.playTogether(new Animator[] { localValueAnimator, localObjectAnimator });
        localAnimatorSet.setDuration(250L);
        localAnimatorSet.start();
      }
    }
    else
    {
      return;
    }
    ay.a(paramb.a(), this.z + this.e.i);
    ay.b(paramb.a(), this.e.c);
    float f1 = ay.a(paramb.a());
    float[] arrayOfFloat2;
    if (this.af)
    {
      arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (this.z - (this.z - this.e.w) / 2 + this.e.a - this.e.e - this.e.i - f1);
    }
    float[] arrayOfFloat1;
    for (ValueAnimator localValueAnimator = ValueAnimator.ofFloat(arrayOfFloat2);; localValueAnimator = ValueAnimator.ofFloat(arrayOfFloat1))
    {
      localValueAnimator.addUpdateListener(new av(this, paramb, f1, false));
      break;
      arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (this.z - this.e.e - this.e.i - f1);
    }
  }
  
  private void a(b paramb, Uri paramUri, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    com.viber.voip.messages.ui.chathead.a.a locala = paramb.a();
    if ((paramb instanceof ax))
    {
      locala.setVisibility(4);
      locala.setOnClickListener(new f(this));
      if (!paramBoolean) {
        break label221;
      }
      ay.a(locala, this.u.x);
      ay.b(locala, this.u.y);
      this.al.add(paramb);
      label71:
      if (!this.P)
      {
        ViewHelper.setScaleX(locala, this.e.i / this.e.b);
        ViewHelper.setScaleY(locala, this.e.i / this.e.b);
      }
      ((FrameLayout.LayoutParams)locala.getLayoutParams()).gravity = 48;
      if ((!this.P) || (this.V)) {
        break label233;
      }
      this.j.setVisibility(4);
      this.j.addView(locala);
      a(true);
    }
    for (;;)
    {
      ((View)locala.getParent()).post(new h(this, locala));
      return;
      a(this.am, paramUri, paramb, paramParticipantInfoEntityImpl);
      locala.setOnTouchListener(new g(this, paramb));
      break;
      label221:
      this.al.add(paramb);
      break label71;
      label233:
      this.j.addView(locala);
    }
  }
  
  private void a(b paramb, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    int i1 = this.al.size();
    ArrayList localArrayList = new ArrayList();
    AnimatorSet localAnimatorSet = new AnimatorSet();
    Iterator localIterator = this.al.iterator();
    int i2 = i1;
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if ((this.V) && (this.p != null) && (localb.a() == this.p))
      {
        i2--;
      }
      else
      {
        ValueAnimator localValueAnimator2;
        if (this.Z)
        {
          float f2 = ay.a(localb.a());
          float[] arrayOfFloat2 = new float[1];
          arrayOfFloat2[0] = (a(i2) - f2);
          localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
          localValueAnimator2.addUpdateListener(new av(this, localb, f2, false));
        }
        ValueAnimator localValueAnimator1;
        for (Object localObject = localValueAnimator2;; localObject = localValueAnimator1)
        {
          localArrayList.add(localObject);
          i2--;
          break;
          float f1 = ay.b(localb.a());
          float[] arrayOfFloat1 = new float[1];
          arrayOfFloat1[0] = (a(i2) - f1);
          localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
          localValueAnimator1.addUpdateListener(new aw(this, localb, f1, false));
        }
      }
    }
    localAnimatorSet.addListener(new an(this, paramb, paramUri, paramBoolean3, paramParticipantInfoEntityImpl));
    localAnimatorSet.playTogether(localArrayList);
    localAnimatorSet.setDuration(250L);
    localAnimatorSet.setInterpolator(new LinearInterpolator());
    localAnimatorSet.start();
  }
  
  private void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      this.h.setVisibility(4);
    }
    m();
    ViewHelper.setAlpha(this.h, 0.0F);
    boolean bool1;
    label67:
    int i1;
    label95:
    AnimatorSet localAnimatorSet;
    if (d())
    {
      this.j.setVisibility(4);
      if (this.u.x >= this.z / 2 - this.e.b / 2) {
        break label196;
      }
      bool1 = true;
      if (!bool1) {
        break label201;
      }
      i1 = -this.e.t;
      if (v()) {
        q().setTextGravity(3);
      }
      boolean bool2 = v();
      float f1 = 0.0F;
      if (bool2) {
        f1 = ay.b(q());
      }
      List localList = a(i1, f1, bool1, true);
      localAnimatorSet = new AnimatorSet();
      localAnimatorSet.addListener(new k(this, i1, f1));
      localAnimatorSet.playTogether(localList);
      if (!paramBoolean) {
        break label276;
      }
    }
    label274:
    label276:
    for (long l1 = 50L;; l1 = 400L)
    {
      localAnimatorSet.setDuration(l1);
      localAnimatorSet.start();
      return;
      this.j.setVisibility(0);
      break;
      label196:
      bool1 = false;
      break label67;
      label201:
      if (this.Z) {}
      for (i1 = this.z - this.e.b + this.e.t;; i1 = this.z - this.e.b - f() + this.e.t)
      {
        if (!v()) {
          break label274;
        }
        q().setTextGravity(5);
        break;
      }
      break label95;
    }
  }
  
  private void a(boolean paramBoolean, com.viber.voip.messages.ui.chathead.a.a parama)
  {
    float f1 = 1.0F;
    float[] arrayOfFloat1 = new float[1];
    float f2;
    ObjectAnimator localObjectAnimator1;
    float[] arrayOfFloat2;
    if (paramBoolean)
    {
      f2 = f1;
      arrayOfFloat1[0] = f2;
      localObjectAnimator1 = ObjectAnimator.ofFloat(parama, "scaleX", arrayOfFloat1);
      arrayOfFloat2 = new float[1];
      if (!paramBoolean) {
        break label120;
      }
    }
    for (;;)
    {
      arrayOfFloat2[0] = f1;
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(parama, "scaleY", arrayOfFloat2);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.setDuration(250L);
      localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
      localAnimatorSet.start();
      return;
      f2 = this.e.m / this.e.b;
      break;
      label120:
      f1 = this.e.m / this.e.b;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, com.viber.voip.messages.ui.chathead.a.a parama)
  {
    ViewHelper.setPivotX(this.i, this.i.getWidth() / 2);
    ViewHelper.setPivotY(this.i, this.i.getHeight() / 2);
    float f4;
    float f1;
    float f2;
    float f3;
    FrameLayout localFrameLayout;
    if (paramBoolean1)
    {
      f4 = this.X.getHeight();
      f1 = 0.0F;
      f2 = 0.0F;
      f3 = 1.0F;
      localFrameLayout = this.X;
      if (!paramBoolean2) {
        break label224;
      }
    }
    int i2;
    ArrayList localArrayList;
    float f5;
    label224:
    for (int i1 = 4;; i1 = 0)
    {
      localFrameLayout.setVisibility(i1);
      i2 = this.X.getPaddingTop();
      localArrayList = new ArrayList();
      if (!this.N) {
        break label305;
      }
      f5 = ay.b(parama);
      if (!this.P) {
        break label230;
      }
      Iterator localIterator = this.al.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        float[] arrayOfFloat2 = new float[1];
        arrayOfFloat2[0] = (this.A - f5);
        ValueAnimator localValueAnimator3 = ValueAnimator.ofFloat(arrayOfFloat2);
        localValueAnimator3.addUpdateListener(new aw(this, localb.a(), f5, false));
        localArrayList.add(localValueAnimator3);
      }
      f1 = this.X.getHeight();
      f2 = 1.0F;
      f3 = 0.0F;
      f4 = 0.0F;
      break;
    }
    label230:
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = (this.A - f5);
    ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat1);
    localValueAnimator2.addUpdateListener(new aw(this, parama, f5, false));
    localArrayList.add(ObjectAnimator.ofFloat(parama, "alpha", new float[] { f2, f3 }));
    localArrayList.add(localValueAnimator2);
    label305:
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = ((int)(f1 + -f4));
    ValueAnimator localValueAnimator1 = ValueAnimator.ofInt(arrayOfInt);
    localValueAnimator1.addUpdateListener(new n(this, i2));
    localArrayList.add(ObjectAnimator.ofFloat(this.i, "alpha", new float[] { f2, f3 }));
    localArrayList.add(localValueAnimator1);
    this.as = new AnimatorSet();
    if (this.N) {
      this.as.setDuration(350L);
    }
    for (;;)
    {
      this.as.setInterpolator(new AccelerateInterpolator());
      this.as.addListener(new o(this, paramBoolean1, parama));
      this.as.playTogether(localArrayList);
      this.as.start();
      return;
      this.as.setDuration(250L);
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    int i1 = (this.e.u + this.e.b) / 2;
    int[] arrayOfInt = new int[2];
    this.i.getLocationOnScreen(arrayOfInt);
    return (paramFloat1 > arrayOfInt[0] - i1) && (paramFloat1 < i1 + arrayOfInt[0]) && (paramFloat2 > arrayOfInt[1] - this.e.b - this.e.b / 2 - this.B) && (paramFloat2 < i1 + arrayOfInt[1]);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (this.m.isShowing()) {
      this.m.dismiss();
    }
    if (this.ar.isRunning()) {
      return true;
    }
    this.P = true;
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      this.V = false;
      this.O = false;
      this.r.removeCallbacks(this.aw);
      this.L = System.currentTimeMillis();
      this.j.setVisibility(0);
      this.k.setVisibility(0);
      if (v())
      {
        a(false, q());
        a(true, false, q());
      }
      o();
      this.ah = this.u.x;
      this.ai = this.u.y;
      this.aj = paramMotionEvent.getRawX();
      this.ak = paramMotionEvent.getRawY();
      return true;
    case 1: 
      this.O = true;
      this.L = (System.currentTimeMillis() - this.L);
      if (v()) {
        a(true, q());
      }
      if ((this.L < 300L) && (!this.V))
      {
        if (v()) {
          a(false, true, q());
        }
        this.J = this.u.x;
        this.K = this.u.y;
        h();
      }
      for (;;)
      {
        this.V = false;
        return true;
        if (v()) {
          a(false, false, q());
        }
        if (!this.N) {
          g();
        }
      }
    }
    if (this.ap.isRunning()) {
      return true;
    }
    float f1;
    if (!this.V)
    {
      if ((Math.abs(paramMotionEvent.getRawX() - this.aj) > this.e.v) || (Math.abs(paramMotionEvent.getRawY() - this.ak) > this.e.v)) {
        this.V = true;
      }
    }
    else
    {
      this.O = false;
      this.F = (this.ah + (int)(paramMotionEvent.getRawX() - this.aj));
      this.G = (this.ai + (int)(paramMotionEvent.getRawY() - this.ak));
      l();
      f1 = this.F / (this.z + this.e.b);
      float f2 = this.G / this.A;
      if (this.as.isRunning()) {
        break label579;
      }
      this.X.setPadding((int)(this.e.q / 3.0F + f1 * this.e.q), (int)(f2 * this.e.r), 0, 0);
    }
    while ((!a(this.F, this.G)) && (this.N) && (!this.ap.isRunning()))
    {
      this.N = false;
      c((int)this.F, (int)this.G);
      return false;
      return true;
      label579:
      this.X.setPadding((int)(this.e.q / 3.0F + f1 * this.e.q), this.X.getPaddingTop(), 0, 0);
    }
    if ((a(this.F, this.G)) && (this.k.getVisibility() == 0) && (!this.N) && (!this.ap.isRunning()))
    {
      this.N = true;
      b((int)this.F, (int)this.G);
      return false;
    }
    if (!this.N)
    {
      int i2 = this.e.s;
      int i3 = 0;
      int i4 = 0;
      while (i1 < this.al.size())
      {
        com.viber.voip.messages.ui.chathead.a.a locala = ((b)this.al.get(i1)).a();
        if (i1 == -1 + this.al.size())
        {
          ay.a(locala, this.F);
          ay.b(locala, this.G);
          i1++;
        }
        else
        {
          int i7;
          int i6;
          if ((i4 == 0) && (i3 == 0))
          {
            i7 = (int)(this.F - this.H);
            i6 = (int)(this.G - this.I);
            if (i7 > i2)
            {
              i7 = i2;
              label814:
              if (i6 <= i2) {
                break label878;
              }
              i6 = i2;
            }
          }
          for (;;)
          {
            ay.a(locala, this.F - i7);
            ay.b(locala, this.G - i6);
            i4 = i7;
            i3 = i6;
            break;
            if (i7 >= -i2) {
              break label814;
            }
            i7 = -i2;
            break label814;
            label878:
            if (i6 < -i2)
            {
              i6 = -i2;
              continue;
              int i5 = (int)(i4 / 1.4D);
              i6 = (int)(i3 / 1.4D);
              i7 = i5;
            }
          }
        }
      }
      this.u.x = ((int)this.F);
      this.u.y = ((int)this.G);
    }
    for (;;)
    {
      this.H = this.F;
      this.I = this.G;
      return true;
      if (!this.as.isRunning())
      {
        int[] arrayOfInt = new int[2];
        this.i.getLocationOnScreen(arrayOfInt);
        Iterator localIterator = this.al.iterator();
        while (localIterator.hasNext())
        {
          b localb = (b)localIterator.next();
          ay.a(localb.a(), arrayOfInt[0] + this.E);
          ay.b(localb.a(), arrayOfInt[1] - e() + this.E);
        }
      }
    }
  }
  
  private boolean a(MotionEvent paramMotionEvent, b paramb)
  {
    boolean bool2;
    if (this.ar.isRunning()) {
      bool2 = true;
    }
    boolean bool1;
    do
    {
      return bool2;
      bool1 = this.P;
      bool2 = false;
    } while (bool1);
    int i1 = this.al.indexOf(paramb);
    int i2 = this.al.size();
    com.viber.voip.messages.ui.chathead.a.a locala1 = paramb.a();
    this.p = locala1;
    this.P = false;
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      this.V = false;
      a(locala1);
      this.L = System.currentTimeMillis();
      this.k.setVisibility(0);
      a(true, false, locala1);
      this.ah = ay.a(locala1);
      this.ai = ay.b(locala1);
      this.aj = paramMotionEvent.getRawX();
      this.ak = paramMotionEvent.getRawY();
      locala1.bringToFront();
      return true;
    case 1: 
      this.L = (System.currentTimeMillis() - this.L);
      for (int i6 = 0; i6 < this.al.size(); i6++) {
        ((b)this.al.get(i6)).a().bringToFront();
      }
      if ((this.L < 300L) && (!this.V))
      {
        a(false, true, locala1);
        if (locala1 == this.o)
        {
          this.P = true;
          this.Q = true;
          this.M = false;
          this.az.cancel();
          this.l.dismiss();
        }
      }
      for (;;)
      {
        this.V = false;
        return true;
        this.o = locala1;
        b(paramb);
        continue;
        a(false, false, locala1);
        if (!this.N) {
          a(paramb, i1);
        }
      }
    }
    if (this.ap.isRunning()) {
      return true;
    }
    float f1;
    if (!this.V)
    {
      if ((Math.abs(paramMotionEvent.getRawX() - this.aj) > this.e.v) || (Math.abs(paramMotionEvent.getRawY() - this.ak) > this.e.v)) {
        this.V = true;
      }
    }
    else
    {
      this.F = (this.ah + paramMotionEvent.getRawX() - this.aj);
      this.G = (this.ai + paramMotionEvent.getRawY() - this.ak);
      if ((this.H == 0.0F) || (this.I == 0.0F))
      {
        this.H = this.F;
        this.I = this.G;
      }
      l();
      f1 = this.F / (this.z + this.e.b);
      float f2 = this.G / this.A;
      if (this.as.isRunning()) {
        break label623;
      }
      this.X.setPadding((int)(this.e.q / 3.0F + f1 * this.e.q), (int)(f2 * this.e.r), 0, 0);
    }
    while ((!a(this.F, this.G)) && (this.N) && (!this.ap.isRunning()))
    {
      this.N = false;
      b((int)this.F, (int)this.G, locala1);
      return false;
      return true;
      label623:
      this.X.setPadding((int)(this.e.q / 3.0F + f1 * this.e.q), this.X.getPaddingTop(), 0, 0);
    }
    if ((a(this.F, this.G)) && (this.k.getVisibility() == 0) && (!this.N) && (!this.ap.isRunning()))
    {
      this.N = true;
      a((int)this.F, (int)this.G, locala1);
      return false;
    }
    int i3;
    int i5;
    int i4;
    label793:
    com.viber.voip.messages.ui.chathead.a.a locala2;
    if (!this.N)
    {
      ay.a(locala1, this.F);
      ay.b(locala1, this.G);
      if (this.F < this.H)
      {
        i3 = 1;
        if (i3 == 0) {
          break label952;
        }
        if (i1 >= i2 - 1) {
          break label943;
        }
        i5 = i1 + 1;
        i4 = 1;
        if ((i4 != 0) && (!this.ao.isRunning()))
        {
          locala2 = ((b)this.al.get(i5)).a();
          if (i3 == 0) {
            break label979;
          }
          if (b(locala1) < b(locala2) + this.e.b / 2)
          {
            a(locala2, i1);
            Collections.swap(this.al, i1, i5);
          }
        }
        label876:
        if ((this.l.isShowing()) && (locala1 == this.o))
        {
          this.Q = false;
          this.M = true;
          this.l.dismiss();
        }
        this.j.invalidate();
      }
    }
    for (;;)
    {
      this.H = this.F;
      this.I = this.G;
      return true;
      i3 = 0;
      break;
      label943:
      i4 = 0;
      i5 = 0;
      break label793;
      label952:
      if (i1 > 1)
      {
        i5 = i1 - 1;
        i4 = 1;
        break label793;
      }
      i4 = 0;
      i5 = 0;
      break label793;
      label979:
      if (b(locala1) <= b(locala2) - this.e.b / 2) {
        break label876;
      }
      a(locala2, i1);
      Collections.swap(this.al, i1, i5);
      break label876;
      if (!this.as.isRunning())
      {
        int[] arrayOfInt = new int[2];
        this.i.getLocationOnScreen(arrayOfInt);
        ay.a(locala1, arrayOfInt[0] + this.E);
        ay.b(locala1, arrayOfInt[1] - this.B + this.E);
      }
    }
  }
  
  private float b(com.viber.voip.messages.ui.chathead.a.a parama)
  {
    if (this.Z) {
      return ay.a(parama);
    }
    return ay.b(parama);
  }
  
  private void b(int paramInt)
  {
    this.l.p();
    this.P = true;
    m();
    Iterator localIterator = this.al.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.messages.ui.chathead.a.a locala = ((b)localIterator.next()).a();
      ViewHelper.setScaleX(locala, 1.0F);
      ViewHelper.setScaleY(locala, 1.0F);
    }
    if (this.n != null) {
      this.n.setBorderVisible(false);
    }
    boolean bool;
    if (this.T)
    {
      c("popupCloseAnimation: mToRestoreAfterCall");
      this.j.setVisibility(4);
      this.f.setVisibility(4);
      this.h.setVisibility(4);
      if (this.J >= (this.z - this.e.b) / 2) {
        break label282;
      }
      bool = true;
      label139:
      if (v())
      {
        if (!bool) {
          break label287;
        }
        q().setTextGravity(3);
      }
      label158:
      if (!bool) {
        break label298;
      }
    }
    label282:
    label287:
    label298:
    for (this.J = (-this.e.t);; this.J = (this.z - this.e.b + this.e.t))
    {
      List localList = a(this.J, this.K, bool, false);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.addListener(new m(this));
      localAnimatorSet.playTogether(localList);
      localAnimatorSet.setDuration(paramInt);
      localAnimatorSet.start();
      return;
      c("popupCloseAnimation: !mToRestoreAfterCall");
      if (v()) {
        r().setVisibility(4);
      }
      this.h.setVisibility(4);
      ViewHelper.setAlpha(this.h, 0.0F);
      this.j.setVisibility(0);
      break;
      bool = false;
      break label139;
      q().setTextGravity(5);
      break label158;
    }
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.i, "scaleX", new float[] { 1.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.i, "scaleY", new float[] { 1.0F });
    int[] arrayOfInt = new int[2];
    this.i.getLocationOnScreen(arrayOfInt);
    int i1 = arrayOfInt[0];
    int i2 = arrayOfInt[1] - e();
    this.ap = new AnimatorSet();
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = (i1 - paramInt1);
    ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
    float[] arrayOfFloat2 = new float[1];
    arrayOfFloat2[0] = (i2 - paramInt2);
    ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
    localValueAnimator1.addUpdateListener(new as(this, paramInt1, null));
    localValueAnimator2.addUpdateListener(new at(this, paramInt2, null));
    this.ap.addListener(new i(this));
    this.ap.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2, localObjectAnimator1, localObjectAnimator2 });
    this.ap.setDuration(250L);
    this.ap.start();
  }
  
  private void b(int paramInt1, int paramInt2, com.viber.voip.messages.ui.chathead.a.a parama)
  {
    a(q());
    int[] arrayOfInt = new int[2];
    this.i.getLocationOnScreen(arrayOfInt);
    int i1 = arrayOfInt[0];
    int i2 = arrayOfInt[1] - this.B;
    this.ap = new AnimatorSet();
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.i, "scaleX", new float[] { 0.8F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.i, "scaleY", new float[] { 0.8F });
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = (paramInt1 + -i1);
    ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
    float[] arrayOfFloat2 = new float[1];
    arrayOfFloat2[0] = (paramInt2 + -i2);
    ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
    localValueAnimator1.addUpdateListener(new av(this, parama, i1, false));
    localValueAnimator2.addUpdateListener(new aw(this, parama, i2, false));
    this.ap.addListener(new x(this));
    this.ap.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2, localObjectAnimator1, localObjectAnimator2 });
    this.ap.setDuration(250L);
    this.ap.setInterpolator(new AccelerateInterpolator());
    this.ap.start();
  }
  
  private void b(Context paramContext)
  {
    this.u = new WindowManager.LayoutParams(this.e.b - this.e.t, this.e.b, 2002, 8, -3);
    this.t = new WindowManager.LayoutParams(-1, -1, 2002, 131080, -3);
    this.w = new WindowManager.LayoutParams(-1, -1, 2002, 8, -3);
    this.x = new WindowManager.LayoutParams(1, -1, 2002, 8, -3);
    this.v = new WindowManager.LayoutParams(-1, this.e.o, 2006, 16, -3);
    this.t.gravity = 48;
    this.u.gravity = 51;
    this.v.gravity = 83;
    this.F = this.e.p.x;
    this.G = this.e.p.y;
    this.t.x = 0;
    this.t.y = 0;
    this.u.x = (this.e.p.x - this.e.t);
    this.u.y = this.e.p.y;
    this.w.x = 0;
    this.w.y = 0;
  }
  
  private void b(Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.R = false;
    com.viber.voip.messages.controller.c.as localas = com.viber.voip.messages.controller.c.as.a();
    ConversationEntityImpl localConversationEntityImpl = localas.c(paramLong);
    if (localConversationEntityImpl == null)
    {
      this.R = true;
      return;
    }
    boolean bool1 = localConversationEntityImpl.isConversationGroup();
    String str1;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl2;
    Uri localUri;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl1;
    if (bool1)
    {
      str1 = "";
      MessageEntityImpl localMessageEntityImpl = localas.q(paramLong);
      if (localMessageEntityImpl != null)
      {
        localParticipantInfoEntityImpl2 = localas.j(localMessageEntityImpl.getParticipantId());
        if (localParticipantInfoEntityImpl2 != null) {
          str1 = localParticipantInfoEntityImpl2.getCommonContactName();
        }
        localUri = null;
        localParticipantInfoEntityImpl1 = localParticipantInfoEntityImpl2;
      }
    }
    String str2;
    for (;;)
    {
      str2 = a(paramLong, str1, bool1);
      if (!this.al.isEmpty()) {
        break label246;
      }
      a(new ax(paramContext));
      a(new b(paramContext, localConversationEntityImpl), localUri, true, localParticipantInfoEntityImpl1);
      this.aa.a(this);
      this.R = true;
      label155:
      for (int i2 = 0; i2 < this.al.size(); i2++) {
        ((b)this.al.get(i2)).a().bringToFront();
      }
      localParticipantInfoEntityImpl2 = localas.i();
      break;
      localParticipantInfoEntityImpl1 = localas.c(localConversationEntityImpl.getNumber());
      str1 = null;
      localUri = null;
      if (localParticipantInfoEntityImpl1 != null)
      {
        str1 = localParticipantInfoEntityImpl1.getCommonContactName(false);
        localUri = localParticipantInfoEntityImpl1.getCommonContactImage(false);
      }
    }
    label246:
    int i1 = a(paramLong);
    if (i1 > 0)
    {
      b localb2 = (b)this.al.get(i1);
      localb2.a(localConversationEntityImpl);
      if (!this.P) {
        if (paramBoolean2)
        {
          this.o = localb2.a();
          b(localb2);
        }
      }
      for (;;)
      {
        this.R = true;
        break;
        if (this.o == localb2.a()) {
          localb2.a().setShowBadge(false);
        }
        for (;;)
        {
          if (localConversationEntityImpl.getUnreadMessagesCount() == 0) {
            break label372;
          }
          localb2.a().setMessagesCount(com.viber.voip.messages.j.b(localConversationEntityImpl.getUnreadMessagesCount()));
          break;
          localb2.a().setShowBadge(true);
        }
        label372:
        continue;
        this.l.j();
        this.j.removeView(localb2.a());
        this.al.remove(localb2);
        a(localb2, localUri, true, localParticipantInfoEntityImpl1);
        localb2.a().setShowBadge(false);
        if (localConversationEntityImpl.getUnreadMessagesCount() != 0) {
          localb2.a().setMessagesCount(com.viber.voip.messages.j.b(localConversationEntityImpl.getUnreadMessagesCount()));
        }
      }
    }
    b localb1 = new b(paramContext, localConversationEntityImpl);
    boolean bool4;
    label533:
    boolean bool2;
    if (this.al.size() == d) {
      if (!this.P) {
        if (this.o == p())
        {
          this.j.removeView(((b)this.al.get(2)).a());
          this.al.remove(this.al.get(2));
          bool4 = true;
          bool2 = true;
        }
      }
    }
    for (boolean bool3 = bool4;; bool3 = false)
    {
      if (!this.P)
      {
        a(localb1, localUri, bool2, bool3, paramBoolean2, localParticipantInfoEntityImpl1);
        break label155;
        this.j.removeView(p());
        this.al.remove(this.al.get(1));
        bool4 = false;
        break label533;
        this.j.removeView(p());
        this.al.remove(this.al.get(1));
        bool4 = false;
        break label533;
      }
      this.l.j();
      a(localb1, localUri, true, localParticipantInfoEntityImpl1);
      localb1.a().setShowBadge(false);
      if (localConversationEntityImpl.getUnreadMessagesCount() != 0) {
        localb1.a().setMessagesCount(com.viber.voip.messages.j.b(localConversationEntityImpl.getUnreadMessagesCount()));
      }
      this.R = true;
      break label155;
      int i3;
      if (this.u.x < this.z / 2 - this.e.b / 2)
      {
        i3 = 1;
        label720:
        if (i3 == 0) {
          break label861;
        }
        q().setTextGravity(3);
        this.h.setTextGravity(3);
      }
      for (;;)
      {
        if (this.P)
        {
          q().setShowBadge(true);
          if (localConversationEntityImpl.getUnreadMessagesCount() != 0)
          {
            q().setMessagesCount(com.viber.voip.messages.j.b(localConversationEntityImpl.getUnreadMessagesCount()));
            this.h.setMessagesCount(com.viber.voip.messages.j.b(localConversationEntityImpl.getUnreadMessagesCount()));
          }
          m();
        }
        r().setShowBadge(true);
        d(this.aa.g());
        this.j.invalidate();
        if ((TextUtils.isEmpty(str2)) || (!paramBoolean1)) {
          break;
        }
        this.r.removeCallbacks(this.ax);
        b(str2);
        return;
        i3 = 0;
        break label720;
        label861:
        q().setTextGravity(5);
        this.h.setTextGravity(5);
      }
      bool2 = false;
    }
  }
  
  private void b(b paramb)
  {
    if ((paramb instanceof ax))
    {
      this.l.a(false);
      this.l.l();
      this.l.k();
      this.l.j();
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList();
      com.viber.voip.messages.ui.chathead.a.a locala1 = this.n;
      if (locala1 != null)
      {
        float[] arrayOfFloat3 = new float[1];
        arrayOfFloat3[0] = (this.e.i / this.e.b);
        localArrayList.add(ObjectAnimator.ofFloat(locala1, "scaleX", arrayOfFloat3));
        float[] arrayOfFloat4 = new float[1];
        arrayOfFloat4[0] = (this.e.i / this.e.b);
        localArrayList.add(ObjectAnimator.ofFloat(locala1, "scaleY", arrayOfFloat4));
      }
      com.viber.voip.messages.ui.chathead.a.a locala2 = paramb.a();
      this.n = locala2;
      float[] arrayOfFloat1 = new float[1];
      arrayOfFloat1[0] = (this.e.j / this.e.b);
      localArrayList.add(ObjectAnimator.ofFloat(locala2, "scaleX", arrayOfFloat1));
      float[] arrayOfFloat2 = new float[1];
      arrayOfFloat2[0] = (this.e.j / this.e.b);
      localArrayList.add(ObjectAnimator.ofFloat(locala2, "scaleY", arrayOfFloat2));
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.addListener(new v(this, locala2, locala1, paramb));
      localAnimatorSet.setDuration(250L);
      localAnimatorSet.playTogether(localArrayList);
      localAnimatorSet.start();
      return;
      this.l.a(true);
      this.l.l();
      this.l.a(c(paramb), true, false);
    }
  }
  
  private void b(String paramString)
  {
    if ((d()) || (this.V)) {
      this.ag.setVisibility(4);
    }
    for (;;)
    {
      this.r.postDelayed(new ap(this, paramString), 500L);
      this.r.postDelayed(this.ax, 5500L);
      return;
      this.ag.setVisibility(0);
    }
  }
  
  private static Intent c(b paramb)
  {
    ConversationEntity localConversationEntity = paramb.b();
    if (localConversationEntity.isConversationGroup()) {}
    for (String str = localConversationEntity.getGroupName();; str = "")
    {
      Intent localIntent = com.viber.voip.messages.j.a(localConversationEntity.getId(), localConversationEntity.getGroupId(), localConversationEntity.getNumber(), localConversationEntity.getConversationType(), -1L, -1L, str, true);
      com.viber.voip.e.u.a(localIntent);
      localIntent.setFlags(268435456);
      localIntent.setAction("com.viber.voip.action.CONVERSATION");
      return localIntent;
    }
  }
  
  private void c(int paramInt)
  {
    int i1 = -1 + this.al.size();
    ArrayList localArrayList = new ArrayList();
    AnimatorSet localAnimatorSet = new AnimatorSet();
    int i2 = 0;
    int i3 = 0;
    if (i2 < paramInt)
    {
      b localb = (b)this.al.get(i2);
      ValueAnimator localValueAnimator2;
      if (this.Z)
      {
        float f2 = ay.a(localb.a());
        int i6 = i1 - i2;
        float[] arrayOfFloat2 = new float[1];
        arrayOfFloat2[0] = (a(i6) - f2);
        localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
        localValueAnimator2.addUpdateListener(new av(this, localb, f2, false));
      }
      ValueAnimator localValueAnimator1;
      for (Object localObject = localValueAnimator2;; localObject = localValueAnimator1)
      {
        localArrayList.add(localObject);
        i2++;
        i3 = 1;
        break;
        float f1 = ay.b(localb.a());
        int i5 = i1 - i2;
        float[] arrayOfFloat1 = new float[1];
        arrayOfFloat1[0] = (a(i5) - f1);
        localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
        localValueAnimator1.addUpdateListener(new aw(this, localb, f1, false));
      }
    }
    localAnimatorSet.addListener(new q(this, paramInt));
    if (i3 == 0)
    {
      if (this.M) {
        u();
      }
      if (paramInt - 1 <= 0) {
        break label304;
      }
    }
    label304:
    for (int i4 = paramInt - 1;; i4 = -1 + this.al.size())
    {
      b((b)this.al.get(i4));
      localAnimatorSet.playTogether(localArrayList);
      localAnimatorSet.setDuration(250L);
      localAnimatorSet.setInterpolator(new LinearInterpolator());
      localAnimatorSet.setStartDelay(100L);
      localAnimatorSet.start();
      return;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    a(false, q());
    int[] arrayOfInt = new int[2];
    this.i.getLocationOnScreen(arrayOfInt);
    int i1 = arrayOfInt[0];
    int i2 = arrayOfInt[1] - e();
    this.ap = new AnimatorSet();
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.i, "scaleX", new float[] { 0.8F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.i, "scaleY", new float[] { 0.8F });
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = (paramInt1 + -i1);
    ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1);
    float[] arrayOfFloat2 = new float[1];
    arrayOfFloat2[0] = (paramInt2 + -i2);
    ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
    localValueAnimator1.addUpdateListener(new as(this, i1, null));
    localValueAnimator2.addUpdateListener(new at(this, i2, null));
    this.ap.addListener(new j(this));
    this.ap.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2, localObjectAnimator1, localObjectAnimator2 });
    this.ap.setDuration(250L);
    this.ap.setInterpolator(new AccelerateInterpolator());
    this.ap.start();
  }
  
  private void c(Context paramContext)
  {
    if (!this.an) {
      return;
    }
    bc.a().a(com.viber.voip.a.a.E.c());
    this.am.sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"));
    paramContext.unregisterReceiver(this.b);
    this.an = false;
    this.al.clear();
    if (this.l != null)
    {
      this.l.p();
      this.l.h();
    }
    if (this.m != null) {
      this.m.dismiss();
    }
    if (this.f != null) {
      this.s.removeView(this.f);
    }
    if (this.j != null)
    {
      this.j.removeAllViews();
      this.s.removeView(this.j);
    }
    if (this.h != null) {
      this.s.removeView(this.h);
    }
    if (this.k != null) {
      this.s.removeView(this.k);
    }
    this.ap.removeAllListeners();
    this.ao.removeAllListeners();
    this.aq.removeAllListeners();
    this.ar.removeAllListeners();
    this.as.removeAllListeners();
    if (this.ac != null) {
      this.ac.listen(this.ab, 0);
    }
    this.aa.b(this);
    ViberApplication.getInstance().notifyActivityOnForeground(false, null);
    ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getDialerPhoneStateListener().removeDelegate(this.aD);
    a();
    this.N = false;
    this.M = false;
  }
  
  private static void c(String paramString)
  {
    ViberApplication.log(3, "ChatHeadsController", paramString);
  }
  
  private void d(int paramInt)
  {
    if (v())
    {
      if (paramInt != 0)
      {
        r().setShowBadge(true);
        r().setMessagesCount(com.viber.voip.messages.j.b(paramInt));
      }
    }
    else {
      return;
    }
    r().setShowBadge(false);
  }
  
  private void d(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
    localIntentFilter.addAction("com.viber.voip.action.POPUP_SERVICE_ACTION");
    localIntentFilter.addAction("android.intent.action.PHONE_STATE");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    localIntentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    paramContext.registerReceiver(this.b, localIntentFilter);
  }
  
  private boolean d()
  {
    boolean bool = true;
    int[] arrayOfInt = new int[2];
    this.g.getLocationOnScreen(arrayOfInt);
    c("onGlobalLayout: xPos: " + arrayOfInt[0] + " yPos: " + arrayOfInt[bool]);
    if (arrayOfInt[0] == 0) {
      return false;
    }
    if (arrayOfInt[bool] == 0) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  private int e()
  {
    this.s.getDefaultDisplay().getMetrics(this.y);
    return this.y.heightPixels - this.j.getMeasuredHeight();
  }
  
  private int f()
  {
    this.s.getDefaultDisplay().getMetrics(this.y);
    return this.y.widthPixels - this.j.getMeasuredWidth();
  }
  
  private void g()
  {
    a(false);
  }
  
  private void h()
  {
    if (!this.an) {
      return;
    }
    if (this.m.isShowing()) {
      this.m.dismiss();
    }
    Intent localIntent = new Intent(this.am, ChatHeadBackActivity.class);
    localIntent.addFlags(268435456);
    localIntent.addFlags(8388608);
    localIntent.addFlags(65536);
    this.am.startActivity(localIntent);
    if (gl.e(this.am))
    {
      this.ay = true;
      return;
    }
    this.Z = true;
    this.P = false;
    this.T = false;
    i();
    r().setVisibility(0);
    this.j.setVisibility(0);
    this.f.setVisibility(0);
    ArrayList localArrayList = new ArrayList();
    this.ar = new AnimatorSet();
    int i1 = -1 + this.al.size();
    Iterator localIterator = this.al.iterator();
    int i2 = i1;
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (!this.M)
      {
        ViewHelper.setScaleX(localb.a(), this.e.i / this.e.b);
        ViewHelper.setScaleY(localb.a(), this.e.i / this.e.b);
      }
      float f1 = ay.a(localb.a());
      float f2 = ay.b(localb.a());
      Object localObject1;
      Object localObject2;
      if (this.Z)
      {
        float[] arrayOfFloat4 = new float[1];
        arrayOfFloat4[0] = (a(i2) - f1);
        localObject1 = ValueAnimator.ofFloat(arrayOfFloat4);
        float[] arrayOfFloat5 = new float[1];
        arrayOfFloat5[0] = (this.e.c - f2);
        localObject2 = ValueAnimator.ofFloat(arrayOfFloat5);
        localArrayList.add(localObject1);
        localArrayList.add(localObject2);
        ((ValueAnimator)localObject1).addUpdateListener(new av(this, localb, f1, false));
        ((ValueAnimator)localObject2).addUpdateListener(new aw(this, localb, f2, false));
        i2--;
      }
      else
      {
        float[] arrayOfFloat3;
        if (this.af)
        {
          arrayOfFloat3 = new float[1];
          arrayOfFloat3[0] = (this.z - (this.z - this.e.w) / 2 + this.e.a - this.e.e - this.e.i - f1);
        }
        float[] arrayOfFloat1;
        for (ValueAnimator localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat3);; localValueAnimator1 = ValueAnimator.ofFloat(arrayOfFloat1))
        {
          float[] arrayOfFloat2 = new float[1];
          arrayOfFloat2[0] = (a(i2) - f2);
          ValueAnimator localValueAnimator2 = ValueAnimator.ofFloat(arrayOfFloat2);
          localObject1 = localValueAnimator1;
          localObject2 = localValueAnimator2;
          break;
          arrayOfFloat1 = new float[1];
          arrayOfFloat1[0] = (this.z - this.e.e - this.e.i - f1);
        }
      }
    }
    this.ar.addListener(new l(this));
    this.ar.playTogether(localArrayList);
    this.ar.setDuration(700L);
    this.ar.setInterpolator(new OvershootInterpolator(1.0F));
    this.ar.start();
  }
  
  private void i()
  {
    float f1;
    if (this.Z)
    {
      f1 = this.z;
      if (f1 > com.viber.voip.messages.extras.image.h.a(320.0F)) {
        break label85;
      }
    }
    label85:
    for (boolean bool = true;; bool = false)
    {
      this.S = bool;
      if (!this.S) {
        break label103;
      }
      this.D = this.e.e;
      if (!this.Z) {
        break label90;
      }
      this.C = this.e.g;
      return;
      f1 = this.A - this.B;
      break;
    }
    label90:
    this.C = this.e.g;
    return;
    label103:
    this.D = this.e.f;
    this.C = this.e.h;
  }
  
  private void j()
  {
    b(700);
  }
  
  @SuppressLint({"NewApi"})
  private void k()
  {
    if (Build.VERSION.SDK_INT > 13)
    {
      Point localPoint = new Point();
      this.s.getDefaultDisplay().getSize(localPoint);
      this.z = localPoint.x;
      this.A = localPoint.y;
      return;
    }
    Display localDisplay = this.s.getDefaultDisplay();
    this.A = localDisplay.getHeight();
    this.z = localDisplay.getWidth();
  }
  
  private void l()
  {
    if (this.F < 0.0F) {
      this.F = 0.0F;
    }
    if (this.G < 0.0F) {
      this.G = 0.0F;
    }
    int i4;
    if (this.Z)
    {
      int i3 = f();
      if (this.F > this.z - this.e.b - i3) {
        this.F = (this.z - this.e.b - i3);
      }
      if (this.P)
      {
        i4 = e();
        if (this.G > this.A - this.e.b - i4) {
          this.G = (this.A - this.e.b - i4);
        }
      }
    }
    int i2;
    do
    {
      return;
      i4 = this.B;
      break;
      int i1 = f();
      if (this.F > this.z - this.e.b - i1) {
        this.F = (this.z - this.e.b - i1);
      }
      i2 = e();
    } while (this.G <= this.A - this.e.b - i2);
    this.G = (this.A - this.e.b - i2);
  }
  
  private void m()
  {
    if (this.al.size() > 2) {
      for (int i1 = 0; i1 < -1 + this.al.size(); i1++) {
        ((b)this.al.get(i1)).a().setShowBadge(false);
      }
    }
  }
  
  private void n()
  {
    for (int i1 = 1; i1 < -1 + this.al.size(); i1++) {
      ((b)this.al.get(i1)).a().setShowBadge(true);
    }
    d(this.aa.g());
  }
  
  private void o()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this.h, "alpha", new float[] { 1.0F, 0.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.addListener(new z(this));
    localAnimatorSet.play(localObjectAnimator);
    localAnimatorSet.setDuration(50L);
    localAnimatorSet.setInterpolator(new AccelerateInterpolator());
    localAnimatorSet.start();
  }
  
  private com.viber.voip.messages.ui.chathead.a.a p()
  {
    return ((b)this.al.get(1)).a();
  }
  
  private com.viber.voip.messages.ui.chathead.a.a q()
  {
    return ((b)this.al.get(-1 + this.al.size())).a();
  }
  
  private com.viber.voip.messages.ui.chathead.a.a r()
  {
    return ((b)this.al.get(0)).a();
  }
  
  private void s()
  {
    if (!d()) {
      this.h.setVisibility(0);
    }
    Bitmap localBitmap1 = this.j.getDrawingCache();
    if (localBitmap1 != null) {}
    for (;;)
    {
      try
      {
        if (v())
        {
          i1 = ay.a(q());
          i2 = 0;
          if (i1 >= 0) {
            continue;
          }
          Bitmap localBitmap2 = Bitmap.createBitmap(Bitmap.createBitmap(localBitmap1), i2, (int)ay.b(q()), this.e.b - this.e.t, this.e.b);
          this.h.setImageBitmap(localBitmap2);
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        int i1;
        int i2;
        t();
        continue;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        t();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        t();
        continue;
      }
      this.r.postDelayed(this.aw, 200L);
      return;
      i2 = i1;
    }
  }
  
  private void t()
  {
    if (v())
    {
      Bitmap localBitmap1 = q().getDrawingCache();
      if (localBitmap1 != null)
      {
        Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, this.e.b, this.e.b);
        this.h.setImageBitmap(localBitmap2);
      }
    }
  }
  
  private void u()
  {
    this.M = false;
    if (this.Z)
    {
      View localView = this.l.getContentView();
      if ((localView != null) && (localView.getParent() != null))
      {
        c("openPopupWindow: content view parent is not null,view attached type is: " + localView);
        ((ViewGroup)localView.getParent()).removeAllViews();
        this.l.setContentView(this.l.b());
      }
      this.l.showAsDropDown(this.f, 0, this.e.a);
    }
    for (;;)
    {
      this.l.d();
      this.l.e();
      if (!this.Z) {
        break;
      }
      this.l.update(0, this.e.a, -1, -1, true);
      return;
      this.l.showAsDropDown(this.f, 0, 0);
    }
    if (this.af)
    {
      this.l.update((this.z - this.e.w) / 2, 0, this.e.w, -1, true);
      return;
    }
    this.l.update(0, 0, this.z - this.e.a, -1, true);
  }
  
  private boolean v()
  {
    return (this.al != null) && (!this.al.isEmpty());
  }
  
  public Bitmap a(int paramInt1, Context paramContext, int paramInt2, int paramInt3, Uri... paramVarArgs)
  {
    if (paramVarArgs.length == 1) {
      return a(paramContext, paramVarArgs[0], 2130838218);
    }
    if (paramVarArgs.length > 1) {
      return a(paramContext, paramInt1, paramInt2, paramInt3, paramVarArgs);
    }
    return null;
  }
  
  public Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    com.viber.voip.messages.controller.c.as localas = com.viber.voip.messages.controller.c.as.a();
    LinkedList localLinkedList = new LinkedList();
    List localList = localas.i(paramLong);
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext()) {
      localHashSet.add(Long.valueOf(((ParticipantEntityImpl)localIterator1.next()).getParticipantInfoId()));
    }
    Iterator localIterator2 = localas.a(localHashSet, "participant_type ASC, display_name ASC, number ASC").iterator();
    while (localIterator2.hasNext())
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = (ParticipantInfoEntityImpl)localIterator2.next();
      if ((paramParticipantInfoEntityImpl == null) || (localParticipantInfoEntityImpl.getId() != paramParticipantInfoEntityImpl.getId())) {
        localLinkedList.add(localParticipantInfoEntityImpl.getCommonContactImage());
      }
    }
    return a(paramInt1, paramContext, paramInt2, paramInt3, (Uri[])localLinkedList.toArray(new Uri[localLinkedList.size()]));
  }
  
  public Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, Uri[] paramArrayOfUri)
  {
    Bitmap localBitmap1;
    Bitmap localBitmap2;
    Bitmap localBitmap3;
    Bitmap localBitmap4;
    int i1;
    int i2;
    Bitmap localBitmap5;
    Canvas localCanvas;
    Bitmap localBitmap6;
    Bitmap localBitmap7;
    if (paramArrayOfUri.length == 2)
    {
      localBitmap1 = a(paramContext, paramArrayOfUri[0], 2130838213);
      localBitmap2 = a(paramContext, paramArrayOfUri[1], 2130838213);
      localBitmap3 = null;
      localBitmap4 = null;
      i1 = com.viber.voip.messages.extras.image.h.a(2.0F);
      i2 = com.viber.voip.messages.extras.image.h.a(1.0F);
      localBitmap5 = Bitmap.createBitmap(paramInt2 + i1, paramInt3 + i1, Bitmap.Config.ARGB_8888);
      localCanvas = new Canvas(localBitmap5);
      if (paramInt1 != 0) {
        localCanvas.drawColor(paramInt1);
      }
      if ((localBitmap3 != null) || (localBitmap4 != null)) {
        break label326;
      }
      localBitmap6 = Bitmap.createBitmap(Bitmap.createScaledBitmap(localBitmap1, paramInt2, paramInt3, true), i2 + paramInt2 / 4, 0, i2 + paramInt2 / 2, paramInt3);
      localBitmap7 = Bitmap.createBitmap(Bitmap.createScaledBitmap(localBitmap2, paramInt2, paramInt3, true), i2 + paramInt2 / 4, 0, i2 + paramInt2 / 2, paramInt3);
    }
    for (;;)
    {
      if ((localBitmap3 != null) || (localBitmap4 != null)) {
        break label497;
      }
      localCanvas.drawBitmap(localBitmap6, 0.0F, 0.0F, new Paint(1));
      localCanvas.drawBitmap(localBitmap7, i1 + paramInt2 / 2, 0.0F, new Paint(1));
      return localBitmap5;
      if (paramArrayOfUri.length == 3)
      {
        localBitmap1 = a(paramContext, paramArrayOfUri[0], 2130838213);
        localBitmap2 = a(paramContext, paramArrayOfUri[1], 2130838217);
        localBitmap3 = a(paramContext, paramArrayOfUri[2], 2130838216);
        localBitmap4 = null;
        break;
      }
      localBitmap1 = a(paramContext, paramArrayOfUri[0], 2130838215);
      localBitmap2 = a(paramContext, paramArrayOfUri[1], 2130838214);
      localBitmap3 = a(paramContext, paramArrayOfUri[2], 2130838217);
      localBitmap4 = a(paramContext, paramArrayOfUri[3], 2130838216);
      break;
      label326:
      if ((localBitmap3 != null) && (localBitmap4 == null))
      {
        localBitmap6 = Bitmap.createBitmap(Bitmap.createScaledBitmap(localBitmap1, paramInt2, paramInt3, true), i2 + paramInt2 / 4, 0, i2 + paramInt2 / 2, paramInt3);
        localBitmap7 = Bitmap.createScaledBitmap(localBitmap2, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
        localBitmap3 = Bitmap.createScaledBitmap(localBitmap3, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
      }
      else
      {
        localBitmap6 = Bitmap.createScaledBitmap(localBitmap1, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
        localBitmap7 = Bitmap.createScaledBitmap(localBitmap2, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
        localBitmap3 = Bitmap.createScaledBitmap(localBitmap3, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
        localBitmap4 = Bitmap.createScaledBitmap(localBitmap4, i2 + paramInt2 / 2, i2 + paramInt3 / 2, true);
      }
    }
    label497:
    if ((localBitmap3 != null) && (localBitmap4 == null))
    {
      localCanvas.drawBitmap(localBitmap6, 0.0F, 0.0F, new Paint(1));
      localCanvas.drawBitmap(localBitmap7, i1 + paramInt2 / 2, 0.0F, new Paint(1));
      localCanvas.drawBitmap(localBitmap3, i1 + paramInt2 / 2, i1 + paramInt3 / 2, new Paint(1));
      return localBitmap5;
    }
    localCanvas.drawBitmap(localBitmap6, 0.0F, 0.0F, new Paint(1));
    localCanvas.drawBitmap(localBitmap7, i1 + paramInt2 / 2, 0.0F, new Paint(1));
    localCanvas.drawBitmap(localBitmap3, 0.0F, i1 + paramInt3 / 2, new Paint(1));
    localCanvas.drawBitmap(localBitmap4, i1 + paramInt2 / 2, i1 + paramInt3 / 2, new Paint(1));
    return localBitmap5;
  }
  
  public Bitmap a(Context paramContext, Uri paramUri, int paramInt)
  {
    c("getBitmapFromUri photoUri = " + paramUri);
    Bitmap localBitmap;
    if ((paramUri == null) && (paramInt <= 0)) {
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      if (paramUri == null) {
        BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
      }
      localBitmap = com.viber.voip.util.b.w.a(paramContext, paramUri, false);
    } while (localBitmap != null);
    return BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
  }
  
  public void a()
  {
    this.ae.b(this.aB);
    this.ae.b(this.aA);
    this.ae.b(this.aC);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Log.w(c, "onBadgeValueChanged: " + paramInt2);
    if (paramInt1 == 0) {
      this.r.post(new ak(this, paramInt2));
    }
  }
  
  public void b()
  {
    this.ae.a(this.aB);
    this.ae.a(this.aC);
    this.ae.a(this.aA);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.d
 * JD-Core Version:    0.7.0.1
 */