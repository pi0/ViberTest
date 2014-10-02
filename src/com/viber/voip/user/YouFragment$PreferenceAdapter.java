package com.viber.voip.user;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.util.gl;
import java.util.List;

class YouFragment$PreferenceAdapter
  extends ArrayAdapter<YouFragment.PreferenceItem>
{
  private boolean mIsLandscape;
  private int newPackageCount;
  
  public YouFragment$PreferenceAdapter(Context paramContext, int paramInt, List<YouFragment.PreferenceItem> paramList)
  {
    super(paramContext, 0, paramList);
    this.newPackageCount = paramInt;
    this.mIsLandscape = gl.e(paramContext);
  }
  
  public long getItemId(int paramInt)
  {
    return ((YouFragment.PreferenceItem)getItem(paramInt)).id;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = LayoutInflater.from(getContext()).inflate(2130903253, paramViewGroup, false);
    }
    YouFragment.PreferenceItem localPreferenceItem = (YouFragment.PreferenceItem)getItem(paramInt);
    ((ImageView)paramView.findViewById(2131165398)).setImageResource(localPreferenceItem.icon);
    ((TextView)paramView.findViewById(16908310)).setText(localPreferenceItem.title);
    if ((isDialog()) && (!this.mIsLandscape)) {
      paramView.setPadding(YouFragment.access$000(), 0, 0, 0);
    }
    TextView localTextView = (TextView)paramView.findViewById(2131165704);
    if (localTextView != null)
    {
      if ((localPreferenceItem.stickerItem) && (this.newPackageCount > 0))
      {
        localTextView.setVisibility(0);
        localTextView.setText(String.valueOf(this.newPackageCount));
      }
    }
    else {
      return paramView;
    }
    localTextView.setVisibility(8);
    return paramView;
  }
  
  protected boolean isDialog()
  {
    return getContext() instanceof YouDialogActivity;
  }
  
  public void setNewPackageCount(int paramInt)
  {
    this.newPackageCount = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.PreferenceAdapter
 * JD-Core Version:    0.7.0.1
 */