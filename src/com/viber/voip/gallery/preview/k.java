package com.viber.voip.gallery.preview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viber.voip.util.ao;

@SuppressLint({"ValidFragment"})
public class k
  extends Fragment
{
  ViewGroup a;
  int b;
  
  static int a(Context paramContext)
  {
    if (ao.b(paramContext)) {
      return -1;
    }
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }
  
  void a(int paramInt)
  {
    this.b = paramInt;
    ViewGroup localViewGroup = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.b);
    DoodleBaseActivity.a(localViewGroup, arrayOfObject);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    int i = this.a.getChildCount();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      View localView = this.a.getChildAt(j);
      if (!(localView instanceof ViewGroup)) {
        break label111;
      }
      for (int n = 0; n < ((ViewGroup)localView).getChildCount(); n++) {
        DoodleBaseActivity.a(((ViewGroup)localView).getChildAt(n), Integer.valueOf(DoodleBaseActivity.e()[k][n]));
      }
    }
    label111:
    for (int m = 1;; m = k)
    {
      j++;
      k = m;
      break;
      a(this.b);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = ((ViewGroup)paramLayoutInflater.inflate(2130903061, paramViewGroup, false));
    return this.a;
  }
  
  public void onDestroyView()
  {
    this.a = null;
    super.onDestroyView();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.k
 * JD-Core Version:    0.7.0.1
 */