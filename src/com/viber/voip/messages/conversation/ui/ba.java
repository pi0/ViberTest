package com.viber.voip.messages.conversation.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.SparseArrayCompat;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.ConversationListView;
import com.viber.voip.ViberApplication;
import com.viber.voip.block.i;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.preview.PhotoPreviewActivity;
import com.viber.voip.h.d;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.ui.ExpandablePanelLayout;
import com.viber.voip.messages.ui.MessageComposerView;
import com.viber.voip.messages.ui.ad;
import com.viber.voip.messages.ui.aj;
import com.viber.voip.messages.ui.bm;
import com.viber.voip.messages.ui.bn;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.stickers.r;
import com.viber.voip.ui.y;
import com.viber.voip.util.b.x;
import com.viber.voip.util.gk;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.l;
import com.viber.voip.util.p;
import com.viber.voip.util.upload.n;
import com.viber.voip.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ba
{
  private static final String o = ConversationFragment.class.getSimpleName();
  private com.viber.voip.messages.ui.w A;
  private com.viber.voip.messages.conversation.h B;
  private SparseArrayCompat<bn> C = new SparseArrayCompat();
  private com.viber.voip.a.m D = com.viber.voip.a.a.n;
  private ad E;
  private Handler F;
  private final Runnable G = new bb(this);
  private bt H = new bt(this, null);
  private aj I;
  public final View a;
  public final ImageView b;
  public final ViewGroup c;
  public final TextView d;
  public final View e;
  public final ProgressBar f;
  public final b g;
  public final MessageComposerView h;
  public final z i;
  public final ConversationListView j;
  public final ConversationFragment k;
  public final m l;
  public final bu m;
  public ExpandablePanelLayout n;
  private long p;
  private boolean q;
  private boolean r;
  private int s;
  private int t;
  private ArrayList<Uri> u;
  private String v;
  private String w;
  private Uri x;
  private ConversationData y;
  private a z;
  
  public ba(ConversationFragment paramConversationFragment, bu parambu, m paramm, View paramView, Bundle paramBundle, ad paramad)
  {
    this.k = paramConversationFragment;
    this.l = paramm;
    this.m = parambu;
    this.F = dc.a(dk.a);
    Uri localUri;
    if (paramBundle != null)
    {
      localUri = (Uri)paramBundle.getParcelable("share_uri");
      this.x = localUri;
      if (paramBundle == null) {
        break label662;
      }
    }
    label662:
    for (ConversationData localConversationData = (ConversationData)paramBundle.getParcelable("extra_conversation_data");; localConversationData = null)
    {
      this.y = localConversationData;
      this.a = paramView.findViewById(2131165934);
      this.e = paramView.findViewById(2131165931);
      this.c = ((ViewGroup)paramView.findViewById(2131165929));
      this.d = ((TextView)paramView.findViewById(2131165930));
      this.b = ((ImageView)paramView.findViewById(2131165926));
      this.f = ((ProgressBar)paramView.findViewById(2131165635));
      this.h = ((MessageComposerView)paramView.findViewById(2131165933));
      this.j = ((ConversationListView)paramView.findViewById(2131165927));
      ConversationListView localConversationListView = this.j;
      localConversationListView.getClass();
      this.i = new z(localConversationListView);
      this.j.setDivider(null);
      this.j.setDividerHeight(0);
      this.j.setSelector(2130838357);
      this.j.setEnablSmoothOverscroll(true);
      this.j.a(new y(this.j.getContext(), 2130903315, 2131166093, 2131166095, 2131494162, 2131494163), this.i);
      this.e.setOnClickListener(new bd(this));
      this.h.setExternalControls((TextView)paramView.findViewById(2131165932));
      if ((ViberApplication.isTablet()) && (paramBundle != null)) {
        this.h.setDraft(paramBundle.getString("extra_draft"));
      }
      this.g = new b(paramView, new be(this));
      this.j.setOnRefreshListener(new bf(this));
      this.n = ((ExpandablePanelLayout)paramView.findViewById(2131165942));
      this.A = new com.viber.voip.messages.ui.w(paramConversationFragment.D());
      this.C.put(2131165913, this.A);
      this.I = new aj(paramConversationFragment.D(), this.n, this.h, this.h, r.a().v());
      this.I.a((EditText)paramView.findViewById(2131165915));
      this.C.put(2131165914, this.I);
      this.n.setAdapter(new bm(new com.viber.voip.messages.ui.bh(this.n), this.C));
      this.n.setStateListener(new bh(this));
      this.z = new a(this.n);
      this.h.setOnButtonsListener(this.z);
      this.n.findViewById(2131165697).setOnTouchListener(new bi(this));
      this.E = new bj(this, paramad);
      this.A.a(this.E);
      this.h.setHost(new br(this));
      a(true);
      return;
      localUri = null;
      break;
    }
  }
  
  private void a(int paramInt)
  {
    a(paramInt, (Object[])null);
  }
  
  private void a(int paramInt, Object... paramVarArgs)
  {
    FragmentActivity localFragmentActivity = this.k.getActivity();
    if (localFragmentActivity != null) {
      if (paramVarArgs != null) {
        break label57;
      }
    }
    label57:
    for (String str = localFragmentActivity.getString(paramInt);; str = localFragmentActivity.getString(paramInt, paramVarArgs))
    {
      new AlertDialog.Builder(localFragmentActivity).setMessage(str).setPositiveButton(2131493614, this.H).setCancelable(true).create().show();
      return;
    }
  }
  
  private static void a(Uri paramUri, ConversationFragment paramConversationFragment, boolean paramBoolean)
  {
    ConversationData localConversationData = paramConversationFragment.g();
    Intent localIntent1 = PhotoPreviewActivity.a(localConversationData, new Uri[] { paramUri });
    Intent localIntent2 = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent2.addFlags(67108864);
    localIntent2.putExtra("extra_conversation_data", localConversationData);
    localIntent2.putExtra("open_camera", paramBoolean);
    localIntent1.putExtra("open_on_canceled_action", localIntent2);
    paramConversationFragment.startActivity(localIntent1);
  }
  
  private void a(Runnable paramRunnable)
  {
    if ((this.B != null) && (!this.B.l())) {
      i.a(this.k.D(), this.B.p(), this.B.q(), true, this.k.h(), paramRunnable);
    }
    while (paramRunnable == null) {
      return;
    }
    paramRunnable.run();
  }
  
  private void a(String paramString)
  {
    FragmentActivity localFragmentActivity = this.k.getActivity();
    if (localFragmentActivity != null)
    {
      if (!"video".equals(paramString)) {
        break label132;
      }
      if (com.viber.voip.messages.extras.image.h.a(this.x)) {
        a(2131494312);
      }
    }
    else
    {
      return;
    }
    String str = com.viber.voip.messages.extras.image.h.a(localFragmentActivity, this.x);
    long l1 = com.viber.voip.util.bj.b(str);
    if (!com.viber.voip.util.bj.d(str))
    {
      a(2131494312);
      return;
    }
    if (l1 > 25165824L)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(24L);
      a(2131494313, arrayOfObject);
      return;
    }
    if (com.viber.voip.messages.extras.image.m.a(localFragmentActivity, this.x, paramString) > 181000L)
    {
      l();
      return;
    }
    b(paramString);
    return;
    label132:
    b(paramString);
  }
  
  private void b(String paramString)
  {
    int i1;
    if (this.B != null)
    {
      i1 = this.B.b();
      if ((i1 != 2) && (i1 != 3)) {
        break label69;
      }
    }
    label69:
    for (boolean bool = true;; bool = false)
    {
      gn.a(this.k, bool, this.x, paramString, "", 9);
      return;
      if (this.y != null)
      {
        i1 = this.y.r;
        break;
      }
      i1 = -1;
      break;
    }
  }
  
  private void c(String paramString) {}
  
  private boolean c(Intent paramIntent)
  {
    this.p = -1L;
    this.q = false;
    this.s = 0;
    this.t = 0;
    boolean bool1 = paramIntent.getExtras().getBoolean("forward", false);
    boolean bool2 = false;
    if (bool1)
    {
      this.p = paramIntent.getExtras().getLong("default_message_id", -1L);
      this.q = paramIntent.getExtras().getBoolean("is_forward_only_locations", false);
      this.s = paramIntent.getExtras().getInt("forward_locations_lat", 0);
      this.t = paramIntent.getExtras().getInt("forward_locations_lng", 0);
      this.k.getActivity().getIntent().removeExtra("forward");
      this.k.getActivity().getIntent().removeExtra("default_message_id");
      bool2 = true;
    }
    if (!this.r)
    {
      this.u = paramIntent.getParcelableArrayListExtra("share_images_uri");
      this.v = paramIntent.getStringExtra("share_uri");
      this.w = paramIntent.getStringExtra("share_text");
      this.r = true;
    }
    if ((this.u != null) || (this.v != null) || (this.w != null)) {
      bool2 = true;
    }
    return bool2;
  }
  
  private void l()
  {
    FragmentActivity localFragmentActivity = this.k.getActivity();
    if (localFragmentActivity != null)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(180L);
      String str = localFragmentActivity.getString(2131494311, arrayOfObject);
      new AlertDialog.Builder(localFragmentActivity).setTitle(2131494310).setMessage(str).setPositiveButton(2131493614, this.H).setCancelable(true).create().show();
    }
  }
  
  public void a()
  {
    if (this.l.g()) {
      com.viber.voip.h.b.d().a(this.n.b(2131165697), new d(this.l.b()), true);
    }
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    c("onActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2 + ", intent:" + paramIntent);
    FragmentActivity localFragmentActivity = this.k.getActivity();
    if (localFragmentActivity == null) {}
    do
    {
      SendMediaDataContainer localSendMediaDataContainer;
      do
      {
        do
        {
          do
          {
            return;
            this.h.c();
            if (paramInt2 != -1) {
              break;
            }
            switch (paramInt1)
            {
            default: 
              return;
            case 1: 
              c("onActivityResult image from camera uri " + this.x + " was handled");
              if (this.k.g() == null) {
                this.k.a(this.y);
              }
              a(n.a(this.x, this.x), this.k, true);
              this.x = null;
              return;
            }
          } while (paramIntent == null);
          int i1 = 10 * paramIntent.getIntExtra("extra_location_lat", 0);
          int i2 = 10 * paramIntent.getIntExtra("extra_location_lon", 0);
          String str = paramIntent.getStringExtra("extra_location_text");
          this.h.a(i1, i2, str);
          return;
          if (com.viber.voip.util.bj.a(ViberApplication.getInstance(), this.x) <= 0L) {
            break;
          }
          n.a(this.x);
        } while (paramIntent == null);
        this.x = paramIntent.getData();
        c("onActivityResult video uri " + this.x + " was handled");
        if ("video".equals(com.viber.voip.util.bj.b(this.x))) {
          a("video");
        }
        for (;;)
        {
          this.x = null;
          return;
          com.viber.voip.messages.extras.image.h.c(ViberApplication.getInstance(), this.x);
          break;
          com.viber.voip.util.bj.a(localFragmentActivity, null);
        }
        if ((paramIntent == null) || (!paramIntent.hasExtra("data_container"))) {
          break;
        }
        localSendMediaDataContainer = (SendMediaDataContainer)paramIntent.getParcelableExtra("data_container");
        ViberApplication.log(3, "Media", "sendMediaMessage got mediaDataContainer : " + localSendMediaDataContainer);
      } while (localSendMediaDataContainer == null);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localSendMediaDataContainer);
      this.h.a(localArrayList);
      return;
      com.viber.voip.util.bj.a(localFragmentActivity, null);
      return;
      com.viber.voip.k.a.a().a(paramInt1, paramInt2, paramIntent, new bc(this));
      return;
    } while (paramInt2 != 0);
    c("onActivityResult comes with code canceled mUserMediaUri: " + this.x);
    if ((this.x != null) && (this.x.getPath().startsWith(com.viber.voip.w.d)))
    {
      c("onActivityResult KILL temp file");
      com.viber.voip.messages.extras.image.h.c(localFragmentActivity, this.x);
    }
    switch (paramInt1)
    {
    default: 
      this.x = null;
      return;
    }
    this.x = this.E.d();
  }
  
  public void a(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("open_camera", false))
    {
      if ((this.x != null) && (this.x.getPath().startsWith(com.viber.voip.w.d)))
      {
        c("checkRetakePhoto KILL temp file");
        com.viber.voip.messages.extras.image.h.c(this.k.getActivity(), this.x);
      }
      this.E.b();
      this.k.getActivity().getIntent().removeExtra("open_camera");
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelable("share_uri", this.x);
    paramBundle.putString("extra_draft", this.h.getMessageDraft());
    paramBundle.putParcelable("extra_conversation_data", this.k.g());
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh)
  {
    boolean bool1 = true;
    this.B = paramh;
    if (paramh != null)
    {
      MessageComposerView localMessageComposerView = this.h;
      boolean bool2;
      if (!paramh.n())
      {
        bool2 = bool1;
        localMessageComposerView.setVisible(bool2);
        b localb = this.g;
        if ((!paramh.l()) || (!paramh.o())) {
          break label143;
        }
        label52:
        localb.a(bool1);
        if (!paramh.l()) {
          break label148;
        }
        this.D = com.viber.voip.a.a.o;
        this.D.b(this.k.F());
        this.z.a(com.viber.voip.a.a.o);
      }
      for (;;)
      {
        this.k.b(gk.b(paramh));
        this.h.a(paramh);
        if (this.A != null) {
          this.A.a(this.B.t());
        }
        return;
        bool2 = false;
        break;
        label143:
        bool1 = false;
        break label52;
        label148:
        this.D = com.viber.voip.a.a.n;
        this.D.b(this.k.F());
        this.z.a(com.viber.voip.a.a.n);
      }
    }
    this.h.b();
  }
  
  public void a(ConversationData paramConversationData)
  {
    if (paramConversationData != null)
    {
      this.k.b(gk.a(paramConversationData));
      this.k.a(null);
      if (!(paramConversationData instanceof PublicGroupConversationData)) {
        break label126;
      }
      this.h.setVisible(false);
      int i1 = ((PublicGroupConversationData)paramConversationData).a;
      Uri localUri = ((PublicGroupConversationData)paramConversationData).b;
      ViberApplication localViberApplication = ViberApplication.getInstance();
      ConversationFragment localConversationFragment = this.k;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i1);
      localConversationFragment.a(localViberApplication.getString(2131494514, arrayOfObject));
      if (localUri != null) {
        com.viber.voip.util.b.w.a(localViberApplication).a(localUri, x.b(localViberApplication), new bs(this));
      }
    }
    return;
    label126:
    MessageComposerView localMessageComposerView = this.h;
    if ((!paramConversationData.p) && (!paramConversationData.q)) {}
    for (boolean bool = true;; bool = false)
    {
      localMessageComposerView.setVisible(bool);
      return;
    }
  }
  
  public void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.j.a(true);
      if (!d())
      {
        this.c.setVisibility(0);
        this.d.setText(Html.fromHtml(ViberApplication.getInstance().getBiDiAwareFormatter().a(paramCharSequence.toString())));
      }
      return;
    }
    this.c.setVisibility(8);
  }
  
  public void a(boolean paramBoolean)
  {
    this.F.removeCallbacks(this.G);
    if (paramBoolean)
    {
      this.F.postDelayed(this.G, 1500L);
      return;
    }
    this.f.setVisibility(8);
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    int i1;
    label31:
    Uri localUri;
    if (!gl.e(ViberApplication.getInstance()))
    {
      i1 = 1;
      FragmentActivity localFragmentActivity = this.k.getActivity();
      if (localFragmentActivity == null) {
        break label165;
      }
      g.a(localFragmentActivity);
      if ((i1 == 0) || (TextUtils.isEmpty(paramString1))) {
        break label181;
      }
      localUri = Uri.parse(paramString1);
    }
    for (;;)
    {
      label48:
      if (((localUri != null) && (!localUri.equals(this.b.getTag()))) || (localUri == null))
      {
        Bitmap localBitmap = com.viber.voip.backgrounds.a.a().a(localUri);
        if ((paramString1 != null) && (paramString1.equals(paramString2)))
        {
          p localp = new p(localBitmap);
          localp.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
          this.b.setScaleType(ImageView.ScaleType.FIT_XY);
          this.b.setImageDrawable(localp);
        }
        for (;;)
        {
          if (localBitmap == null) {
            break label223;
          }
          this.b.setVisibility(0);
          this.b.setTag(localUri);
          return true;
          i1 = 0;
          break;
          ViberApplication.getInstance().getResources().getDimensionPixelSize(2131361793);
          break label31;
          label181:
          if ((i1 != 0) || (TextUtils.isEmpty(paramString2))) {
            break label235;
          }
          localUri = Uri.parse(paramString2);
          break label48;
          this.b.setImageBitmap(localBitmap);
          this.b.setScaleType(ImageView.ScaleType.MATRIX);
        }
        label223:
        this.b.setTag(null);
        return true;
      }
      label165:
      return false;
      label235:
      localUri = null;
    }
  }
  
  public void b()
  {
    if (this.l.g()) {
      com.viber.voip.h.b.d().a(false, new d(this.l.b()), true);
    }
    com.viber.voip.util.b.w.a(ViberApplication.getInstance()).a(false);
  }
  
  public void b(Intent paramIntent)
  {
    if (c(paramIntent)) {
      return;
    }
    if (paramIntent.getExtras().containsKey("multiply_send"))
    {
      ArrayList localArrayList = paramIntent.getParcelableArrayListExtra("multiply_send");
      this.k.getActivity().getIntent().removeExtra("multiply_send");
      this.h.a(localArrayList);
      return;
    }
    a(paramIntent);
  }
  
  public void b(boolean paramBoolean)
  {
    this.g.b(paramBoolean);
  }
  
  public void c()
  {
    this.h.e();
    this.j.p();
    if (this.I != null) {
      this.I.e();
    }
  }
  
  public boolean d()
  {
    return this.e.getVisibility() == 0;
  }
  
  public void e()
  {
    try
    {
      p localp = new p(BitmapFactory.decodeStream(ViberApplication.getInstance().getAssets().open("bg/t10000138.jpg")));
      localp.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
      this.b.setScaleType(ImageView.ScaleType.FIT_XY);
      this.b.setImageDrawable(localp);
      this.b.setTag("bg/t10000138.jpg");
      return;
    }
    catch (IOException localIOException)
    {
      c("Error loading system background from asset: bg/t10000138.jpg");
    }
  }
  
  public List<View> f()
  {
    ArrayList localArrayList = new ArrayList(2);
    localArrayList.add(this.h);
    localArrayList.add(this.n);
    return localArrayList;
  }
  
  public void g()
  {
    if (this.e.getVisibility() == 0) {
      this.e.setVisibility(8);
    }
  }
  
  public void h()
  {
    if (this.e.getVisibility() == 8) {
      this.e.setVisibility(0);
    }
  }
  
  public void i()
  {
    if (this.k.getActivity() == null) {
      return;
    }
    if (this.p > 0L)
    {
      this.h.b(this.p);
      this.p = -1L;
    }
    if ((this.q) && (this.s != 0) && (this.t != 0))
    {
      this.h.a(this.s, this.t);
      this.q = false;
      this.s = 0;
      this.t = 0;
      this.k.getActivity().getIntent().removeExtra("is_forward_only_locations");
      this.k.getActivity().getIntent().removeExtra("forward_locations_lat");
      this.k.getActivity().getIntent().removeExtra("forward_locations_lng");
    }
    if (this.u != null)
    {
      this.k.startActivity(PhotoPreviewActivity.a(this.k.g(), this.u));
      this.k.getActivity().getIntent().removeExtra("share_images_uri");
      this.u = null;
    }
    for (;;)
    {
      this.r = false;
      return;
      if (this.v != null)
      {
        this.x = Uri.parse(this.v);
        a(com.viber.voip.util.bj.b(this.x));
        this.v = null;
        this.k.getActivity().getIntent().removeExtra("share_uri");
      }
      else if (this.w != null)
      {
        this.h.a(this.w);
        this.w = null;
        this.k.getActivity().getIntent().removeExtra("share_text");
      }
    }
  }
  
  public ad j()
  {
    return this.E;
  }
  
  public aj k()
  {
    return this.I;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ba
 * JD-Core Version:    0.7.0.1
 */