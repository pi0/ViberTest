package com.viber.voip.messages.conversation.ui;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;

public class g
  extends DialogFragment
{
  private LayoutInflater a;
  private ListView b;
  private i c;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setStyle(1, 0);
    if (getArguments() == null) {}
    for (Parcelable[] arrayOfParcelable = null;; arrayOfParcelable = getArguments().getParcelableArray("extra_calls"))
    {
      MessageCallEntityImpl[] arrayOfMessageCallEntityImpl = (MessageCallEntityImpl[])arrayOfParcelable;
      if (arrayOfMessageCallEntityImpl == null) {
        dismiss();
      }
      this.c = new i(this, getActivity(), arrayOfMessageCallEntityImpl);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903089, null);
    this.a = paramLayoutInflater;
    this.b = ((ListView)localView.findViewById(2131165475));
    this.b.setAdapter(this.c);
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.g
 * JD-Core Version:    0.7.0.1
 */