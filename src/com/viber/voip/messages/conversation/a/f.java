package com.viber.voip.messages.conversation.a;

import android.view.LayoutInflater;
import android.view.View;
import com.viber.voip.messages.conversation.a.a.a.j;
import com.viber.voip.messages.conversation.a.a.a.n;
import com.viber.voip.messages.conversation.a.a.a.o;
import com.viber.voip.messages.conversation.a.a.a.q;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.cq;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.stickers.b;

public class f
  extends a
  implements c
{
  private static final String a = f.class.getSimpleName();
  private final ConversationFragment b;
  private final cq c;
  private final com.viber.voip.messages.h d;
  private final b e;
  private final bb f;
  private final s g;
  private final r h;
  private final s i;
  
  public f(LayoutInflater paramLayoutInflater, ConversationFragment paramConversationFragment, cq paramcq, com.viber.voip.messages.h paramh, b paramb, bb parambb, s params1, r paramr, s params2)
  {
    super(paramLayoutInflater);
    this.b = paramConversationFragment;
    this.c = paramcq;
    this.d = paramh;
    this.e = paramb;
    this.f = parambb;
    this.g = params1;
    this.h = paramr;
    this.i = params2;
    a(0, 2130903268, this);
    a(1, 2130903266, this);
    a(3, 2130903266, this);
    a(2, 2130903267, this);
    a(4, 2130903267, this);
    a(5, 2130903272, this);
    a(6, 2130903273, this);
    a(7, 2130903258, this);
    a(8, 2130903266, this);
    a(9, 2130903266, this);
    a(10, 2130903267, this);
  }
  
  public View a(int paramInt)
  {
    System.currentTimeMillis();
    return b(paramInt).a();
  }
  
  public Object a(View paramView, int paramInt)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("INVALID VIEW TYPE: " + paramInt);
    case 0: 
      return new n(paramView, this.d, this.h, this.c);
    case 1: 
    case 3: 
    case 8: 
    case 9: 
      ConversationFragment localConversationFragment2 = this.b;
      if (4 == paramInt) {}
      for (;;)
      {
        return new com.viber.voip.messages.conversation.a.a.a.h(paramView, localConversationFragment2, bool, this.f, this.h, this.i, this.g, this.c);
        bool = false;
      }
    case 2: 
    case 4: 
    case 10: 
      ConversationFragment localConversationFragment1 = this.b;
      if (4 == paramInt) {}
      for (;;)
      {
        return new o(paramView, localConversationFragment1, bool, this.f, this.h, this.i, this.g, this.c);
        bool = false;
      }
    case 5: 
      return new j(paramView, this.b, this.h, this.i, this.g, this.c, this.e);
    case 6: 
      return new q(paramView, this.b, this.h, this.i, this.g, this.c, this.e);
    }
    return new com.viber.voip.messages.conversation.a.a.a.f(paramView, this.b, this.h, this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.f
 * JD-Core Version:    0.7.0.1
 */