package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;

public class bd
  extends BaseAdapter
{
  private ap a;
  private Context b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public bd(Context paramContext, int paramInt, ap paramap)
  {
    this.b = paramContext;
    this.a = paramap;
    this.g = paramContext.getResources().getInteger(2131427351);
    this.c = paramContext.getResources().getDimensionPixelSize(2131362306);
    this.d = paramContext.getResources().getDimensionPixelSize(2131362305);
    this.h = paramInt;
    b();
  }
  
  private bc a()
  {
    return new bc(this.b, this.g);
  }
  
  private void b()
  {
    int i = this.a.getCount();
    this.f = (i / this.g);
    this.e = this.f;
    if (this.f * this.g < i) {
      this.e = (1 + this.e);
    }
  }
  
  public ar a(int paramInt)
  {
    return null;
  }
  
  public void b(int paramInt)
  {
    this.h = paramInt;
  }
  
  public int getCount()
  {
    return this.e;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    bc localbc;
    int i;
    if (paramView == null)
    {
      localbc = a();
      if (paramInt != 0) {
        break label81;
      }
      i = this.c;
      label20:
      if (paramInt != -1 + getCount()) {
        break label90;
      }
    }
    label81:
    label90:
    for (int j = this.c;; j = 0)
    {
      localbc.setPadding(i, localbc.getPaddingTop(), j, localbc.getPaddingBottom());
      localbc.a(paramInt, this.a, this.h);
      return localbc;
      localbc = (bc)paramView;
      break;
      i = this.d;
      break label20;
    }
  }
  
  public void notifyDataSetChanged()
  {
    b();
    super.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bd
 * JD-Core Version:    0.7.0.1
 */