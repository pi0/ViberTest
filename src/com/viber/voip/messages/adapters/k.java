package com.viber.voip.messages.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.messages.adapters.a.a.b;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.i;
import com.viber.voip.messages.h;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.util.b.w;

public class k
  extends BaseAdapter
{
  private LayoutInflater a;
  private i b;
  private Context c;
  private MessagesFragmentModeManager d;
  private w e;
  private com.viber.voip.messages.adapters.a.b.a f;
  private bb g;
  private h h;
  private long i;
  
  public k(Context paramContext, i parami, MessagesFragmentModeManager paramMessagesFragmentModeManager, boolean paramBoolean)
  {
    this.c = paramContext;
    this.b = parami;
    this.d = paramMessagesFragmentModeManager;
    this.h = new h(this.c);
    this.g = new bb(this.c);
    this.a = LayoutInflater.from(this.c);
    this.e = w.a(this.c);
    this.f = new com.viber.voip.messages.adapters.a.b.a(this.c, this.d, paramBoolean);
  }
  
  private int a(ConversationLoaderEntity paramConversationLoaderEntity)
  {
    if ((paramConversationLoaderEntity != null) && (paramConversationLoaderEntity.s())) {
      return 1;
    }
    return 0;
  }
  
  public com.viber.voip.messages.adapters.a.a a(int paramInt)
  {
    boolean bool1 = true;
    ConversationLoaderEntity localConversationLoaderEntity = this.b.e(paramInt);
    if (localConversationLoaderEntity != null)
    {
      boolean bool2;
      if ((this.d != null) && (this.d.b(Long.valueOf(localConversationLoaderEntity.a()))))
      {
        bool2 = bool1;
        if (localConversationLoaderEntity.a() != this.i) {
          break label72;
        }
      }
      for (;;)
      {
        return new a(localConversationLoaderEntity, bool2, bool1);
        bool2 = false;
        break;
        label72:
        bool1 = false;
      }
    }
    return null;
  }
  
  public void a(long paramLong)
  {
    this.i = paramLong;
  }
  
  public View b(int paramInt)
  {
    int j = 1;
    View localView;
    com.viber.voip.messages.adapters.a.b.a locala;
    h localh;
    bb localbb;
    w localw;
    if (paramInt == 0)
    {
      localView = this.a.inflate(2130903073, null);
      locala = this.f;
      localh = this.h;
      localbb = this.g;
      localw = this.e;
      if (paramInt != j) {
        break label83;
      }
    }
    for (;;)
    {
      localView.setTag(new b(localView, locala, localh, localbb, localw, j));
      return localView;
      localView = this.a.inflate(2130903072, null);
      break;
      label83:
      j = 0;
    }
  }
  
  public int getCount()
  {
    return this.b.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    return this.b.a_(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return a(this.b.e(paramInt));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.viber.voip.messages.adapters.a.a locala = a(paramInt);
    if ((paramView == null) || (paramView.getTag() == null)) {
      paramView = b(getItemViewType(paramInt));
    }
    b localb = (b)paramView.getTag();
    if (locala != null) {
      localb.a(locala, this.f);
    }
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.k
 * JD-Core Version:    0.7.0.1
 */