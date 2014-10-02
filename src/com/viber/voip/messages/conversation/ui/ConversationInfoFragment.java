package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.app.SherlockListFragment;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.jni.lastonline.LastOnlineListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;
import com.viber.voip.a.q;
import com.viber.voip.a.u;
import com.viber.voip.contacts.ui.cb;
import com.viber.voip.messages.adapters.o;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.dc;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.ui.ConversationGalleryActivity;
import com.viber.voip.messages.ui.view.c;
import com.viber.voip.settings.j;
import com.viber.voip.util.at;
import com.viber.voip.util.gj;
import com.viber.voip.util.gk;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ConversationInfoFragment
  extends SherlockListFragment
  implements AdapterView.OnItemClickListener, com.viber.provider.e, dc, cs
{
  private static final String a = ConversationInfoFragment.class.getSimpleName();
  private static ci n = new bx();
  private com.a.a.a.a b;
  private c c;
  private com.viber.voip.messages.adapters.l d;
  private com.viber.voip.messages.conversation.h e;
  private ap f;
  private com.viber.voip.messages.i g;
  private Handler h;
  private Uri i;
  private q j = new q();
  private cn k;
  private String l;
  private cm m;
  private ci o = n;
  private final LastOnlineDelegate p = new ca(this);
  
  private void a(Uri paramUri1, Uri paramUri2)
  {
    if (this.e == null) {
      d("saveBitmapToConversation :: mGroupEntity == null => callback init");
    }
    for (;;)
    {
      if (!isDetached()) {}
      try
      {
        Toast.makeText(getActivity(), getString(2131494030), 1).show();
        return;
      }
      catch (IllegalStateException localIllegalStateException) {}
      if ((paramUri1 != null) && (paramUri2 != null))
      {
        if ((!paramUri1.toString().equals(this.e.g())) || (!paramUri2.toString().equals(this.e.f()))) {
          this.g.d().a(this.e.a(), paramUri1.toString(), paramUri2.toString());
        }
        this.c.a(paramUri1.toString(), paramUri2.toString());
        this.b.notifyDataSetChanged();
      }
    }
  }
  
  private void a(IBinder paramIBinder)
  {
    if (paramIBinder != null) {
      ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(paramIBinder, 3);
    }
  }
  
  private void a(com.viber.voip.messages.conversation.h paramh, ap paramap)
  {
    if ((paramh == null) || (!paramh.l())) {}
    while ((!ViberApplication.preferences().b(j.Y(), j.Z())) || (paramap.getCount() <= 0)) {
      return;
    }
    a(true);
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; i1 < paramap.getCount(); i1++)
    {
      ar localar = paramap.e(i1);
      if ((!localar.o()) && (localar.p())) {
        localArrayList.add(localar.h());
      }
    }
    int i2 = localPhoneControllerWrapper.generateSequence();
    localPhoneControllerWrapper.getLastOnlineController().handleGetLastOnline((String[])localArrayList.toArray(new String[localArrayList.size()]), i2, 0, 0L);
  }
  
  private void a(com.viber.voip.messages.conversation.h paramh, boolean paramBoolean)
  {
    this.c.a(paramh);
    this.b.notifyDataSetChanged();
    String str;
    if (paramh != null)
    {
      SherlockFragmentActivity localSherlockFragmentActivity = getSherlockActivity();
      if (!paramh.l()) {
        break label58;
      }
      str = this.c.c();
      gl.a(localSherlockFragmentActivity, str);
      if (!paramBoolean) {
        break label67;
      }
      this.f.e();
    }
    label58:
    label67:
    while (!paramh.l())
    {
      return;
      str = gk.b(paramh);
      break;
    }
    gl.b(getSherlockActivity(), this.l);
  }
  
  private void a(Runnable paramRunnable)
  {
    if (!this.e.l())
    {
      com.viber.voip.block.i.a(getActivity(), this.e.p(), this.e.q(), true, paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  private void a(String paramString)
  {
    if ((gj.c(this.e.c())) || (!this.e.c().equals(paramString)))
    {
      this.g.d().a(this.e.d(), paramString);
      this.c.a(paramString);
      b("rename_dialog");
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (ViberApplication.preferences().b(j.Y(), j.Z()))
    {
      if (paramBoolean)
      {
        LastOnlineListener localLastOnlineListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener();
        LastOnlineDelegate[] arrayOfLastOnlineDelegate = new LastOnlineDelegate[1];
        arrayOfLastOnlineDelegate[0] = this.p;
        localLastOnlineListener.registerDelegate(arrayOfLastOnlineDelegate);
      }
    }
    else {
      return;
    }
    ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener().removeDelegate(this.p);
  }
  
  private void b(String paramString)
  {
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(paramString);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    cj.a(paramString).show(localFragmentTransaction, paramString);
    this.k.a(paramString);
    if ("loading_dialog".equals(paramString))
    {
      this.h.removeCallbacks(this.k);
      this.h.postDelayed(this.k, 10000L);
    }
    while (!"rename_dialog".equals(paramString)) {
      return;
    }
    this.h.removeCallbacks(this.k);
    this.h.postDelayed(this.k, 10000L);
  }
  
  private void b(boolean paramBoolean)
  {
    d("saveGroupNotification isSmartNotificationOn - " + paramBoolean);
    if ((this.e != null) && (this.e.s() != paramBoolean))
    {
      bc.a().a(this.j.a(paramBoolean));
      this.c.a(paramBoolean);
      this.b.notifyDataSetChanged();
      this.g.d().a(this.e.a(), paramBoolean);
    }
  }
  
  private void c()
  {
    if (this.e == null) {
      return;
    }
    if (!this.e.l())
    {
      at.a(getActivity(), -1, getString(2131494045), new cd(this), null, 2131494048, false);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    localBuilder.setTitle(2131494033);
    View localView = LayoutInflater.from(getActivity()).inflate(2130903347, null);
    EditText localEditText = (EditText)localView.findViewById(2131166168);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(getResources().getInteger(2131427336));
    localEditText.setFilters(arrayOfInputFilter);
    if (this.e.c() == null) {}
    for (String str = "";; str = this.e.c())
    {
      localEditText.setText(str);
      localEditText.setSelection(str.length());
      localBuilder.setView(localView);
      localBuilder.setPositiveButton(2131493558, new ce(this, localEditText));
      localBuilder.setNegativeButton(2131494012, new cf(this, localEditText));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.getWindow().setSoftInputMode(4);
      localEditText.addTextChangedListener(new cg(this, localAlertDialog, str));
      localAlertDialog.show();
      localAlertDialog.getButton(-2).setEnabled(false);
      return;
    }
  }
  
  private void c(String paramString)
  {
    this.h.removeCallbacks(this.k);
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(paramString);
    if (localFragment != null)
    {
      localFragmentTransaction.remove(localFragment);
      localFragmentTransaction.commitAllowingStateLoss();
    }
  }
  
  private void d()
  {
    if (this.e != null)
    {
      com.viber.voip.messages.extras.image.h.c(getActivity(), Uri.parse(this.e.f()));
      com.viber.voip.messages.extras.image.h.c(getActivity(), Uri.parse(this.e.g()));
      this.g.d().a(this.e.a(), "", "");
      this.c.a("", "");
      Toast.makeText(getActivity(), getString(2131494030), 1).show();
    }
  }
  
  private void d(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private boolean e()
  {
    return (this.e != null) && (!gj.c(this.e.g()));
  }
  
  public void a()
  {
    bc.a().a(this.j.f());
    if ((this.f.getCount() > 0) && (this.e != null))
    {
      if (this.f.getCount() < cb.a()) {
        a(new ch(this));
      }
    }
    else {
      return;
    }
    bc localbc = bc.a();
    u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("500"));
    b("can_not_add_dialog");
  }
  
  public void a(int paramInt)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(new bz(this));
    }
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(int paramInt, long paramLong1, long paramLong2, Map<String, Integer> paramMap) {}
  
  public void a(int paramInt, long paramLong, Map<String, Integer> paramMap) {}
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    if (paramb == this.f)
    {
      this.m.b(this.f.getCount());
      this.b.notifyDataSetChanged();
      a(this.e, this.f);
      if (this.e.l())
      {
        this.l = gj.a(1, this.f);
        gl.b(getSherlockActivity(), this.l);
      }
      this.o.a(paramBoolean, this.e.a(), this.l);
    }
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.e = paramh;
    boolean bool;
    if (!this.f.a(this.e.a()))
    {
      bool = true;
      if (!bool) {
        break label73;
      }
      this.f.b(this.e.a());
    }
    for (;;)
    {
      if (this.e.a() == paramh.a()) {
        a(paramh, bool);
      }
      return;
      bool = false;
      break;
      label73:
      this.o.a(true, this.e.a(), this.l);
    }
  }
  
  public void b()
  {
    Intent localIntent = new Intent("com.viber.voip.action.BACKGROUND_GALLERY");
    localIntent.putExtra("thread_id", this.e.a());
    startActivityForResult(localIntent, 2004);
  }
  
  public void b(long paramLong)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(new by(this, paramLong));
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.f = new ap(getActivity(), true, getLoaderManager(), this.g, this);
    this.f.n();
    this.m = ((cm)getActivity());
    this.b = new com.a.a.a.a();
    this.c = new c(getActivity());
    this.d = new com.viber.voip.messages.adapters.l(getActivity(), this.f);
    this.b.a(this.c.b());
    this.b.a(this.d);
    View localView = this.c.a();
    localView.findViewById(2131166011).setOnClickListener(new cc(this));
    getListView().addFooterView(localView);
    setListAdapter(this.b);
    getListView().setOnItemClickListener(this);
    com.viber.voip.messages.controller.c.e.a().a(this);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((getActivity() instanceof ci))
      {
        ((ci)getActivity()).n();
        continue;
        if (paramIntent.getData() != null)
        {
          Uri localUri3 = paramIntent.getData();
          d("uriFromIntent = " + localUri3);
          if (!localUri3.equals(this.i)) {
            com.viber.voip.messages.extras.image.h.c(getActivity(), this.i);
          }
          startActivityForResult(g.b(getActivity(), localUri3), 2004);
          continue;
          if (this.i != null)
          {
            startActivityForResult(g.b(getActivity(), this.i), 2004);
            continue;
            if (paramIntent.getExtras() != null)
            {
              Uri localUri1 = Uri.parse(paramIntent.getStringExtra("portraitUri"));
              Uri localUri2 = Uri.parse(paramIntent.getStringExtra("landscapeUri"));
              d("onActivityResult: action(portrait img uri): " + localUri1 + ", landscape img uri: " + localUri2);
              if (!e()) {
                bc.a().a(this.j.c());
              }
              for (;;)
              {
                a(localUri1, localUri2);
                if (this.i == null) {
                  break;
                }
                this.i = null;
                break;
                bc.a().a(this.j.d());
              }
            }
            if (paramIntent.getAction().equals("remove_conversation_background"))
            {
              bc.a().a(this.j.e());
              d();
              continue;
              this.o.a(paramIntent.getLongExtra("thread_id", -1L));
            }
          }
        }
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof ci)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.o = ((ci)paramActivity);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    case 2131166309: 
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      this.i = com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.b, null);
      localIntent.putExtra("output", this.i);
      startActivityForResult(localIntent, 2002);
    }
    for (;;)
    {
      return true;
      startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getString(2131493914), new Intent[0]), 2001);
      continue;
      bc.a().a(this.j.e());
      d();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = new Handler();
    this.g = ViberApplication.getInstance().getMessagesManager();
    this.k = new cn(this, null);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().getMenuInflater().inflate(2131755022, paramContextMenu);
    if (!e()) {
      paramContextMenu.removeItem(2131166311);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903173, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    this.f.m();
    com.viber.voip.messages.controller.c.e.a().b(this);
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.o = n;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramView.getTag();
    ar localar;
    if ((localObject instanceof o))
    {
      localar = (ar)paramAdapterView.getItemAtPosition(paramInt);
      if (localar == null) {
        ViberApplication.log("Error: ParticipantsListAdapter. null item CLICK position = " + paramInt);
      }
    }
    label86:
    do
    {
      do
      {
        return;
        boolean bool3 = ViberApplication.isTablet();
        Intent localIntent;
        if ((!gj.c(localar.h())) && (localar.h().equals("Viber"))) {
          localIntent = null;
        }
        com.viber.voip.messages.a.a locala1;
        long l1;
        while (localIntent != null)
        {
          getActivity().startActivity(localIntent);
          return;
          if (localar.o())
          {
            ViberApplication.log("ParticipantsListAdapter.YOU item CLICK");
            if (bool3) {}
            for (String str = "com.viber.voip.action.YOU_DIALOG";; str = "com.viber.voip.action.YOU")
            {
              localIntent = new Intent(str);
              break;
            }
          }
          if ((localar.f() == 0L) && (this.e.l()))
          {
            com.viber.voip.messages.a.a locala2 = com.viber.voip.messages.a.b.d();
            long l2 = localar.b();
            if ((this.e.l()) || (localar.f() > 0L)) {}
            for (boolean bool5 = true;; bool5 = false)
            {
              Uri localUri2 = locala2.a(l2, bool5);
              localIntent = gn.a(bool3, localar.h(), localar.n(), localUri2, true, this.j.a.a());
              break;
            }
          }
          if ((localar.f() == 0L) && (!this.e.l()))
          {
            localIntent = gn.a(bool3, localar.h(), null, null, true, this.j.a.a());
          }
          else
          {
            locala1 = com.viber.voip.messages.a.b.d();
            l1 = localar.b();
            if ((!this.e.l()) && (localar.f() <= 0L)) {
              break label391;
            }
          }
        }
        for (boolean bool4 = true;; bool4 = false)
        {
          Uri localUri1 = locala1.a(l1, bool4);
          localIntent = gn.a(bool3, localar.f(), localar.g(), localar.q(), "", localUri1, null, this.j.a.a());
          break label86;
          break;
        }
        switch (((Integer)localObject).intValue())
        {
        case 5: 
        default: 
          return;
        case 0: 
          c();
          return;
        case 1: 
          b();
          return;
        }
      } while ((this.e == null) || (this.e.o()));
      if (!this.e.s()) {}
      for (boolean bool2 = true;; bool2 = false)
      {
        b(bool2);
        return;
      }
    } while (this.e == null);
    label391:
    if (!this.e.o()) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      this.c.b(bool1);
      this.g.c().a(this.e.a(), bool1, null);
      return;
    }
    startActivityForResult(ConversationGalleryActivity.a(this.e.a(), gk.b(this.e)), 2005);
  }
  
  public void onPause()
  {
    super.onPause();
    a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ConversationInfoFragment
 * JD-Core Version:    0.7.0.1
 */