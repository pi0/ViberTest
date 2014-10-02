package com.viber.voip.messages.ui.media;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

public class be
  extends Fragment
{
  protected void a(int paramInt)
  {
    getArguments().putInt("status", paramInt);
  }
  
  protected boolean e()
  {
    int i = getArguments().getInt("status");
    return (i == 0) || (i == 5);
  }
  
  protected String f()
  {
    int i = getArguments().getInt("status");
    int j = 2131493772;
    switch (i)
    {
    }
    for (;;)
    {
      return getActivity().getString(j);
      j = 2131493794;
      continue;
      j = 2131493953;
      continue;
      j = 2131493984;
      continue;
      j = 2131493974;
      continue;
      j = 2131493787;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.be
 * JD-Core Version:    0.7.0.1
 */