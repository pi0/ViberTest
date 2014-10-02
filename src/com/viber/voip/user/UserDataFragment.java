package com.viber.voip.user;

import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.w;
import com.viber.voip.d;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;
import com.viber.voip.registration.ActivationController;

public class UserDataFragment
  extends UserDataBaseFragment
  implements TextWatcher, View.OnClickListener, d
{
  private static final int DIALOG_SKIP = 10;
  private static final String LOG_TAG = UserDataFragment.class.getSimpleName();
  private static String cachedName;
  private static Uri cachedUri;
  private String displayName;
  private boolean mIsSkip = true;
  private UserDataFragment.UserDataActivityWrapper wrapper;
  
  private void checkChanges()
  {
    if (getImageUri() != null)
    {
      if (UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper).setVisibility(8);
      }
      if (UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper).setVisibility(8);
      }
      UserDataFragment.UserDataActivityWrapper.access$1300(this.wrapper).setVisibility(4);
      if (UserDataFragment.UserDataActivityWrapper.access$1000(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$1000(this.wrapper).setVisibility(0);
      }
      UserDataFragment.UserDataActivityWrapper.access$900(this.wrapper).setOnClickListener(this);
    }
    for (;;)
    {
      Uri localUri = getImageUri();
      boolean bool1 = false;
      if (localUri == null)
      {
        boolean bool2 = TextUtils.isEmpty(this.displayName);
        bool1 = false;
        if (bool2) {
          bool1 = true;
        }
      }
      this.mIsSkip = bool1;
      return;
      if (UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper).setVisibility(0);
      }
      if (UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper).setVisibility(0);
      }
      UserDataFragment.UserDataActivityWrapper.access$1300(this.wrapper).setVisibility(0);
      if (UserDataFragment.UserDataActivityWrapper.access$1000(this.wrapper) != null) {
        UserDataFragment.UserDataActivityWrapper.access$1000(this.wrapper).setVisibility(4);
      }
      if (UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper) == null) {
        UserDataFragment.UserDataActivityWrapper.access$900(this.wrapper).setOnClickListener(this);
      }
    }
  }
  
  private void createWrapper(View paramView)
  {
    this.wrapper = new UserDataFragment.UserDataActivityWrapper(this, paramView);
    UserDataFragment.UserDataActivityWrapper.access$100(this.wrapper).setOnClickListener(this);
    UserDataFragment.UserDataActivityWrapper.access$200(this.wrapper).setOnClickListener(this);
    if (UserDataFragment.UserDataActivityWrapper.access$300(this.wrapper) != null) {
      UserDataFragment.UserDataActivityWrapper.access$300(this.wrapper).setOnClickListener(this);
    }
    for (;;)
    {
      UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper).setOnClickListener(this);
      UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper).setVisibility(8);
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).addTextChangedListener(this);
      setImageView(UserDataFragment.UserDataActivityWrapper.access$900(this.wrapper));
      return;
      UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper).setOnClickListener(this);
      UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper).setOnClickListener(this);
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).setOnFocusChangeListener(new UserDataFragment.1(this));
    }
  }
  
  private void hideKeyBoard()
  {
    ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).getWindowToken(), 0);
  }
  
  private void initScreen()
  {
    restoreFields();
  }
  
  private void onFacebookDetailsButtonClicked()
  {
    loadFacebookDetails(new UserDataFragment.2(this));
  }
  
  private void restoreFields()
  {
    if (!TextUtils.isEmpty(cachedName))
    {
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).setText(cachedName);
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).setSelected(true);
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).setSelection(cachedName.length());
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).requestFocus();
    }
    setImageUri(cachedUri);
    checkChanges();
    if (isCropingImage()) {
      hideKeyBoard();
    }
  }
  
  private void setDisplayName(String paramString)
  {
    cachedName = paramString;
    this.displayName = paramString.trim();
    checkChanges();
  }
  
  private void showKeyBoard()
  {
    ((InputMethodManager)getActivity().getSystemService("input_method")).toggleSoftInput(2, 0);
  }
  
  private void skip()
  {
    bc.a().a(a.e.b("Non"));
    ViberApplication.getInstance().getActivationController().setStep(8, true);
    UserData.clear();
    cachedName = null;
    cachedUri = null;
  }
  
  private void updateClearButton()
  {
    int i;
    ImageView localImageView;
    int j;
    if (!TextUtils.isEmpty(UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).getText()))
    {
      i = 1;
      localImageView = UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper);
      j = 0;
      if (i == 0) {
        break label43;
      }
    }
    for (;;)
    {
      localImageView.setVisibility(j);
      return;
      i = 0;
      break;
      label43:
      j = 8;
    }
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public boolean onActivityBackPressed()
  {
    skip();
    return true;
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean onActivitySearchRequested()
  {
    return false;
  }
  
  public void onClick(View paramView)
  {
    if (paramView == UserDataFragment.UserDataActivityWrapper.access$300(this.wrapper)) {
      if (externalStorageMounted(true))
      {
        if (getImageUri() == null) {
          break label32;
        }
        showDialog(1);
      }
    }
    label32:
    do
    {
      do
      {
        do
        {
          return;
          showDialog(0);
          return;
          if (paramView == UserDataFragment.UserDataActivityWrapper.access$100(this.wrapper))
          {
            if (!this.mIsSkip) {
              if ((cachedUri != null) && (!TextUtils.isEmpty(cachedName)) && (externalStorageMounted(true)))
              {
                bc.a().a(a.e.b("Both"));
                log("button save clicked. setting name and photo to user.");
                cachedName = null;
                cachedUri = null;
                this.mMessagesManager.e().a(this.displayName);
                this.mMessagesManager.e().a(getImageUri());
                ViberApplication.getInstance().getActivationController().setStep(8, true);
              }
            }
            for (;;)
            {
              getActivity().finish();
              return;
              if ((cachedUri != null) && (TextUtils.isEmpty(cachedName)) && (externalStorageMounted(true)))
              {
                bc.a().a(a.e.b("Only photo"));
                log("button save clicked. setting photo to user.");
                cachedName = null;
                cachedUri = null;
                this.mMessagesManager.e().a(getImageUri());
                break;
              }
              if ((cachedUri != null) || (TextUtils.isEmpty(cachedName))) {
                break;
              }
              bc.a().a(a.e.b("Only name"));
              log("button save clicked. setting name to user.");
              cachedName = null;
              cachedUri = null;
              this.mMessagesManager.e().a(this.displayName);
              break;
              skip();
            }
          }
          if (paramView == UserDataFragment.UserDataActivityWrapper.access$200(this.wrapper))
          {
            onFacebookDetailsButtonClicked();
            return;
          }
          if (paramView != UserDataFragment.UserDataActivityWrapper.access$500(this.wrapper)) {
            break;
          }
        } while ((!getActivity().getPackageManager().hasSystemFeature("android.hardware.camera")) && (!getActivity().getPackageManager().hasSystemFeature("android.hardware.camera.front")));
        imageAction(0);
        return;
        if (paramView == UserDataFragment.UserDataActivityWrapper.access$400(this.wrapper))
        {
          imageAction(1);
          return;
        }
        if (paramView != UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper)) {
          break;
        }
      } while (TextUtils.isEmpty(UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).getText()));
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).setText("");
      UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).requestFocus();
      return;
      if (paramView == UserDataFragment.UserDataActivityWrapper.access$900(this.wrapper))
      {
        showDialog(1);
        return;
      }
    } while (paramView != UserDataFragment.UserDataActivityWrapper.access$1000(this.wrapper));
    onClick(UserDataFragment.UserDataActivityWrapper.access$100(this.wrapper));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    bc.a().a(a.e.a());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903346, null);
    createWrapper(localView);
    UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).clearFocus();
    return localView;
  }
  
  protected void onImageUpdate()
  {
    this.isRotationEnabled = true;
    cachedUri = getImageUri();
    setImageUri(getImageUri());
    checkChanges();
    initScreen();
  }
  
  public void onPause()
  {
    hideKeyBoard();
    super.onPause();
  }
  
  public void onResume()
  {
    this.isRotationEnabled = true;
    restoreFields();
    super.onResume();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public void onStop()
  {
    hideKeyBoard();
    super.onStop();
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    setDisplayName(paramCharSequence.toString());
    ImageView localImageView;
    if (UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper) != null)
    {
      updateClearButton();
      localImageView = UserDataFragment.UserDataActivityWrapper.access$800(this.wrapper);
      if (UserDataFragment.UserDataActivityWrapper.access$000(this.wrapper).getText().length() == 0) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      localImageView.setEnabled(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataFragment
 * JD-Core Version:    0.7.0.1
 */