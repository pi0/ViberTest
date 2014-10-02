package com.viber.voip.user;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

class UserDataFragment$UserDataActivityWrapper
{
  private final Button buttonSave;
  private final TextView buttonUseFacebookDetails;
  private final ImageView cameraBtn;
  private final ImageView clearBtn;
  private View doneBtn;
  private final EditText editTextName;
  private final ImageView galleryBtn;
  private final ImageView imageViewPic;
  private final LinearLayout imageViewPicBg;
  private final TextView textViewOnPic;
  private final View userNameContainer;
  
  public UserDataFragment$UserDataActivityWrapper(UserDataFragment paramUserDataFragment, View paramView)
  {
    this.editTextName = ((EditText)paramView.findViewById(2131166161));
    this.buttonSave = ((Button)paramView.findViewById(2131166164));
    this.imageViewPicBg = ((LinearLayout)paramView.findViewById(2131166165));
    this.imageViewPic = ((ImageView)paramView.findViewById(2131166156));
    this.cameraBtn = ((ImageView)paramView.findViewById(2131166158));
    this.galleryBtn = ((ImageView)paramView.findViewById(2131166159));
    this.textViewOnPic = ((TextView)paramView.findViewById(2131165457));
    this.buttonUseFacebookDetails = ((TextView)paramView.findViewById(2131166163));
    this.buttonUseFacebookDetails.setVisibility(0);
    this.clearBtn = ((ImageView)paramView.findViewById(2131166162));
    this.userNameContainer = paramView.findViewById(2131166160);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataFragment.UserDataActivityWrapper
 * JD-Core Version:    0.7.0.1
 */