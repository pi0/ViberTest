package com.viber.voip.gallery.preview;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viber.voip.util.ao;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@SuppressLint({"ValidFragment"})
public class l
  extends Fragment
{
  ViewGroup a;
  int b;
  
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
    ArrayList localArrayList = new ArrayList(Arrays.asList(DoodleBaseActivity.d()));
    if (!ao.b(getActivity())) {
      Collections.reverse(localArrayList);
    }
    int i = 0;
    int j = this.a.getChildCount();
    while (i < j)
    {
      DoodleBaseActivity.a(this.a.getChildAt(i), localArrayList.get(i));
      i++;
    }
    a(this.b);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = ((ViewGroup)paramLayoutInflater.inflate(2130903062, paramViewGroup, false));
    return this.a;
  }
  
  public void onDestroyView()
  {
    this.a = null;
    super.onDestroyView();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.l
 * JD-Core Version:    0.7.0.1
 */