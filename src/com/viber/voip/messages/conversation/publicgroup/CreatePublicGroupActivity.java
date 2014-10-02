package com.viber.voip.messages.conversation.publicgroup;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.view.menu.ActionMenuItemView;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.contacts.ui.co;
import com.viber.voip.contacts.ui.ct;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.GroupController.CreatePublicGroupData;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.messages.controller.dj;
import com.viber.voip.messages.conversation.af;
import com.viber.voip.messages.conversation.ax;
import com.viber.voip.registration.cp;
import com.viber.voip.util.at;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import com.viber.voip.util.gj;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.upload.ac;
import com.viber.voip.util.upload.ak;
import com.viber.voip.widget.AvatarView;
import com.viber.voip.widget.HListWithDescription;
import com.viber.voip.widget.TextViewWithDescription;
import com.viber.voip.widget.ag;
import com.viber.voip.widget.ah;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CreatePublicGroupActivity
  extends ViberFragmentActivity
  implements View.OnClickListener, View.OnFocusChangeListener, co, dj
{
  private ct A;
  private ArrayList<GroupController.GroupMember> B = new ArrayList();
  private int C = -1;
  private int D = -1;
  private Uri E;
  private String F;
  private String G;
  private boolean H;
  private String I;
  private ActionMenuItemView J;
  private int K;
  private Handler L;
  private boolean M;
  private TextView.OnEditorActionListener N = new e(this);
  private TextView.OnEditorActionListener O = new f(this);
  private Runnable P = new k(this);
  protected TextViewWithDescription a;
  protected TextViewWithDescription b;
  protected TextViewWithDescription c;
  protected TextViewWithDescription d;
  protected ax e;
  protected TextViewWithDescription f;
  protected TextViewWithDescription g;
  protected AvatarView h;
  protected Button i;
  protected HListWithDescription j;
  protected PublicGroupInfoParticipantView k;
  protected TextView l;
  protected ProgressDialog m;
  protected Uri n;
  protected Uri o;
  protected long p;
  protected LocationInfo q;
  protected com.viber.voip.util.b.w r;
  protected x s;
  protected x t;
  protected boolean u;
  protected al v = new b(this);
  InputFilter w = new i(this);
  ag x = new n(this);
  private GroupController y;
  private af z;
  
  private void a(int paramInt, boolean paramBoolean)
  {
    Log.d("PublicGroupsFragment", "Uri checked, status = " + paramInt);
    this.K = paramInt;
    this.a.post(new c(this, paramInt, paramBoolean));
    this.M = true;
  }
  
  private void a(long paramLong1, String paramString1, String paramString2, LocationInfo paramLocationInfo, String paramString3, String paramString4, String[] paramArrayOfString, long paramLong2)
  {
    b("createPublicGroup");
    GroupController.CreatePublicGroupData localCreatePublicGroupData = new GroupController.CreatePublicGroupData(0L, paramString1, 0, paramString2, "" + paramLong1, "" + paramLong2, paramLocationInfo, paramString3, 1, paramString4, paramArrayOfString, this.z.b(), this.F, paramLong1, paramLong2);
    this.y.a(this.C, localCreatePublicGroupData);
  }
  
  private void a(Uri paramUri)
  {
    com.viber.voip.messages.extras.image.b.a().a(2, this, new Uri[] { paramUri }, "image", com.viber.voip.messages.extras.image.l.d, 1000, -1);
    com.viber.voip.messages.extras.image.b.a().a(new j(this));
  }
  
  private void a(String paramString)
  {
    this.c.setText(paramString);
    if (!gj.c(paramString))
    {
      this.c.setRightDrawable(null);
      return;
    }
    this.c.a(getResources().getDrawable(2130838339), getResources().getDrawable(2130838340));
    this.c.setRightDrawableClickListener(new s(this));
    this.c.setText("");
  }
  
  private void a(ArrayList<String> paramArrayList)
  {
    Intent localIntent = new Intent("com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS");
    localIntent.putStringArrayListExtra("already_added_participants", paramArrayList);
    startActivityForResult(localIntent, 104);
  }
  
  private void b(int paramInt)
  {
    this.E = com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.b, null);
    if (com.viber.voip.messages.extras.image.h.c())
    {
      ArrayList localArrayList = new ArrayList();
      Intent localIntent1 = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent1.putExtra("output", this.E);
      localArrayList.add(localIntent1);
      Intent localIntent2 = Intent.createChooser(new Intent().setType("image/*").setAction("android.intent.action.PICK"), getString(2131493914));
      localIntent2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])localArrayList.toArray(new Parcelable[0]));
      startActivityForResult(localIntent2, paramInt);
    }
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, "PublicGroupsFragment", paramString);
  }
  
  private void b(boolean paramBoolean)
  {
    if (this.i != null) {
      this.i.setEnabled(paramBoolean);
    }
    gl.a(paramBoolean, this.J);
  }
  
  private void c(int paramInt)
  {
    this.p = com.viber.voip.backgrounds.a.b(paramInt);
    com.viber.voip.backgrounds.q localq = new com.viber.voip.backgrounds.q(paramInt);
    this.r.a(localq.h, this.s, this.v);
  }
  
  private boolean f()
  {
    if (gj.c(this.b.getText().toString().trim())) {
      b("group name can't be empty");
    }
    for (;;)
    {
      return false;
      if (gj.c(this.a.getText().toString()))
      {
        b("group uri can't be empty");
      }
      else if (this.n == null)
      {
        b("select group icon");
      }
      else if (this.K != 0)
      {
        b("uri validating error");
      }
      else
      {
        if (!gj.c(this.F)) {
          break;
        }
        b("location can't be empty");
      }
    }
    return true;
  }
  
  private void g()
  {
    if (gj.c(this.b.getText().toString().trim()))
    {
      this.b.setDescriptionColor(getResources().getColor(2131296470));
      if (!gj.c(this.a.getText().toString())) {
        break label134;
      }
      this.a.setDescriptionColor(getResources().getColor(2131296470));
    }
    for (;;)
    {
      if (this.n == null) {
        this.h.setImageResource(2130837957);
      }
      if (!gj.c(this.F)) {
        break label154;
      }
      this.c.setDescriptionColor(getResources().getColor(2131296470));
      return;
      this.b.setDescriptionColor(getResources().getColor(2131296450));
      break;
      label134:
      this.a.setDescriptionColor(getResources().getColor(2131296450));
    }
    label154:
    this.c.setDescriptionColor(getResources().getColor(2131296450));
  }
  
  protected int a(boolean paramBoolean)
  {
    int i1 = 1;
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
    String str;
    if (!ft.b(this))
    {
      str = "com.viber.voip.action.NO_INTERNET_DIALOG";
      i1 = 101;
    }
    for (;;)
    {
      if ((paramBoolean) && (str != null)) {
        startActivity(new Intent(str).setFlags(268435456));
      }
      return i1;
      PhoneControllerDelegate.ViberConnectionState localViberConnectionState1 = localPhoneControllerWrapper.getServiceState();
      PhoneControllerDelegate.ViberConnectionState localViberConnectionState2 = PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED;
      str = null;
      if (localViberConnectionState1 == localViberConnectionState2)
      {
        str = "com.viber.voip.action.NO_SERVICE_DIALOG";
        i1 = 102;
      }
    }
  }
  
  protected void a()
  {
    c(10000114);
  }
  
  protected void a(double paramDouble1, double paramDouble2)
  {
    a(paramDouble1, paramDouble2, null);
  }
  
  protected void a(double paramDouble1, double paramDouble2, Bundle paramBundle)
  {
    if (a(false) != 1)
    {
      if (!isFinishing()) {
        runOnUiThread(new p(this));
      }
      return;
    }
    ViberApplication.getInstance().getLocationManager().a(paramDouble1, paramDouble2, false, new q(this, paramBundle));
    this.q = new LocationInfo((int)(paramDouble1 * 10000000.0D), (int)(paramDouble2 * 10000000.0D));
  }
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 != this.C) {
      return;
    }
    b("onGroupCreateError status = " + paramInt2);
    d();
    ViberApplication.getInstance().showToast("onGroupCreateError status = " + paramInt2);
  }
  
  public void a(int paramInt, long paramLong) {}
  
  public void a(int paramInt1, long paramLong, int paramInt2) {}
  
  public void a(int paramInt1, long paramLong, int paramInt2, boolean paramBoolean) {}
  
  public void a(int paramInt, long paramLong1, long paramLong2, Map<String, Integer> paramMap)
  {
    if (paramInt != this.C) {
      return;
    }
    this.A.a(this, this.z.c(), paramMap, true, new v(this, paramLong2));
  }
  
  public void a(int paramInt, long paramLong, Map<String, Integer> paramMap) {}
  
  public void a(long paramLong, int paramInt)
  {
    if (paramLong == this.C) {
      if (paramInt == 0)
      {
        b("onValidateGroupUriReply OK");
        str1 = this.a.getText().toString();
        str2 = this.b.getText().toString().trim();
        str3 = this.f.getText().toString().trim();
        if (this.q == null)
        {
          localLocationInfo = new LocationInfo(0, 0);
          arrayOfString = this.e.a();
          str4 = c();
          if (this.n != null)
          {
            b("upload icon");
            ac.a(ak.d, this.n, new t(this, str2, str1, localLocationInfo, str4, str3, arrayOfString));
          }
        }
      }
    }
    while (paramLong != this.D)
    {
      for (;;)
      {
        String str1;
        String str2;
        String str3;
        String[] arrayOfString;
        String str4;
        return;
        LocationInfo localLocationInfo = this.q;
      }
      if ((this.m != null) && (this.m.isShowing()))
      {
        this.m.dismiss();
        a(paramInt, false);
      }
      b("onValidateGroupUriReply context = " + paramLong + ", status = " + paramInt);
      return;
    }
    this.K = paramInt;
    a(paramInt, false);
    this.D = 65793;
  }
  
  protected void a(Uri paramUri1, Uri paramUri2)
  {
    new File(paramUri1.getPath()).renameTo(new File(com.viber.voip.w.z + gj.a(paramUri2.toString())));
  }
  
  protected void a(String paramString, boolean paramBoolean)
  {
    if (gj.c(paramString)) {
      a(100, paramBoolean);
    }
    do
    {
      return;
      if (paramString.matches("[~!@#$%^*:;'\"|?/><{}\\[\\]+=_\\-].*"))
      {
        a(110, paramBoolean);
        return;
      }
    } while ((this.D != 65793) || ((this.K != 65793) && (gj.a(this.I, paramString))));
    int i1 = a(paramBoolean);
    if (i1 != 1)
    {
      a(i1, paramBoolean);
      return;
    }
    this.a.c();
    this.a.b();
    this.D = ViberApplication.getInstance().getPhoneController(false).generateSequence();
    ViberApplication.getInstance().getPhoneController(true).handleValidatePublicGroupUri(this.D, paramString);
    this.a.postDelayed(new g(this, paramBoolean), 4000L);
    this.M = false;
  }
  
  public void a(boolean paramBoolean1, com.viber.voip.contacts.b.e parame, String paramString, boolean paramBoolean2) {}
  
  protected void b()
  {
    this.c.b();
    ViberApplication.getInstance().getLocationManager().a(new o(this), false);
  }
  
  public void b(int paramInt1, int paramInt2) {}
  
  public void b(long paramLong) {}
  
  protected String c()
  {
    if (this.G == null) {
      return ViberApplication.getInstance().getRegistrationValues().c();
    }
    return this.G;
  }
  
  public void c(int paramInt1, int paramInt2) {}
  
  protected void d()
  {
    if (this.m != null) {
      this.m.dismiss();
    }
  }
  
  protected void e()
  {
    if (a(true) != 1) {
      return;
    }
    if (f())
    {
      this.C = ViberApplication.getInstance().getPhoneController(false).generateSequence();
      String str = this.a.getText().toString();
      b("handleValidGroupUri");
      ViberApplication.getInstance().getPhoneController(false).handleValidatePublicGroupUri(this.C, str);
      this.m = ProgressDialog.show(this, "", getString(2131493613), true, true);
      return;
    }
    at.a(this, 2131494553, 2131494554, null);
    g();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 0) {
      return;
    }
    Uri localUri1;
    if ((paramIntent != null) && (paramIntent.getData() != null)) {
      localUri1 = com.viber.voip.messages.extras.image.h.a(this, paramIntent.getData(), paramIntent.getType());
    }
    for (;;)
    {
      label30:
      switch (paramInt1)
      {
      }
      do
      {
        for (;;)
        {
          this.E = null;
          return;
          if (this.E != null)
          {
            localUri1 = this.E;
            break label30;
          }
          if ((paramIntent == null) || (gj.c(paramIntent.getStringExtra("backgroundUri")))) {
            break label549;
          }
          localUri1 = Uri.parse(paramIntent.getStringExtra("backgroundUri"));
          break label30;
          if ((localUri1 == null) || (com.viber.voip.messages.extras.image.h.c(localUri1)))
          {
            bj.a(this, null);
            return;
          }
          startActivityForResult(com.viber.voip.messages.extras.image.g.a(this, localUri1), 103);
          continue;
          if ((paramIntent != null) && (paramIntent.getExtras() != null))
          {
            Uri localUri2 = Uri.parse(paramIntent.getAction());
            com.viber.voip.messages.extras.image.b.a().a(new w(this));
            com.viber.voip.messages.extras.image.b.a().a(1, this, new Uri[] { localUri2 }, "image", com.viber.voip.messages.extras.image.l.d, 200, -1);
            this.u = true;
            continue;
            int i3 = 0;
            if (paramIntent != null) {
              i3 = paramIntent.getIntExtra("backgroundId", 0);
            }
            if ((localUri1 == null) && (i3 == 0)) {
              break;
            }
            if (i3 > 0) {
              c(i3);
            }
            for (;;)
            {
              this.u = true;
              break;
              a(localUri1);
            }
            if (paramIntent != null) {
              a(paramIntent.getIntExtra("extra_location_lat", 0) / 1000000.0D, paramIntent.getIntExtra("extra_location_lon", 0) / 1000000.0D);
            }
          }
        }
      } while (paramIntent == null);
      Iterator localIterator1 = paramIntent.getParcelableArrayListExtra("added_participants").iterator();
      label328:
      GroupController.GroupMember localGroupMember2;
      int i1;
      if (localIterator1.hasNext())
      {
        localGroupMember2 = (GroupController.GroupMember)localIterator1.next();
        Iterator localIterator4 = this.B.iterator();
        i1 = 0;
        label362:
        if (localIterator4.hasNext())
        {
          GroupController.GroupMember localGroupMember3 = (GroupController.GroupMember)localIterator4.next();
          if (!localGroupMember2.a.phoneNumber.equals(localGroupMember3.a.phoneNumber)) {
            break label542;
          }
        }
      }
      label542:
      for (int i2 = 1;; i2 = i1)
      {
        i1 = i2;
        break label362;
        if (i1 != 0) {
          break label328;
        }
        this.B.add(localGroupMember2);
        break label328;
        Iterator localIterator2 = paramIntent.getParcelableArrayListExtra("removed_participants").iterator();
        while (localIterator2.hasNext())
        {
          GroupController.GroupMember localGroupMember1 = (GroupController.GroupMember)localIterator2.next();
          Iterator localIterator3 = this.B.iterator();
          while (localIterator3.hasNext()) {
            if (localGroupMember1.a.phoneNumber.equals(((GroupController.GroupMember)localIterator3.next()).a.phoneNumber)) {
              localIterator3.remove();
            }
          }
        }
        this.z.notifyDataSetChanged();
        this.u = true;
        break;
      }
      label549:
      localUri1 = null;
    }
  }
  
  public void onBackPressed()
  {
    if (getCurrentFocus() != null) {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }
    if (this.u)
    {
      at.a(this, 2131494560, 2131494561, new l(this), null, 2131493751, 0);
      return;
    }
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    if (this.k.getImage() == paramView)
    {
      a(this.z.a());
      return;
    }
    switch (paramView.getId())
    {
    case 2131165719: 
    case 2131165720: 
    case 2131165721: 
    case 2131165722: 
    default: 
      return;
    case 2131165718: 
      b(100);
      return;
    case 2131165726: 
      e();
      return;
    case 2131165725: 
      startActivityForResult(new Intent("com.viber.voip.action.SELECT_VIBE_BACKGROUND"), 101);
      return;
    case 2131165724: 
      this.D = ViberApplication.getInstance().getPhoneController(false).generateSequence();
      String str = this.a.getText().toString();
      this.a.setEnabled(false);
      ViberApplication.getInstance().getPhoneController(true).handleValidatePublicGroupUri(this.D, str);
      return;
    }
    Intent localIntent = gn.b(this);
    if (localIntent == null)
    {
      ViberApplication.getInstance().showToast(getString(2131493847));
      return;
    }
    startActivityForResult(localIntent, 102);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903176);
    this.a = ((TextViewWithDescription)findViewById(2131165724));
    this.a.setOnEditorActionListener(this.O);
    this.a.a(this.w);
    this.a.setOnFocusChangeListener(this);
    this.a.setOnTextChangedListener(this.x);
    this.b = ((TextViewWithDescription)findViewById(2131165719));
    this.b.setOnEditorActionListener(this.N);
    this.b.a(new InputFilter.LengthFilter(getResources().getInteger(2131427349)));
    this.b.setOnFocusChangeListener(this);
    this.b.setOnTextChangedListener(this.x);
    this.i = ((Button)findViewById(2131165726));
    this.i.setOnClickListener(this);
    this.l = ((TextView)findViewById(2131165727));
    SpannableString localSpannableString = new SpannableString(getString(2131494594));
    localSpannableString.setSpan(new UnderlineSpan(), 0, localSpannableString.length(), 0);
    this.l.setText(localSpannableString);
    this.l.setOnClickListener(new a(this));
    this.h = ((AvatarView)findViewById(2131165718));
    this.h.setOnClickListener(this);
    this.g = ((TextViewWithDescription)findViewById(2131165725));
    this.g.setOnClickListener(this);
    this.y = ViberApplication.getInstance().getMessagesManager().d();
    com.viber.voip.messages.controller.c.e.a().a(this);
    this.c = ((TextViewWithDescription)findViewById(2131165723));
    this.c.setOnClickListener(this);
    this.f = ((TextViewWithDescription)findViewById(2131165721));
    this.f.a(new InputFilter.LengthFilter(getResources().getInteger(2131427350)));
    this.f.setOnTextChangedListener(this.x);
    this.d = ((TextViewWithDescription)findViewById(2131165722));
    this.d.getEditText().setImeOptions(5);
    this.e = ax.a(this.d.getEditText());
    this.d.setDescription(getString(2131494522));
    this.d.getEditText().setSingleLine(false);
    this.d.setOnTextChangedListener(this.x);
    this.j = ((HListWithDescription)findViewById(2131165720));
    this.j.setOnItemClickListener(new m(this));
    this.k = new PublicGroupInfoParticipantView(this);
    this.k.setImageSize((int)getResources().getDimension(2131362320));
    this.k.getImage().setImageResource(2130837952);
    this.k.getImage().setOnClickListener(this);
    this.k.getImage().a();
    this.j.a(this.k);
    this.z = new af(this, 2131165719, this.B);
    this.j.setAdapter(this.z);
    this.A = new ct(this, this);
    getSupportActionBar().setHomeButtonEnabled(true);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    b();
    this.r = com.viber.voip.util.b.w.a(this);
    this.s = new z().a(com.viber.voip.util.b.aa.b).a(new com.viber.voip.util.b.b.b(this)).b();
    this.t = new z().b(2130838325, this).a(2130838325, this).b();
    a();
    this.L = new Handler();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getActionBarSherlock().getMenuInflater().inflate(2131755011, paramMenu);
    this.J = gl.a(paramMenu.findItem(2131166288), 2130838237, 2131494199, new h(this));
    ((CapitalizingButton)this.J.findViewById(2131165497)).setTextColor(getResources().getColorStateList(2131296506));
    b(f());
    return true;
  }
  
  public void onDestroy()
  {
    com.viber.voip.messages.controller.c.e.a().b(this);
    super.onDestroy();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      return;
    }
    if ((paramView.getId() == this.b.getBodyViewId()) && (!this.H))
    {
      String str = ((TextView)paramView).getText().toString();
      this.a.setText(str.replaceAll(" ", ""));
      this.I = this.a.getText().toString();
      a(this.I, false);
    }
    if ((paramView.getId() == this.a.getBodyViewId()) && (!this.a.getText().toString().equals(this.b.getText().toString()))) {
      this.H = true;
    }
    b(f());
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      onBackPressed();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.CreatePublicGroupActivity
 * JD-Core Version:    0.7.0.1
 */