package com.viber.voip.user;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

public class YouHeaderLayout$HeaderViewCache
{
  public View photoLayoutView;
  public View photoOverlayView;
  public ImageView photoView;
  public TextView textViewOnPic;
  public final TextView usernameView;
  
  public YouHeaderLayout$HeaderViewCache(YouHeaderLayout paramYouHeaderLayout, View paramView)
  {
    this.photoView = ((ImageView)paramView.findViewById(2131165458));
    this.usernameView = ((TextView)paramView.findViewById(2131165471));
    this.photoOverlayView = paramView.findViewById(2131165459);
    this.photoLayoutView = paramView.findViewById(2131165435);
    this.textViewOnPic = ((TextView)paramView.findViewById(2131165457));
  }
  
  public void enablePhotoOverlay(View.OnClickListener paramOnClickListener)
  {
    if (this.photoOverlayView != null)
    {
      this.photoOverlayView.setOnClickListener(paramOnClickListener);
      this.photoOverlayView.setVisibility(0);
      return;
    }
    this.photoView.setOnClickListener(paramOnClickListener);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouHeaderLayout.HeaderViewCache
 * JD-Core Version:    0.7.0.1
 */