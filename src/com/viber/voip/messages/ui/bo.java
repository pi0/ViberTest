package com.viber.voip.messages.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.viber.voip.util.ca;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.LinkedList;

public abstract class bo<K>
  implements ActionMode.Callback
{
  private ActionMode a;
  private LinkedHashSet<K> b = new LinkedHashSet();
  
  protected abstract ActionMode a(ActionMode.Callback paramCallback);
  
  public void a(Context paramContext, String paramString, int paramInt)
  {
    Object localObject = this.a.getCustomView();
    LayoutInflater localLayoutInflater;
    if ((localObject == null) || (((Integer)this.a.getCustomView().getTag()).intValue() != 1))
    {
      localLayoutInflater = LayoutInflater.from(paramContext);
      if (!ca.a(paramString)) {
        break label115;
      }
    }
    label115:
    for (int i = 2130903058;; i = 2130903057)
    {
      View localView = localLayoutInflater.inflate(i, null);
      localView.setTag(Integer.valueOf(1));
      this.a.setCustomView(localView);
      localObject = localView;
      ((TextView)((View)localObject).findViewById(2131165357)).setText(paramString);
      ((TextView)((View)localObject).findViewById(2131165358)).setText(String.valueOf(paramInt));
      return;
    }
  }
  
  public void a(ActionMode paramActionMode)
  {
    this.a = paramActionMode;
  }
  
  public void a(K paramK)
  {
    this.b.add(paramK);
    d();
  }
  
  public void a(Collection<K> paramCollection)
  {
    this.b.addAll(paramCollection);
  }
  
  public void b(K paramK)
  {
    this.b.remove(paramK);
    d();
  }
  
  public void b(Collection<K> paramCollection)
  {
    this.b.addAll(paramCollection);
    d();
  }
  
  public boolean c(K paramK)
  {
    return this.b.contains(paramK);
  }
  
  protected abstract void d();
  
  public void d(K paramK)
  {
    if (paramK != null) {
      this.b.add(paramK);
    }
    this.a = a(this);
  }
  
  public LinkedList<K> f()
  {
    return new LinkedList(this.b);
  }
  
  public int g()
  {
    return this.b.size();
  }
  
  public ActionMode h()
  {
    return this.a;
  }
  
  public void i()
  {
    this.b.clear();
    d();
  }
  
  public void j()
  {
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bo
 * JD-Core Version:    0.7.0.1
 */