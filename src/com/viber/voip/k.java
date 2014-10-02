package com.viber.voip;

import android.accounts.Account;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class k
  extends BaseAdapter
{
  static final Pattern a = Pattern.compile("^.+@gmail.com$", 2);
  private final Account[] b;
  private final LayoutInflater c;
  
  public k(Account[] paramArrayOfAccount, Context paramContext)
  {
    this.b = paramArrayOfAccount;
    this.c = LayoutInflater.from(paramContext);
  }
  
  int a()
  {
    int i = 0;
    int j = this.b.length;
    int k = -1;
    while (i < j)
    {
      String str = this.b[i].name;
      if (a.matcher(str).matches())
      {
        if (k == -1) {
          k = i;
        }
      }
      else
      {
        i++;
        continue;
      }
      k = -1;
    }
    return k;
  }
  
  int a(String paramString)
  {
    int i = 0;
    int j = this.b.length;
    while (i < j)
    {
      if (this.b[i].name.equals(paramString)) {
        return i;
      }
      i++;
    }
    return -1;
  }
  
  public Account a(int paramInt)
  {
    return this.b[paramInt];
  }
  
  public int getCount()
  {
    return this.b.length;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (TextView localTextView = (TextView)this.c.inflate(17367049, paramViewGroup, false);; localTextView = (TextView)paramView)
    {
      localTextView.setText(a(paramInt).name);
      return localTextView;
    }
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (TextView localTextView = (TextView)this.c.inflate(17367048, paramViewGroup, false);; localTextView = (TextView)paramView)
    {
      localTextView.setText(a(paramInt).name);
      return localTextView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.k
 * JD-Core Version:    0.7.0.1
 */