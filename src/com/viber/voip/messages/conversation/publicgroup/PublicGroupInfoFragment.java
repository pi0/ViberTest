package com.viber.voip.messages.conversation.publicgroup;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragment;
import com.viber.jni.LocationInfo;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.u;
import com.viber.voip.contacts.ui.cb;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.ui.ci;
import com.viber.voip.messages.conversation.ui.cs;
import com.viber.voip.messages.i;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.messages.ui.view.c;
import com.viber.voip.ui.style.ColoredURLSpan;
import com.viber.voip.util.at;
import com.viber.voip.util.b.aa;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gj;
import com.viber.voip.util.gn;
import com.viber.voip.util.hu;
import com.viber.voip.util.hv;
import com.viber.voip.widget.TextViewWithDescription;
import com.viber.voip.widget.VibeGroupNameTextView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Set;

public class PublicGroupInfoFragment
  extends SherlockFragment
  implements View.OnClickListener, e, cs
{
  private static ci K = new aw();
  private static final String a = PublicGroupInfoFragment.class.getSimpleName();
  private i A;
  private w B;
  private com.viber.voip.util.b.x C;
  private com.viber.voip.util.b.x D;
  private com.viber.voip.util.b.x E;
  private boolean F;
  private int G = 3;
  private ci H = K;
  private final al I = new au(this);
  private final al J = new av(this);
  private PublicGroupInfoSmallParticipantList b;
  private HListView c;
  private bd d;
  private ap e;
  private aq f;
  private TextView g;
  private TextView h;
  private ImageView i;
  private VibeGroupNameTextView j;
  private TextViewWithDescription k;
  private TextViewWithDescription l;
  private TextViewWithDescription m;
  private TextViewWithDescription n;
  private TextViewWithDescription o;
  private TextView p;
  private TextView q;
  private CheckBox r;
  private CheckBox s;
  private View t;
  private View u;
  private View v;
  private View w;
  private Button x;
  private TextView y;
  private c z;
  
  private static String a(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = paramArrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      String str = paramArrayOfString[i2];
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
  
  private void a(Bitmap paramBitmap)
  {
    this.o.setText(" ");
    this.o.setLeftDrawable(paramBitmap);
  }
  
  private void a(View paramView)
  {
    ParticipantControlsContainer localParticipantControlsContainer = (ParticipantControlsContainer)paramView.findViewById(2131166068);
    ((PositioningAwareFrameLayout)paramView.findViewById(2131166070)).setPositioningListener(new ax(this, localParticipantControlsContainer));
  }
  
  private void a(ap paramap, boolean paramBoolean)
  {
    b("updateLoader participants:" + paramap.getCount());
    if (paramap.getCount() <= this.b.getMaxCount())
    {
      b("Activating small list");
      this.b.setVisibility(0);
      this.c.setVisibility(8);
      this.b.a();
      this.b.a(paramap, this.G);
    }
    for (;;)
    {
      TextView localTextView = this.h;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramap.getCount());
      localTextView.setText(getString(2131494516, arrayOfObject));
      this.H.a(paramBoolean, this.f.a(), "");
      return;
      b("Activating large list");
      this.b.setVisibility(8);
      this.c.setVisibility(0);
      this.b.a();
      if (this.d == null)
      {
        this.d = new bd(getActivity(), this.G, paramap);
        this.c.setAdapter(this.d);
      }
      this.d.b(this.G);
      this.d.notifyDataSetChanged();
    }
  }
  
  private void a(aq paramaq, boolean paramBoolean)
  {
    String[] arrayOfString = this.f.x();
    if (arrayOfString.length > 0)
    {
      this.l.setVisibility(0);
      this.l.setText(a(arrayOfString));
    }
    for (;;)
    {
      label67:
      Uri localUri1;
      String str1;
      if (!gj.c(this.f.y()))
      {
        this.k.setVisibility(0);
        this.k.setText(this.f.y());
        TextView localTextView = this.g;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.f.w());
        localTextView.setText(getString(2131494514, arrayOfObject1));
        if (!gj.c(this.f.B())) {
          break label444;
        }
        this.m.setText(getString(2131493920));
        LocationInfo localLocationInfo = new LocationInfo(this.f.A(), this.f.z());
        ViberApplication.getInstance().getMessagesManager().d().a(localLocationInfo.lat(), localLocationInfo.lng(), this.f.d(), this.f.a());
        this.j.a(this.f.c(), paramaq.E());
        boolean bool = gj.c(this.f.g());
        localUri1 = null;
        if (!bool) {
          localUri1 = Uri.parse(this.f.g());
        }
        str1 = this.f.C();
        if (str1 == null) {}
      }
      try
      {
        SpannableString localSpannableString = new SpannableString(getString(2131494575));
        String str2 = com.viber.voip.bc.b().Q;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = URLEncoder.encode(str1, "UTF-8");
        localSpannableString.setSpan(new ColoredURLSpan(String.format(str2, arrayOfObject2), getResources().getColor(2131296449)), 0, localSpannableString.length(), 33);
        this.y.setText(localSpannableString);
        label349:
        this.B.a(localUri1, this.C, this.I);
        Uri localUri2 = hv.b(this.f.v());
        this.B.a(localUri2, this.E, this.J);
        this.n.setText(str1);
        f();
        if (paramBoolean) {
          this.e.e();
        }
        return;
        this.l.setVisibility(8);
        continue;
        this.k.setVisibility(8);
        break label67;
        label444:
        this.m.setText(this.f.B());
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        break label349;
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    b("saveGroupNotification isSmartNotificationOn - " + paramBoolean);
    if ((this.f != null) && (this.f.s() != paramBoolean)) {
      this.A.d().a(this.f.a(), paramBoolean);
    }
  }
  
  private static final void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void d()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(this.f.a()));
    this.A.c().a(localHashSet, new bb(this));
  }
  
  private void e()
  {
    bc localbc = new bc(getActivity(), getActivity().getResources().getInteger(2131427351));
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    localbc.measure(i1, i1);
    int i2 = localbc.getMeasuredHeight();
    this.c.getLayoutParams().height = i2;
  }
  
  private void f()
  {
    boolean bool1 = true;
    boolean bool2 = this.f.s();
    boolean bool3 = this.f.o();
    TextView localTextView1 = this.q;
    int i1;
    boolean bool4;
    label61:
    boolean bool5;
    label81:
    boolean bool6;
    label101:
    View localView;
    if (bool2)
    {
      i1 = 2131494037;
      localTextView1.setText(i1);
      this.r.setChecked(bool2);
      TextView localTextView2 = this.p;
      if (bool3) {
        break label141;
      }
      bool4 = bool1;
      localTextView2.setEnabled(bool4);
      TextView localTextView3 = this.q;
      if (bool3) {
        break label147;
      }
      bool5 = bool1;
      localTextView3.setEnabled(bool5);
      CheckBox localCheckBox = this.r;
      if (bool3) {
        break label153;
      }
      bool6 = bool1;
      localCheckBox.setEnabled(bool6);
      localView = this.t;
      if (bool3) {
        break label159;
      }
    }
    for (;;)
    {
      localView.setEnabled(bool1);
      this.s.setChecked(bool3);
      return;
      i1 = 2131494036;
      break;
      label141:
      bool4 = false;
      break label61;
      label147:
      bool5 = false;
      break label81;
      label153:
      bool6 = false;
      break label101;
      label159:
      bool1 = false;
    }
  }
  
  private void g()
  {
    this.w.setVisibility(0);
    this.t.setVisibility(0);
    this.u.setVisibility(0);
    this.v.setVisibility(0);
    this.n.setVisibility(0);
    this.u.setVisibility(0);
    this.o.setVisibility(0);
    this.x.setVisibility(0);
  }
  
  public void a()
  {
    if ((this.e.getCount() > 0) && (this.f != null))
    {
      if (this.e.getCount() < cb.a())
      {
        Intent localIntent = new Intent("com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2");
        localIntent.putExtra("thread_id", this.f.a());
        localIntent.putExtra("extra_group_id", this.f.d());
        localIntent.putExtra("extra_group_name", this.f.c());
        localIntent.putExtra("participants_count", this.e.getCount());
        localIntent.putExtra("is_public_group_compose", true);
        startActivityForResult(localIntent, 2003);
      }
    }
    else {
      return;
    }
    com.viber.voip.a.bc localbc = com.viber.voip.a.bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("500"));
    Toast.makeText(getActivity(), 2131494081, 1).show();
  }
  
  public void a(com.viber.provider.b paramb)
  {
    a((ap)paramb, false);
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    a((ap)paramb, paramBoolean);
  }
  
  public void a(h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.f = ((aq)paramh);
    g();
    this.G = this.f.u();
    boolean bool2;
    if (this.G == 4)
    {
      this.w.setVisibility(8);
      this.t.setVisibility(8);
      this.v.setVisibility(8);
      this.n.setVisibility(8);
      this.o.setVisibility(8);
      boolean bool1 = this.e.a(this.f.a());
      bool2 = false;
      if (!bool1) {
        bool2 = true;
      }
      if (!bool2) {
        break label271;
      }
      this.e.b(this.f.a());
    }
    for (;;)
    {
      a(this.f, bool2);
      return;
      if (this.G == 1) {
        break;
      }
      int i1;
      if (this.f.b() == 3)
      {
        i1 = 1;
        label155:
        if (i1 == 0) {
          break label232;
        }
        this.w.setVisibility(8);
        this.t.setVisibility(8);
        this.u.setVisibility(8);
        this.n.setVisibility(8);
        this.o.setVisibility(8);
        this.x.setVisibility(8);
      }
      for (;;)
      {
        this.v.setVisibility(8);
        break;
        i1 = 0;
        break label155;
        label232:
        this.w.setVisibility(8);
        this.t.setVisibility(8);
        this.n.setVisibility(8);
        this.o.setVisibility(8);
      }
      label271:
      this.H.a(true, this.f.a(), "");
    }
  }
  
  public void b()
  {
    if (this.f != null)
    {
      Intent localIntent = new Intent("com.viber.voip.action.INVITE_TO_PUBLIC_GROUP");
      localIntent.putExtra("extra_group_id", this.f.d());
      localIntent.putExtra("extra_group_name", this.f.c());
      startActivity(localIntent);
    }
  }
  
  public void c()
  {
    if ((this.e.getCount() > 1) || (this.G == 3))
    {
      at.a(getActivity(), 2131494549, getString(2131494550), new az(this), null, 2131494549, false);
      return;
    }
    at.a(getActivity(), 2131494549, 2131494552, new ba(this), null, false);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.e = new ap(getActivity(), true, getLoaderManager(), this.A, this);
    this.e.n();
    this.z = new c(getActivity());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof ci)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.H = ((ci)paramActivity);
  }
  
  public void onClick(View paramView)
  {
    boolean bool = true;
    int i1 = paramView.getId();
    if (i1 == 2131166011)
    {
      b("add participants");
      a();
    }
    do
    {
      do
      {
        do
        {
          return;
          if (i1 == 2131166067)
          {
            b("invite");
            b();
            return;
          }
          if (i1 == 2131166074)
          {
            gn.a(getActivity(), this.f.a(), this.f.A(), this.f.z(), System.currentTimeMillis(), this.f.c(), this.f.B(), null, bool);
            return;
          }
          if (i1 == 2131166087)
          {
            b("btn_exit_vibe");
            c();
            return;
          }
          if (i1 != 2131166077) {
            break;
          }
          b("notification_view");
        } while ((this.f == null) || (this.f.o()));
        if (!this.f.s()) {}
        for (;;)
        {
          a(bool);
          return;
          bool = false;
        }
      } while (i1 != 2131166082);
      b("mute_group_view");
    } while (this.f == null);
    if (!this.f.o()) {}
    for (;;)
    {
      this.z.b(bool);
      this.A.c().a(this.f.a(), bool, null);
      return;
      bool = false;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.A = ViberApplication.getInstance().getMessagesManager();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903307, paramViewGroup, false);
    this.b = ((PublicGroupInfoSmallParticipantList)localView.findViewById(2131166071));
    this.c = ((HListView)localView.findViewById(2131166072));
    e();
    this.g = ((TextView)localView.findViewById(2131166066));
    this.h = ((TextView)localView.findViewById(2131166069));
    this.i = ((ImageView)localView.findViewById(2131165398));
    this.j = ((VibeGroupNameTextView)localView.findViewById(2131166065));
    this.k = ((TextViewWithDescription)localView.findViewById(2131165278));
    this.k.setDescription(getString(2131494521));
    this.l = ((TextViewWithDescription)localView.findViewById(2131166073));
    this.l.setDescription(getString(2131494522));
    this.m = ((TextViewWithDescription)localView.findViewById(2131166074));
    this.m.setDescription(getString(2131494523));
    this.n = ((TextViewWithDescription)localView.findViewById(2131166075));
    this.n.setDescription(getString(2131494524));
    this.o = ((TextViewWithDescription)localView.findViewById(2131166076));
    this.o.setDescription(getString(2131494531));
    this.p = ((TextView)localView.findViewById(2131166080));
    this.q = ((TextView)localView.findViewById(2131166081));
    this.r = ((CheckBox)localView.findViewById(2131166079));
    this.s = ((CheckBox)localView.findViewById(2131166084));
    this.t = localView.findViewById(2131166077);
    this.v = localView.findViewById(2131166011);
    this.u = localView.findViewById(2131166087);
    this.w = localView.findViewById(2131166082);
    this.x = ((Button)localView.findViewById(2131166067));
    this.y = ((TextView)localView.findViewById(2131166088));
    this.y.setMovementMethod(hu.a());
    this.v.setOnClickListener(this);
    this.u.setOnClickListener(this);
    this.t.setOnClickListener(this);
    this.w.setOnClickListener(this);
    this.m.setOnClickListener(this);
    this.x.setOnClickListener(this);
    FragmentActivity localFragmentActivity = getActivity();
    this.B = w.a(localFragmentActivity);
    this.C = new z().a(aa.b).a(new com.viber.voip.util.b.b.b(localFragmentActivity)).b();
    this.D = new z().b(2130838325, localFragmentActivity).a(2130838325, localFragmentActivity).b();
    this.E = com.viber.voip.util.b.x.b(localFragmentActivity);
    this.F = false;
    a(localView);
    return localView;
  }
  
  public void onDestroyView()
  {
    this.e.m();
    super.onDestroyView();
    this.F = true;
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.H = K;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoFragment
 * JD-Core Version:    0.7.0.1
 */