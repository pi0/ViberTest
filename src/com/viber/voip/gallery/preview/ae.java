package com.viber.voip.gallery.preview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.as;
import com.viber.voip.ax;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.animation.d;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.extras.image.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.ui.al;
import com.viber.voip.util.gl;
import com.viber.voip.util.upload.ViberUploadReceiver;
import com.viber.voip.util.upload.ac;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ae
  extends al
  implements ViewPager.OnPageChangeListener, com.viber.voip.gallery.animation.a, com.viber.voip.gallery.animation.b
{
  private Context a;
  private z b;
  private MenuItem c;
  private ViewPagerWithPagingEnable d;
  private int e;
  private ConversationData f;
  private ArrayList<GalleryItem> g;
  private Map<Uri, SendMediaDataContainer> h = new HashMap();
  private int i = -1;
  private ad j;
  private as k;
  private ax l = new af(this);
  private View.OnClickListener m = new ag(this);
  private View.OnClickListener n = new ah(this);
  private int o;
  private e p;
  
  public static ae a(ConversationData paramConversationData)
  {
    ae localae = new ae();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra_conversation_data", paramConversationData);
    localae.setArguments(localBundle);
    return localae;
  }
  
  private void a(int paramInt)
  {
    if (this.j != null) {
      this.j.b(paramInt);
    }
  }
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    this.e = paramBundle.getInt("current_position");
  }
  
  private void b(int paramInt)
  {
    if (this.j != null) {
      this.j.c(paramInt);
    }
  }
  
  private void b(ArrayList<GalleryItem> paramArrayList)
  {
    if (paramArrayList == null) {
      paramArrayList = new ArrayList();
    }
    this.g = paramArrayList;
    this.b = new z(this.a, this.g, this.d);
    this.b.a(this.k);
    d locald = new d(this.b, this.d);
    locald.a(true);
    locald.a(10);
    locald.a(this);
    locald.a(this);
    locald.a(this);
    locald.a(this.m);
    this.d.setAdapter(locald);
    this.d.setCurrentItem(this.e, false);
    if (this.e < paramArrayList.size()) {
      this.b.a(this.e);
    }
    f();
  }
  
  private void c()
  {
    com.viber.voip.messages.extras.image.b.a().b(this.o);
    this.o = 0;
    if (this.p != null) {
      com.viber.voip.messages.extras.image.b.a().b(this.p);
    }
    g();
  }
  
  private void d()
  {
    com.viber.voip.messages.extras.image.b.a().a(this.o);
    if (this.p != null) {
      com.viber.voip.messages.extras.image.b.a().b(this.p);
    }
    e();
  }
  
  private void e()
  {
    Iterator localIterator = this.h.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ViberUploadReceiver.a(this.a, ((SendMediaDataContainer)localEntry.getValue()).b);
      h.c(this.a, ((SendMediaDataContainer)localEntry.getValue()).b);
      h.c(this.a, ((SendMediaDataContainer)localEntry.getValue()).c);
    }
    this.h.clear();
  }
  
  private void f()
  {
    d();
    this.o = ((int)(System.currentTimeMillis() / 1000L));
    Uri[] arrayOfUri = new Uri[this.g.size()];
    for (int i1 = 0; i1 < this.g.size(); i1++) {
      arrayOfUri[i1] = ((GalleryItem)this.g.get(i1)).a();
    }
    this.p = new ai(this, ac.a(this.a));
    com.viber.voip.messages.extras.image.b.a().a(this.p);
    com.viber.voip.messages.extras.image.b.a().a(this.o, this.a, arrayOfUri, "image", l.d, 256000);
  }
  
  private void g()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = this.g.iterator();
    if (localIterator.hasNext())
    {
      GalleryItem localGalleryItem = (GalleryItem)localIterator.next();
      Uri localUri1 = localGalleryItem.a();
      SendMediaDataContainer localSendMediaDataContainer;
      if (this.h.containsKey(localUri1))
      {
        localSendMediaDataContainer = (SendMediaDataContainer)this.h.remove(localUri1);
        localSendMediaDataContainer.e = localGalleryItem.c();
      }
      for (;;)
      {
        if (localGalleryItem.d())
        {
          Uri localUri2 = localGalleryItem.b();
          Uri localUri3 = com.viber.voip.gallery.b.a.d(localUri2);
          if (localUri3 != null) {
            localSendMediaDataContainer.a = localUri3;
          }
          localArrayList2.add(localUri2);
        }
        localArrayList1.add(localSendMediaDataContainer);
        break;
        localSendMediaDataContainer = new SendMediaDataContainer();
        localSendMediaDataContainer.a = localUri1;
        localSendMediaDataContainer.e = localGalleryItem.c();
        localSendMediaDataContainer.d = "image";
      }
    }
    dc.a(dk.h).post(new a(localArrayList2));
    e();
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION").addFlags(67108864);
    localIntent.putExtra("extra_conversation_data", this.f);
    localIntent.putParcelableArrayListExtra("multiply_send", localArrayList1);
    startActivity(localIntent);
  }
  
  private void h()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ADD_MORE_GALLERY");
    localIntent.putExtra("extra_multiple_selection", true);
    localIntent.putParcelableArrayListExtra("extra_selected_images", this.g);
    startActivityForResult(localIntent, 10);
  }
  
  private void i()
  {
    if (this.g != null) {}
    for (int i1 = this.g.size();; i1 = 0)
    {
      if (this.j != null) {
        this.j.a(i1);
      }
      if (this.c != null)
      {
        MenuItem localMenuItem = this.c;
        boolean bool = false;
        if (i1 > 0) {
          bool = true;
        }
        localMenuItem.setVisible(bool);
      }
      return;
    }
  }
  
  void a()
  {
    if (this.b != null) {
      this.b.notifyDataSetChanged();
    }
  }
  
  public void a(View paramView, int paramInt)
  {
    this.i = paramInt;
  }
  
  public void a(View paramView, Object paramObject, int paramInt)
  {
    i();
    if (this.j != null) {
      this.j.f();
    }
  }
  
  void a(as paramas)
  {
    if ((isAdded()) && (this.k != null))
    {
      this.k.b(this.l);
      if (paramas != null) {
        paramas.a(this.l);
      }
    }
    this.k = paramas;
  }
  
  void a(ArrayList<GalleryItem> paramArrayList)
  {
    b(paramArrayList);
    i();
    getSherlockActivity().supportInvalidateOptionsMenu();
  }
  
  int b()
  {
    return this.e;
  }
  
  public void b(View paramView, Object paramObject, int paramInt)
  {
    a(paramInt);
  }
  
  public void c(View paramView, Object paramObject, int paramInt)
  {
    i();
    b(paramInt);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setHasOptionsMenu(true);
    View localView = getView();
    this.a = getActivity().getApplicationContext();
    a(paramBundle);
    this.d = ((ViewPagerWithPagingEnable)localView.findViewById(2131165854));
    b(this.g);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 == -1) && (paramIntent != null) && (paramInt1 == 10))
    {
      ArrayList localArrayList = paramIntent.getParcelableArrayListExtra("extra_selected_images");
      if (this.j != null) {
        this.j.a(localArrayList);
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!ad.class.isInstance(paramActivity)) {
      throw new RuntimeException("parent activity must implement PhotoPreviewController");
    }
    this.j = ((ad)paramActivity);
    if (this.k != null) {
      this.k.a(this.l);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = ((ConversationData)getArguments().getParcelable("extra_conversation_data"));
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755029, paramMenu);
    this.c = paramMenu.findItem(2131166326);
    MenuItem localMenuItem = this.c;
    if ((this.g != null) && (this.g.size() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      gl.a(this.c, 2130837612, 2131493707, this.n);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903294, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    this.d = null;
    this.b = null;
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    this.j = null;
    if (this.k != null) {
      this.k.b(this.l);
    }
    super.onDetach();
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    if (this.b == null) {
      return;
    }
    if (paramInt != 0)
    {
      this.b.a();
      return;
    }
    this.b.a(this.e);
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    if ((this.i == -1) && (this.e != paramInt) && (this.e < this.g.size())) {
      a(this.e);
    }
    if ((this.i == -1) || (this.i > paramInt))
    {
      b(paramInt);
      this.e = paramInt;
      this.i = -1;
    }
    while (this.i >= paramInt) {
      return;
    }
    b(this.e);
    this.i = -1;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a(this.e);
    paramBundle.putInt("current_position", this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.ae
 * JD-Core Version:    0.7.0.1
 */