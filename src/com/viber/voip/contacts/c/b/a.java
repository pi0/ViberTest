package com.viber.voip.contacts.c.b;

import android.content.Context;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.voip.ViberApplication;
import com.viber.voip.block.i;
import com.viber.voip.contacts.c.c.a.g;
import com.viber.voip.settings.l;
import java.util.Set;

public class a
  extends d
  implements ConnectionDelegate
{
  private static final String a = a.class.getSimpleName();
  private PhoneControllerWrapper b;
  private com.viber.voip.contacts.c.e.a c;
  private g d;
  private int e;
  private com.viber.voip.contacts.c.c.d f = new b(this);
  private PhoneControllerWrapper.InitializedListener g = new c(this);
  
  public a(Context paramContext)
  {
    this.c = new com.viber.voip.contacts.c.e.a(paramContext);
    this.d = new g();
    this.d.a(this.f);
  }
  
  private void a()
  {
    Set localSet = this.c.a();
    i.a(localSet);
    this.e = this.b.generateSequence();
    boolean bool = b();
    this.b.handleBlockList((String[])localSet.toArray(new String[0]), this.e, bool);
  }
  
  private void a(boolean paramBoolean)
  {
    ViberApplication.preferences().a("pref_block_list_dirty_bit", paramBoolean);
  }
  
  private boolean b()
  {
    return ViberApplication.preferences().b("pref_block_list_dirty_bit", true);
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    this.b = paramPhoneControllerWrapper;
    this.b.addInitializedListener(this.g);
  }
  
  public void onBlockListReply(int paramInt)
  {
    if (this.e == paramInt) {
      a(false);
    }
  }
  
  public void onConnect() {}
  
  public void onConnectionStateChange(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.a
 * JD-Core Version:    0.7.0.1
 */