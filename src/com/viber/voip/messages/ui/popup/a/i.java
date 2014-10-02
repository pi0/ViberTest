package com.viber.voip.messages.ui.popup.a;

import android.app.Activity;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class i
  extends l
{
  private SparseArray<Integer> a = new SparseArray();
  private SparseArray<Integer> b = new SparseArray();
  private List<String> c = new ArrayList();
  private Map<Integer, View> d = new HashMap();
  
  public i(Activity paramActivity, ai paramai)
  {
    super(paramActivity, paramai, false);
  }
  
  public int a(int paramInt)
  {
    if (this.a.size() > paramInt) {
      return ((Integer)this.a.get(paramInt)).intValue();
    }
    return -1;
  }
  
  public SparseArray<Integer> a()
  {
    return this.a;
  }
  
  public View a(View paramView, int paramInt)
  {
    View localView = LayoutInflater.from(g()).inflate(2130903226, null);
    b(localView, paramInt);
    return localView;
  }
  
  public abstract String a(int paramInt, an paraman);
  
  public void a(int paramInt, boolean paramBoolean)
  {
    int i = ((Integer)a().get(paramInt)).intValue();
    if (e().get(Integer.valueOf(i)) != null) {
      ((View)e().get(Integer.valueOf(i))).setVisibility(0);
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if ((this.a.size() > paramInt1) && (this.a.size() > paramInt2)) {
      return ((Integer)this.a.get(paramInt1)).equals(this.a.get(paramInt2));
    }
    return false;
  }
  
  public int b(int paramInt)
  {
    if (this.a == null) {}
    while (this.a.get(paramInt) == null) {
      return -1;
    }
    return ((Integer)this.a.get(paramInt)).intValue();
  }
  
  public abstract void b(View paramView, int paramInt);
  
  public boolean b()
  {
    d().clear();
    a().clear();
    e().clear();
    int i = 0;
    String str1;
    if (i < f().getCount())
    {
      str1 = a(i, f().e(i));
      if (str1 != null) {
        break label171;
      }
    }
    label171:
    for (String str2 = "";; str2 = str1)
    {
      if ((this.c.size() == 0) || (!((String)this.c.get(-1 + this.c.size())).equals(str2))) {
        this.c.add(str2);
      }
      int j = -1 + this.c.size();
      this.a.put(i, Integer.valueOf(j));
      if (this.b.get(j) == null) {
        this.b.put(j, Integer.valueOf(i));
      }
      i++;
      break;
      return true;
    }
  }
  
  public int c()
  {
    return this.c.size();
  }
  
  public int c(int paramInt)
  {
    return ((Integer)this.b.get(paramInt)).intValue();
  }
  
  public List<String> d()
  {
    return this.c;
  }
  
  public Map<Integer, View> e()
  {
    return this.d;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.i
 * JD-Core Version:    0.7.0.1
 */