package com.viber.voip.messages.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import java.util.LinkedHashMap;
import java.util.Map;

public abstract class br<K, V>
  implements ActionMode.Callback
{
  protected ActionMode a;
  private LinkedHashMap<K, V> b = new LinkedHashMap();
  
  protected abstract ActionMode a(ActionMode.Callback paramCallback);
  
  public LinkedHashMap<K, V> a()
  {
    return new LinkedHashMap(this.b);
  }
  
  public void a(Context paramContext, String paramString, int paramInt)
  {
    if (this.a == null) {
      return;
    }
    Object localObject = this.a.getCustomView();
    if ((localObject == null) || (((Integer)this.a.getCustomView().getTag()).intValue() != 1))
    {
      View localView = LayoutInflater.from(paramContext).inflate(2130903057, null);
      localView.setTag(Integer.valueOf(1));
      this.a.setCustomView(localView);
      localObject = localView;
    }
    ((TextView)((View)localObject).findViewById(2131165357)).setText(paramString);
    ((TextView)((View)localObject).findViewById(2131165358)).setText(String.valueOf(paramInt));
  }
  
  public void a(ActionMode paramActionMode)
  {
    this.a = paramActionMode;
  }
  
  public void a(K paramK)
  {
    this.b.remove(paramK);
    f();
  }
  
  public void a(K paramK, V paramV)
  {
    this.b.put(paramK, paramV);
    f();
  }
  
  public void a(Map<K, V> paramMap)
  {
    this.b.putAll(paramMap);
  }
  
  public void a(Map<K, V> paramMap, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.b.clear();
    }
    this.b.putAll(paramMap);
    f();
  }
  
  public int b()
  {
    return this.b.size();
  }
  
  public void b(K paramK, V paramV)
  {
    if (paramK != null) {
      this.b.put(paramK, paramV);
    }
    this.a = a(this);
  }
  
  public void b(Map<K, V> paramMap)
  {
    a(paramMap, false);
  }
  
  public boolean b(K paramK)
  {
    return this.b.containsKey(paramK);
  }
  
  public void c()
  {
    this.b.clear();
    f();
  }
  
  public void d()
  {
    this.a = a(this);
  }
  
  public void e()
  {
    if (this.a != null) {
      this.a.finish();
    }
  }
  
  protected abstract void f();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.br
 * JD-Core Version:    0.7.0.1
 */