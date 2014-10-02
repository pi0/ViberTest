package com.viber.voip.messages.ui.media;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ao;
import com.viber.voip.a.bc;
import com.viber.voip.a.y;
import com.viber.voip.a.z;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.conversation.ah;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.twitter.l;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.phone.call.k;
import com.viber.voip.util.at;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import com.viber.voip.util.gn;
import com.viber.voip.util.upload.n;
import com.viber.voip.w;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ViewMediaActivity
  extends ViberFragmentActivity
  implements e, com.viber.voip.phone.call.i
{
  protected ActionBar a;
  private ViewPagerWithPagingEnable b;
  private TextView c;
  private View d;
  private ai e;
  private long f = -1L;
  private ah g;
  private an h;
  private int i = -1;
  private long j = -1L;
  private bb k;
  private com.viber.voip.messages.adapters.h l;
  private boolean m;
  private boolean n;
  private boolean o;
  private final Handler p = dc.a(dk.a);
  private com.viber.voip.a.m q;
  private com.viber.voip.a.ax r = new com.viber.voip.a.ax();
  private com.viber.voip.a.ay s = new com.viber.voip.a.ay();
  private BroadcastReceiver t;
  private com.viber.voip.messages.ui.bb u;
  private Menu v;
  private Map<Integer, ba> w = Collections.synchronizedMap(new HashMap());
  
  private void a(int paramInt1, int paramInt2)
  {
    this.h = this.l.a(paramInt1);
    this.a.setSubtitle(paramInt2 - paramInt1 + "/" + paramInt2);
  }
  
  private void a(Uri paramUri1, Uri paramUri2)
  {
    if ((paramUri1 != null) && (paramUri2 != null))
    {
      ViberApplication.getInstance().getMessagesManager().d().a(this.f, paramUri1.toString(), paramUri2.toString());
      Toast.makeText(this, getString(2131494030), 1).show();
    }
  }
  
  private void a(Bundle paramBundle)
  {
    String str = paramBundle.getString("prev_action");
    if (str == null) {
      return;
    }
    if (str.equals(com.viber.voip.a.a.n.a())) {}
    for (this.q = com.viber.voip.a.a.n; "image".equals(paramBundle.getString("camera_image")); this.q = com.viber.voip.a.a.o)
    {
      bc.a().a(this.q.c.a());
      return;
    }
    bc.a().a(this.q.d.a());
  }
  
  private void a(Menu paramMenu)
  {
    boolean bool1 = true;
    an localan;
    boolean bool2;
    boolean bool4;
    label119:
    boolean bool5;
    label145:
    label164:
    MenuItem localMenuItem2;
    if ((this.l != null) && (paramMenu != null))
    {
      localan = this.l.a(this.i);
      if ((!localan.e().equals("image")) || (localan.P())) {
        break label225;
      }
      bool2 = bool1;
      boolean bool3 = localan.e().equals("animated_message");
      paramMenu.findItem(2131166334).setVisible(bool2);
      paramMenu.findItem(2131166335).setVisible(bool2);
      paramMenu.findItem(2131166336).setVisible(bool2);
      if (TextUtils.isEmpty(localan.v())) {
        break label231;
      }
      bool4 = bool1;
      if ((!bool4) || (!bool3)) {
        break label243;
      }
      if (localan.v().contains(w.t)) {
        break label237;
      }
      bool4 = bool1;
      MenuItem localMenuItem1 = paramMenu.findItem(2131166332);
      if (bool4) {
        break label280;
      }
      bool5 = bool1;
      localMenuItem1.setVisible(bool5);
      if (!ViberApplication.hideDoodle()) {
        paramMenu.findItem(2131166337).setVisible(bool2);
      }
      localMenuItem2 = paramMenu.findItem(2131166333);
      if (localan.ab()) {
        break label286;
      }
    }
    for (;;)
    {
      localMenuItem2.setVisible(bool1);
      return;
      label225:
      bool2 = false;
      break;
      label231:
      bool4 = false;
      break label119;
      label237:
      bool4 = false;
      break label145;
      label243:
      if ((!bool4) || (!localan.P())) {
        break label145;
      }
      if (!localan.v().contains(w.s))
      {
        bool4 = bool1;
        break label145;
      }
      bool4 = false;
      break label145;
      label280:
      bool5 = false;
      break label164;
      label286:
      bool1 = false;
    }
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl)
  {
    b("savePublicToGallery message : " + paramMessageEntityImpl);
    Uri localUri1 = Uri.fromFile(n.a(paramMessageEntityImpl.getDownloadId(), paramMessageEntityImpl.getPublicCacheMimeType()));
    Uri localUri2 = Uri.fromFile(n.a(paramMessageEntityImpl.getDownloadId(), paramMessageEntityImpl.getMimeType()));
    bj.a(localUri1, localUri2);
    paramMessageEntityImpl.setMediaUri(localUri2.toString());
    long l1 = com.viber.voip.messages.extras.image.m.a(this, localUri2, paramMessageEntityImpl.getMimeType());
    if (TextUtils.isEmpty(paramMessageEntityImpl.getBody())) {}
    for (Uri localUri3 = null;; localUri3 = Uri.parse(paramMessageEntityImpl.getBody()))
    {
      com.viber.voip.messages.extras.image.a locala = com.viber.voip.messages.extras.image.m.a(this, localUri2, localUri3);
      n.c(localUri2);
      paramMessageEntityImpl.setDuration(l1);
      paramMessageEntityImpl.setMediaUri(localUri2.toString());
      paramMessageEntityImpl.setExtraStatus(3);
      if ((locala != null) && (locala.a != null))
      {
        paramMessageEntityImpl.setBody(locala.a.toString());
        paramMessageEntityImpl.setThumbnailHeight(locala.c);
        paramMessageEntityImpl.setThumbnailWidth(locala.b);
      }
      new cr(this).b(paramMessageEntityImpl);
      return;
    }
  }
  
  private void a(String paramString)
  {
    this.a.setTitle(paramString);
  }
  
  private void b(int paramInt)
  {
    int i1 = 1;
    int i2 = this.l.getCount();
    an localan = this.l.a(paramInt);
    String str;
    Uri localUri;
    label153:
    label164:
    TextView localTextView;
    if ((localan.e().equals("video")) || (localan.e().equals("animated_message")))
    {
      int i3 = i1;
      this.m = i3;
      this.i = paramInt;
      this.j = localan.a();
      str = localan.v();
      boolean bool1 = com.viber.voip.messages.extras.image.h.a();
      localUri = null;
      if (bool1)
      {
        if ((!localan.e().equals("animated_message")) || ((!TextUtils.isEmpty(str)) && (bj.a(this, str)))) {
          break label333;
        }
        File localFile = n.a(localan.H(), "animated_message_cache");
        if ((localFile == null) || (!localFile.exists())) {
          break label300;
        }
        localUri = Uri.fromFile(localFile);
      }
      ViewPagerWithPagingEnable localViewPagerWithPagingEnable = this.b;
      if (i2 <= i1) {
        break label497;
      }
      localViewPagerWithPagingEnable.setPagingEnabled(i1);
      localTextView = this.c;
      if ((!this.a.isShowing()) || (TextUtils.isEmpty(localan.q()))) {
        break label502;
      }
    }
    label300:
    label333:
    label497:
    label502:
    for (int i5 = 0;; i5 = 8)
    {
      localTextView.setVisibility(i5);
      this.c.setText(localan.q());
      this.u.a(this.c, com.viber.voip.messages.ui.bd.c, false);
      if (this.m)
      {
        if (this.e == null) {
          g();
        }
        this.e.a(localUri);
      }
      if ((this.e != null) && (!this.e.i())) {
        this.k.a();
      }
      a(this.v);
      return;
      int i4 = 0;
      break;
      localUri = ViberApplication.getInstance().getLocalMediaServerController().a(localan.H(), localan.I(), i1);
      com.viber.voip.util.upload.s.c(localan.H());
      break label153;
      if ((TextUtils.isEmpty(str)) && (!com.viber.voip.util.upload.s.a(localan.H())) && (com.viber.voip.messages.extras.image.h.c()))
      {
        b("START DOWNLOADING!");
        ViberApplication.getInstance().getMessagesManager().c().a(localan.a());
      }
      boolean bool2 = this.m;
      localUri = null;
      if (!bool2) {
        break label153;
      }
      if ((!TextUtils.isEmpty(str)) && (bj.a(this, str)))
      {
        localUri = Uri.parse(str);
        break label153;
      }
      boolean bool3 = localan.R();
      localUri = null;
      if (!bool3) {
        break label153;
      }
      boolean bool4 = com.viber.voip.messages.extras.image.h.a(false);
      localUri = null;
      if (!bool4) {
        break label153;
      }
      boolean bool5 = ft.b(this);
      localUri = null;
      if (!bool5) {
        break label153;
      }
      localUri = ViberApplication.getInstance().getLocalMediaServerController().a(localan.H());
      com.viber.voip.util.upload.s.c(localan.H());
      break label153;
      i1 = 0;
      break label164;
    }
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, "ViewMediaActivity", paramString);
  }
  
  private boolean c(int paramInt)
  {
    return (this.w != null) && (this.w.get(Integer.valueOf(paramInt)) != null);
  }
  
  private void d()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTION_SD_CARD_UNAVALIABLE");
    localIntent.setFlags(268435456);
    ViberApplication.getInstance().startActivity(localIntent);
  }
  
  private boolean e()
  {
    if ((this.h == null) || ((TextUtils.isEmpty(this.h.v())) && (!"animated_message".equals(this.h.e())))) {}
    for (boolean bool = true;; bool = false)
    {
      b("equalsNullCurrentMessage retValue = " + bool);
      return bool;
    }
  }
  
  private void f()
  {
    this.b = ((ViewPagerWithPagingEnable)findViewById(2131166232));
    this.b.setPageMargin(com.viber.voip.messages.extras.image.h.a(15.0F));
    this.a = getSupportActionBar();
    c();
    this.c = ((TextView)findViewById(2131166233));
    this.d = findViewById(2131166234);
  }
  
  private void g()
  {
    TextView localTextView1 = (TextView)findViewById(2131166235);
    TextView localTextView2 = (TextView)findViewById(2131166237);
    SeekBar localSeekBar = (SeekBar)findViewById(2131166236);
    View localView = findViewById(2131166238);
    this.e = new ay(this, (VideoView)findViewById(2131166231), (ImageView)localView, localSeekBar, localTextView1, localTextView2);
  }
  
  public int a(long paramLong, int paramInt, ah paramah)
  {
    int i1 = paramah.getCount();
    int i2;
    if ((paramInt > i1 - 1) || (-1 == paramInt))
    {
      i2 = i1 - 1;
      if (paramLong == -1L) {}
    }
    else
    {
      for (int i3 = 0;; i3++)
      {
        if (i3 >= i1) {
          break label74;
        }
        if (paramah.e(i3).a() == paramLong)
        {
          return i3;
          i2 = paramInt;
          break;
        }
      }
    }
    label74:
    return i2;
  }
  
  public void a(int paramInt)
  {
    if (this.w != null) {
      this.w.remove(Integer.valueOf(paramInt));
    }
  }
  
  public void a(int paramInt, ba paramba)
  {
    this.w.put(Integer.valueOf(paramInt), paramba);
  }
  
  protected void a(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if ((localBundle != null) && (paramIntent.getLongExtra("thread_id", -1L) != -1L))
    {
      a(localBundle);
      this.f = localBundle.getLong("thread_id");
      a(paramIntent.getStringExtra("screen_title"));
      this.o = localBundle.getBoolean("from_notification", false);
      boolean bool1 = this.o;
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = localBundle.getBoolean("extra_play", false);
        bool2 = false;
        if (bool3) {
          bool2 = true;
        }
      }
      this.n = bool2;
      this.g = new ah(this, getSupportLoaderManager(), ViberApplication.getInstance().getMessagesManager(), this);
      this.g.v();
      this.g.a(this.f);
      this.g.e();
      b("handleIntent mConversationId: " + this.f);
      return;
    }
    b("intent without thread id. nothing to show. finish activity!");
    finish();
  }
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    a(this.g);
  }
  
  public void a(ah paramah)
  {
    if (this.l != null) {
      this.l.notifyDataSetChanged();
    }
    if (paramah.getCount() == 0)
    {
      b("no image message in thread with id = " + this.f + " finishing!");
      finish();
      return;
    }
    if (this.b == null)
    {
      b("mViewPager is null");
      return;
    }
    int i1 = paramah.getCount();
    if (this.l == null)
    {
      b("onData - CREATE ADAPTER!");
      if (this.i == -1)
      {
        this.j = getIntent().getLongExtra("msg_id", -1L);
        this.i = a(this.j, -1, paramah);
      }
      b("fromNotification=" + this.o + " currentPosition=" + this.i);
      if ((this.o) && (this.i != -1))
      {
        an localan = paramah.e(this.i);
        ViberApplication.getInstance().getMessagesManager().c().a(paramah.w(), localan.E(), localan.m());
      }
      this.l = new com.viber.voip.messages.adapters.h(this, getSupportFragmentManager(), paramah, this.b);
      this.b.setAdapter(this.l);
      this.l.notifyDataSetChanged();
      this.b.setCurrentItem(this.i);
      b(this.i);
    }
    for (;;)
    {
      a(this.v);
      this.l.b(this.i);
      a(this.i, i1);
      this.b.setOnPageChangeListener(new ar(this, i1));
      return;
      int i2 = this.i;
      this.i = a(this.j, this.i, paramah);
      this.l.a(this.g);
      this.l.notifyDataSetChanged();
      b("onData - notify adapter oldPosition = " + i2 + ", currentPosition = " + this.i);
      if (i2 != this.i) {
        this.b.setCurrentItem(this.i);
      } else if ((c(this.i)) && (this.e != null)) {
        ((ba)this.w.get(Integer.valueOf(this.i))).b(this.e.i());
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.b.setPagingEnabled(paramBoolean);
  }
  
  public boolean a()
  {
    return (this.e != null) && (this.e.i());
  }
  
  public void b()
  {
    if (this.a.isShowing())
    {
      this.k.b(0);
      return;
    }
    this.k.a(0);
  }
  
  protected void c()
  {
    this.a.setBackgroundDrawable(getResources().getDrawable(2130838751));
    this.a.setTitle("");
    this.a.setDisplayShowHomeEnabled(false);
    this.a.setDisplayHomeAsUpEnabled(true);
    this.a.setDisplayShowTitleEnabled(true);
    this.a.setDisplayUseLogoEnabled(false);
  }
  
  public void finish()
  {
    if (this.b != null)
    {
      this.b.setAdapter(null);
      this.b = null;
    }
    if (this.l != null)
    {
      this.l.b();
      this.l.a();
      this.l = null;
    }
    if ((getIntent().getBooleanExtra("navigated_to_conversation_on_back", false)) && (this.h != null)) {
      startActivity(j.a(this.f, this.h.G()));
    }
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    b("onActivityResult requestCode = " + paramInt1 + "; resultCode = " + paramInt2 + "; data = " + paramIntent);
    ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      return;
      finish();
      SendMediaDataContainer localSendMediaDataContainer = (SendMediaDataContainer)paramIntent.getParcelableExtra("data_container");
      ViberApplication.getInstance().getMessagesManager().c().a(this.f, new az(this, localSendMediaDataContainer));
      return;
    } while (paramIntent.getExtras() == null);
    Uri localUri1 = Uri.parse(paramIntent.getAction());
    Uri localUri2 = Uri.parse(paramIntent.getStringExtra("landscapeUri"));
    b("onActivityResult: action(portrait img uri): " + localUri1 + ", landscape img uri: " + localUri2);
    a(localUri1, localUri2);
  }
  
  public void onCallInfoReady(k paramk)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("onCallInfoReady: callInfo=").append(paramk).append(" videoPlayer is null - ");
    if (this.e == null) {}
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      if (this.e != null)
      {
        b("onCallInfoReady: pause playback");
        this.e.h();
      }
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT > 10) {
      getWindow().setFlags(1024, 1024);
    }
    requestWindowFeature(9L);
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      this.i = paramBundle.getInt("position", -1);
    }
    setContentView(2130903360);
    ViberApplication.getInstance().getPhoneController(false).addCallInfoListener(this);
    this.k = new bb(this, this, null);
    this.t = new aq(this);
    this.u = new com.viber.voip.messages.ui.bb(this);
    f();
    a(getIntent());
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.v = paramMenu;
    getSupportMenuInflater().inflate(2131755030, paramMenu);
    if (ViberApplication.hideDoodle()) {
      paramMenu.removeItem(2131166337);
    }
    return true;
  }
  
  protected void onDestroy()
  {
    ViberApplication.getInstance().getPhoneController(false).removeCallInfoListener(this);
    this.w.clear();
    this.w = null;
    if (this.g != null) {
      this.g.u();
    }
    if (this.w != null) {
      this.w.clear();
    }
    if (this.e != null)
    {
      this.e.k();
      this.e = null;
    }
    com.viber.voip.util.upload.s.a();
    com.viber.voip.util.upload.a.b localb = ViberApplication.getInstance().getLocalMediaServerController();
    if (localb != null) {
      localb.a();
    }
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    Uri localUri = null;
    switch (paramMenuItem.getItemId())
    {
    }
    label314:
    MessageEntityImpl localMessageEntityImpl;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          return true;
                          finish();
                          return true;
                          boolean bool = this.l.a(this.i).e().equals("image");
                          paramMenuItem.getSubMenu().findItem(2131166330).setVisible(bool);
                          return true;
                        } while (e());
                        com.viber.voip.messages.extras.fb.s locals = ViberApplication.getInstance().getFacebookManager();
                        locals.a(new as(this));
                        long l1 = this.h.a();
                        String str3;
                        bc localbc;
                        if (this.h.e().equals("animated_message"))
                        {
                          str3 = com.viber.voip.k.a.e(this.h.H());
                          locals.a(this, l1, str3, this.h.e(), this.h.v());
                          localbc = bc.a();
                          if (!this.h.e().equals("image")) {
                            break label314;
                          }
                        }
                        for (com.viber.voip.a.x localx = this.r.a.a(com.viber.voip.a.aq.a);; localx = this.s.a.a(com.viber.voip.a.aq.a))
                        {
                          localbc.a(localx);
                          return true;
                          str3 = this.h.q();
                          break;
                        }
                      } while (e());
                      String str1;
                      if ("animated_message".equals(this.h.e())) {
                        str1 = com.viber.voip.k.a.e(this.h.H());
                      }
                      for (String str2 = getString(2131494133);; str2 = null)
                      {
                        com.viber.voip.util.bd.a(str2, str1, localUri);
                        if (!this.h.e().equals("image")) {
                          break;
                        }
                        bc.a().a(this.r.c());
                        return true;
                        str1 = getString(2131494132);
                        localUri = Uri.parse(this.h.v());
                      }
                    } while (e());
                    l locall = ((ViberApplication)getApplication()).getTwitterManager();
                    locall.a(this, new au(this, locall));
                    return true;
                  } while (e());
                  if ("image".equals(this.h.e())) {
                    bc.a().a(com.viber.voip.a.a.p.a(z.b));
                  }
                  for (;;)
                  {
                    Intent localIntent2 = new Intent("com.viber.voip.action.ACTION_FORWARD");
                    localIntent2.putExtra("default_message_id", this.h.a());
                    localIntent2.putExtra("back_intent", gn.a(this.f, this.h.a(), getIntent().getStringExtra("screen_title"), getIntent().getStringExtra("prev_action")));
                    startActivity(localIntent2);
                    finish();
                    return true;
                    if ("video".equals(this.h.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.c));
                    } else if ("animated_message".equals(this.h.e())) {
                      bc.a().a(com.viber.voip.a.a.p.a(z.f));
                    }
                  }
                } while (e());
                g.a(this, Uri.parse(this.h.v()));
                bc.a().a(this.r.d());
                return true;
              } while (e());
              g.b(this, Uri.parse(this.h.v()));
              return true;
            } while (e());
            startActivityForResult(g.b(this, Uri.parse(this.h.v())), 778);
            bc.a().a(this.r.e());
            return true;
            at.a(this, 0, 2131494331, new ax(this), null, 2131493706, 2131493558);
            return true;
          } while (e());
          Intent localIntent1 = new Intent("com.viber.voip.action.SEND_DOODLE");
          localIntent1.setDataAndType(Uri.parse(this.h.v()), "image/*");
          startActivityForResult(localIntent1, 800);
          return true;
          if (!com.viber.voip.messages.extras.image.h.a()) {
            break label923;
          }
          if (this.h.P()) {
            break;
          }
        } while (!com.viber.voip.messages.extras.image.h.c());
        b("START DOWNLOADING!");
        ViberApplication.getInstance().getMessagesManager().c().a(this.h.a());
        return true;
      } while (!com.viber.voip.messages.extras.image.h.c());
      localMessageEntityImpl = com.viber.voip.messages.controller.c.as.a().m(this.h.a());
    } while (localMessageEntityImpl == null);
    a(localMessageEntityImpl);
    return true;
    label923:
    d();
    return true;
  }
  
  protected void onPause()
  {
    unregisterReceiver(this.t);
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    a(paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addDataScheme("file");
    registerReceiver(this.t, localIntentFilter);
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("position", this.i);
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStop()
  {
    if (this.l != null) {
      this.l.a();
    }
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ViewMediaActivity
 * JD-Core Version:    0.7.0.1
 */