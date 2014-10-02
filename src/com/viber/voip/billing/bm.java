package com.viber.voip.billing;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bm
{
  Map<bn, bq> a = new HashMap();
  Map<bn, bu> b = new HashMap();
  
  public bq a(bn parambn)
  {
    return (bq)this.a.get(parambn);
  }
  
  public List<bn> a()
  {
    return new ArrayList(this.b.keySet());
  }
  
  void a(bq parambq)
  {
    this.a.put(parambq.a(), parambq);
  }
  
  void a(bu parambu)
  {
    this.b.put(parambu.d(), parambu);
  }
  
  public bu b(bn parambn)
  {
    return (bu)this.b.get(parambn);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bm
 * JD-Core Version:    0.7.0.1
 */