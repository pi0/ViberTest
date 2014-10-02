package com.viber.voip.messages.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.messages.adapters.a.a.a;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.messages.conversation.publicgroup.ar;
import com.viber.voip.messages.h;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.util.b.w;

public class p
  extends BaseAdapter
{
  private LayoutInflater a;
  private ar b;
  private w c;
  private com.viber.voip.messages.adapters.a.b.b d;
  private bb e;
  private h f;
  private long g;
  private MessagesFragmentModeManager h;
  
  public p(Context paramContext, MessagesFragmentModeManager paramMessagesFragmentModeManager, ar paramar, boolean paramBoolean)
  {
    this.b = paramar;
    this.f = new h(paramContext);
    this.e = new bb(paramContext);
    this.a = LayoutInflater.from(paramContext);
    this.c = w.a(paramContext);
    this.d = new com.viber.voip.messages.adapters.a.b.b(paramContext, paramMessagesFragmentModeManager);
    this.h = paramMessagesFragmentModeManager;
  }
  
  public View a()
  {
    View localView = this.a.inflate(2130903074, null);
    localView.setTag(new a(localView, this.d, this.f, this.e, this.c));
    return localView;
  }
  
  public com.viber.voip.messages.adapters.a.b a(int paramInt)
  {
    boolean bool1 = true;
    ConversationLoaderPublicGroupEntity localConversationLoaderPublicGroupEntity = (ConversationLoaderPublicGroupEntity)this.b.e(paramInt);
    if (localConversationLoaderPublicGroupEntity == null) {
      throw new IllegalArgumentException("ConversationExtraLoaderEntity can't be null!");
    }
    boolean bool2;
    if ((this.h != null) && (this.h.b(Long.valueOf(localConversationLoaderPublicGroupEntity.a()))))
    {
      bool2 = bool1;
      if (localConversationLoaderPublicGroupEntity.a() != this.g) {
        break label85;
      }
    }
    for (;;)
    {
      return new b(localConversationLoaderPublicGroupEntity, bool2, bool1);
      bool2 = false;
      break;
      label85:
      bool1 = false;
    }
  }
  
  public void a(long paramLong)
  {
    this.g = paramLong;
  }
  
  public int getCount()
  {
    return this.b.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    return this.b.a_(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.viber.voip.messages.adapters.a.b localb = a(paramInt);
    if ((paramView == null) || (paramView.getTag() == null)) {
      paramView = a();
    }
    ((a)paramView.getTag()).a(localb, this.d);
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.p
 * JD-Core Version:    0.7.0.1
 */