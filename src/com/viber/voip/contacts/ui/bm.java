package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.a.v;
import com.viber.voip.messages.adapters.k;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.aw;
import com.viber.voip.messages.conversation.i;
import com.viber.voip.messages.conversation.ui.ConversationData;

public class bm
  extends ContactsFragment
{
  private static final String t = bm.class.getSimpleName();
  private int A;
  View q;
  private View u;
  private com.viber.voip.messages.ui.view.a v;
  private i<ConversationLoaderEntity> w;
  private k x;
  private boolean y;
  private int z;
  
  private View A()
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903166, null);
    ((TextView)localView.findViewById(2131165767)).setText(2131494508);
    return localView;
  }
  
  private com.viber.voip.messages.ui.view.a B()
  {
    return new com.viber.voip.messages.ui.view.a(getActivity());
  }
  
  private View C()
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903323, null);
    ((TextView)localView.findViewById(2131165436)).setText(2131493680);
    return localView;
  }
  
  private void a(com.viber.voip.messages.adapters.a.a parama)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", new ConversationData(parama));
    getActivity().startActivity(localIntent);
  }
  
  private void b(String paramString)
  {
    boolean bool1 = true;
    c("localSearch " + paramString);
    boolean bool2;
    label85:
    com.a.a.a.a locala;
    com.viber.voip.messages.ui.view.a locala1;
    if (!TextUtils.isEmpty(paramString))
    {
      bool2 = bool1;
      if ((this.y) || (!bool2)) {
        break label155;
      }
      v();
      this.k.b(this.u, bool1);
      this.k.a(this.x, bool1);
      this.k.b(this.q, false);
      this.y = bool2;
      if (this.y) {
        this.w.d(paramString);
      }
      if (com.viber.voip.j.a.a().e())
      {
        this.v.setSearchText(paramString);
        locala = this.k;
        locala1 = this.v;
        if (TextUtils.isEmpty(paramString)) {
          break label205;
        }
      }
    }
    for (;;)
    {
      locala.b(locala1, bool1);
      return;
      bool2 = false;
      break;
      label155:
      if ((!this.y) || (bool2)) {
        break label85;
      }
      this.k.b(this.u, false);
      this.k.a(this.x, false);
      this.k.b(this.q, false);
      break label85;
      label205:
      bool1 = false;
    }
  }
  
  private void c(String paramString) {}
  
  private void z()
  {
    int i;
    com.viber.voip.messages.ui.view.a locala;
    if (this.n.getCount() > 0)
    {
      i = this.z;
      c("onMainAdapterChanged, paddingTop:" + i);
      this.u.setPadding(this.u.getPaddingLeft(), i, this.u.getPaddingRight(), this.u.getPaddingBottom());
      if (com.viber.voip.j.a.a().e())
      {
        locala = this.v;
        if (this.n.getCount() != 0) {
          break label107;
        }
      }
    }
    label107:
    for (boolean bool = true;; bool = false)
    {
      locala.setContentTopPadding(bool);
      return;
      i = this.A;
      break;
    }
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    boolean bool1 = true;
    super.a(paramb, paramBoolean);
    c("onLoadFinished " + paramb + ", count=" + paramb.getCount());
    boolean bool2;
    com.a.a.a.a locala1;
    View localView1;
    if ((paramb instanceof i))
    {
      c("mMessagesAdapter.notifyDataSetChanged()");
      com.a.a.a.a locala2 = this.k;
      View localView2 = this.u;
      if ((this.y) && (paramb.getCount() > 0))
      {
        bool2 = bool1;
        locala2.b(localView2, bool2);
        this.x.notifyDataSetChanged();
      }
    }
    else
    {
      locala1 = this.k;
      localView1 = this.q;
      if ((this.n.getCount() != 0) || (this.x.getCount() != 0) || (!this.y)) {
        break label155;
      }
    }
    for (;;)
    {
      locala1.b(localView1, bool1);
      return;
      bool2 = false;
      break;
      label155:
      bool1 = false;
    }
  }
  
  public boolean a(String paramString)
  {
    boolean bool = super.a(paramString);
    if (bool) {
      b(paramString);
    }
    return bool;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).targetView.getTag() instanceof com.viber.voip.messages.adapters.a.a.b)) {
      return;
    }
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.w.a()) {
      this.w.q();
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.w.l();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((paramView.getTag() instanceof com.viber.voip.messages.adapters.a.a.b))
    {
      a((com.viber.voip.messages.adapters.a.a)((com.viber.voip.messages.adapters.a.a.b)paramView.getTag()).c());
      return;
    }
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
  }
  
  protected void p()
  {
    super.p();
    this.z = getActivity().getResources().getDimensionPixelSize(2131362275);
    this.A = getActivity().getResources().getDimensionPixelSize(2131362276);
    this.u = A();
    this.v = B();
    this.q = C();
    this.k.a(this.u);
    this.w = new aw(getActivity(), getLoaderManager(), this.h, true, false, null, null, this);
    this.w.s();
    this.x = new bo(this, ViberApplication.getInstance(), this.w, null, false);
    this.k.a(this.x);
    if (com.viber.voip.j.a.a().e())
    {
      this.k.a(this.v);
      this.k.b(this.v, false);
    }
    this.k.a(this.q);
    this.k.b(this.u, false);
    this.k.a(this.x, false);
    this.k.b(this.q, false);
    this.n.registerDataSetObserver(new bn(this));
  }
  
  protected void v()
  {
    if (!this.w.a())
    {
      this.w.e();
      this.w.r();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bm
 * JD-Core Version:    0.7.0.1
 */