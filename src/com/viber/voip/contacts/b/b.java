package com.viber.voip.contacts.b;

import android.content.Context;
import android.net.Uri;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.Collection;
import java.util.Set;
import java.util.TreeMap;

public abstract interface b
  extends e, Entity
{
  public abstract String a();
  
  public abstract void a(Context paramContext, c paramc);
  
  public abstract boolean a(int... paramVarArgs);
  
  public abstract Uri b();
  
  public abstract i b(String paramString);
  
  public abstract long c();
  
  public abstract boolean d();
  
  public abstract boolean e();
  
  public abstract long f();
  
  public abstract String g();
  
  public abstract long getId();
  
  public abstract Collection<i> h();
  
  public abstract i i();
  
  public abstract TreeMap<String, f> j();
  
  public abstract Uri k();
  
  public abstract Set<String> l();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b
 * JD-Core Version:    0.7.0.1
 */