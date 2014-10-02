package com.viber.voip.messages.adapters;

import android.net.Uri;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.util.hv;

public class b
  extends a
  implements com.viber.voip.messages.adapters.a.b
{
  private final ConversationLoaderPublicGroupEntity a;
  
  public b(ConversationLoaderPublicGroupEntity paramConversationLoaderPublicGroupEntity, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramConversationLoaderPublicGroupEntity, paramBoolean1, paramBoolean2);
    this.a = paramConversationLoaderPublicGroupEntity;
  }
  
  public boolean C()
  {
    return (3 == this.a.B()) || (4 == this.a.B());
  }
  
  public int D()
  {
    return this.a.B();
  }
  
  public int E()
  {
    return this.a.D();
  }
  
  public Uri F()
  {
    return hv.b(this.a.C());
  }
  
  public String G()
  {
    return this.a.E();
  }
  
  public boolean H()
  {
    return this.a.F();
  }
  
  public int I()
  {
    return this.a.G();
  }
  
  public int J()
  {
    return this.a.H();
  }
  
  public String K()
  {
    return this.a.I();
  }
  
  public String L()
  {
    return this.a.J();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.b
 * JD-Core Version:    0.7.0.1
 */