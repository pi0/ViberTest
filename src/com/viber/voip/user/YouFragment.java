package com.viber.voip.user;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ba;
import com.viber.voip.a.bc;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.i;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.ui.q;
import com.viber.voip.util.ao;
import com.viber.voip.util.ft;
import com.viber.voip.util.gl;
import com.viber.voip.util.gu;
import com.viber.voip.util.gx;
import com.viber.voip.util.ha;
import com.viber.voip.viberout.ui.ViberOutActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class YouFragment
  extends q
{
  public static final int EDIT_NAME_DIALOG = 10;
  static final int EXIT_VIBER_DIALOG = 11;
  private static int LEFT_PADDING_PX = h.a(16.0F);
  private static String LOG_TAG = "YouFragment";
  private static final int REQUEST_CODE_CROP_PHOTO = 1232;
  static final int UPDATE_DETAILS_DIALOG = 12;
  private YouHeaderLayout headerLayout;
  private YouFragment.Callbacks mCallbacks;
  private boolean mIsLandscape;
  private LoadFacebookDetailsTask mLoadFacebookDetailsTask;
  private com.a.a.a.a mMergeAdapter;
  protected i mMessagesManager;
  private final UserDetailPhotoSetter mPhotoSetter = new UserDetailPhotoSetter();
  private YouFragment.PreferenceAdapter mPreferenceAdapter;
  private List<YouFragment.PreferenceItem> mPreferenceItems;
  private int settingsItemPosition = -1;
  private dh userChangeListener = new YouFragment.1(this);
  private YouHeaderLayout.HeaderViewCache viewCache;
  
  private View.OnClickListener createOnHeaderClickListener(Uri paramUri)
  {
    UserDetailPhotoSetter localUserDetailPhotoSetter = this.mPhotoSetter;
    FragmentActivity localFragmentActivity = getActivity();
    boolean bool1;
    ImageView localImageView;
    if ((!isDialog()) && (ViberApplication.isTablet()))
    {
      bool1 = true;
      localImageView = this.viewCache.photoView;
      if (paramUri == null) {
        break label80;
      }
    }
    label80:
    for (View localView = this.viewCache.photoLayoutView;; localView = null)
    {
      boolean bool2 = false;
      if (paramUri != null) {
        bool2 = true;
      }
      return localUserDetailPhotoSetter.setupContactPhotoForClick(localFragmentActivity, null, bool1, localImageView, localView, paramUri, bool2);
      bool1 = false;
      break;
    }
  }
  
  private boolean isDialog()
  {
    return getActivity() instanceof YouDialogActivity;
  }
  
  private void loadFacebookDetais(FacebookDetailsListener paramFacebookDetailsListener, s params)
  {
    if (ft.c(getActivity()))
    {
      this.mLoadFacebookDetailsTask = new LoadFacebookDetailsTask(getActivity(), paramFacebookDetailsListener);
      this.mLoadFacebookDetailsTask.execute(new s[] { params });
    }
  }
  
  private void onFacebookDetailsLoaded(FacebookDetails paramFacebookDetails)
  {
    String str = paramFacebookDetails.getUserName();
    Uri localUri = h.a(paramFacebookDetails.getUserPhoto(), com.viber.voip.messages.extras.image.l.g);
    if (localUri != null) {
      this.mMessagesManager.e().a(localUri);
    }
    for (;;)
    {
      this.mMessagesManager.e().a(str);
      return;
      showToast(2131493960);
    }
  }
  
  private void openSettings(int paramInt)
  {
    this.settingsItemPosition = paramInt;
    if (ViberApplication.isTablet())
    {
      getListView().setChoiceMode(1);
      getListView().setItemChecked(this.settingsItemPosition, true);
    }
    this.mCallbacks.onYouItemSelected(new Intent("com.viber.voip.action.SETTINGS"));
  }
  
  private void setDialogLeftPadding(View paramView)
  {
    if ((isDialog()) && (!this.mIsLandscape)) {
      paramView.setPadding(LEFT_PADDING_PX, (int)(1.25D * LEFT_PADDING_PX), LEFT_PADDING_PX, 0);
    }
  }
  
  private void showViberOutPrefIfNeeded()
  {
    YouFragment.PreferenceItem localPreferenceItem = YouFragment.PreferenceItems.getItemById(2131165272);
    if (!com.viber.voip.viberout.e.c().b()) {
      if (this.mPreferenceItems.contains(localPreferenceItem))
      {
        this.mPreferenceItems.remove(localPreferenceItem);
        if (this.mPreferenceAdapter != null) {
          this.mPreferenceAdapter.notifyDataSetChanged();
        }
      }
    }
    do
    {
      do
      {
        return;
      } while (this.mPreferenceItems.contains(localPreferenceItem));
      this.mPreferenceItems.add(0, localPreferenceItem);
    } while (this.mPreferenceAdapter == null);
    this.mPreferenceAdapter.notifyDataSetChanged();
  }
  
  protected void loadFacebookDetails(FacebookDetailsListener paramFacebookDetailsListener)
  {
    s locals = ViberApplication.getInstance().getFacebookManager();
    ah localah = locals.b();
    if ((localah == ah.d) || (localah == ah.a))
    {
      locals.a(getActivity(), new YouFragment.5(this, paramFacebookDetailsListener, locals), false);
      return;
    }
    loadFacebookDetais(paramFacebookDetailsListener, locals);
  }
  
  protected void log(String paramString)
  {
    ViberApplication.log(3, LOG_TAG, paramString);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((ao.b(getActivity())) && ((isDialog()) || (!ViberApplication.isTablet()))) {
      getListView().setOnTouchListener(this.mPhotoSetter.getTouchListener());
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    log("handlePhotoActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2);
    ViberApplication.getInstance().getFacebookManager().a(getActivity(), paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      return;
    } while (paramIntent == null);
    Uri localUri = Uri.parse(paramIntent.getAction());
    log("Photo was cropped :" + localUri);
    this.mMessagesManager.e().a(localUri);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof YouFragment.Callbacks)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.mCallbacks = ((YouFragment.Callbacks)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    setHasOptionsMenu(true);
    bc.a().a(com.viber.voip.a.a.h.a());
    this.mPreferenceItems = new ArrayList(YouFragment.PreferenceItems.ALL);
    this.mPreferenceItems.remove(YouFragment.PreferenceItems.getItemById(2131165272));
    showViberOutPrefIfNeeded();
    this.mMessagesManager = ViberApplication.getInstance().getMessagesManager();
    Uri localUri = UserData.getImage();
    if ((localUri != null) && (!new File(localUri.getPath()).exists()))
    {
      ViberApplication.log("RECOVER USER PHOTO! photoUri = " + localUri);
      com.viber.voip.contacts.c.a.a(null);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755036, paramMenu);
    if (ViberApplication.getInstance().getResources().getBoolean(2131230733)) {
      paramMenu.findItem(2131166119).setShowAsAction(0);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903215, null);
    this.mIsLandscape = gl.e(getActivity());
    this.mMergeAdapter = new com.a.a.a.a();
    this.headerLayout = new YouHeaderLayout(getActivity());
    this.viewCache = this.headerLayout.getViewCache();
    this.headerLayout.initControls(localView1);
    this.headerLayout.setHeaderInfo(createOnHeaderClickListener(UserData.getImage()));
    this.mMergeAdapter.a(this.headerLayout);
    YouViberExperienceLayout localYouViberExperienceLayout;
    if (this.headerLayout.findViewById(16908310) != null)
    {
      ((TextView)this.headerLayout.findViewById(16908310)).setText(2131494609);
      localYouViberExperienceLayout = new YouViberExperienceLayout(getActivity());
      localYouViberExperienceLayout.setActivity(getActivity());
      localYouViberExperienceLayout.setSmsVisible(ViberApplication.getInstance().getHardwareParameters().isGsmSupported());
      if (this.headerLayout.findViewById(2131165473) == null) {
        break label426;
      }
      ((ViewGroup)this.headerLayout.findViewById(2131165473)).addView(localYouViberExperienceLayout);
    }
    for (;;)
    {
      View localView3 = paramLayoutInflater.inflate(2130903233, null);
      ((TextView)localView3.findViewById(16908310)).setText(2131494205);
      localView3.setPadding(getResources().getDimensionPixelSize(2131362361), getResources().getDimensionPixelSize(2131362362), getResources().getDimensionPixelSize(2131362363), 0);
      this.mMergeAdapter.a(localView3);
      this.mPreferenceAdapter = new YouFragment.PreferenceAdapter(getActivity(), getNewPackagesCount(), this.mPreferenceItems);
      this.mMergeAdapter.a(this.mPreferenceAdapter);
      setListAdapter(this.mMergeAdapter);
      com.viber.voip.messages.controller.c.e.a().a(this.userChangeListener);
      if (this.headerLayout.findViewById(2131165473) != null) {
        this.viewCache.usernameView.setOnClickListener(new YouFragment.2(this));
      }
      return localView1;
      View localView2 = paramLayoutInflater.inflate(2130903233, null);
      ((TextView)localView2.findViewById(16908310)).setText(2131494609);
      localView2.setPadding(getResources().getDimensionPixelSize(2131362361), getResources().getDimensionPixelSize(2131362362), getResources().getDimensionPixelSize(2131362363), 0);
      this.mMergeAdapter.a(localView2);
      break;
      label426:
      LinearLayout localLinearLayout = (LinearLayout)localYouViberExperienceLayout.findViewById(2131165465);
      localLinearLayout.setGravity(1);
      localLinearLayout.setPadding(getResources().getDimensionPixelSize(2131362361), getResources().getDimensionPixelSize(2131362362), getResources().getDimensionPixelSize(2131362363), 0);
      this.mMergeAdapter.a(localYouViberExperienceLayout);
    }
  }
  
  public void onDestroyView()
  {
    com.viber.voip.messages.controller.c.e.a().b(this.userChangeListener);
    super.onDestroyView();
  }
  
  public void onFacebookDetailsRequested()
  {
    loadFacebookDetails(new YouFragment.4(this));
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    switch ((int)paramLong)
    {
    case 2131165277: 
    default: 
      return;
    case 2131165272: 
      getActivity().startActivity(new Intent(ViberApplication.getInstance(), ViberOutActivity.class));
      return;
    case 2131165273: 
      com.viber.voip.rakuten.l.a().b(getActivity());
      return;
    case 2131165274: 
      MarketActivity.a();
      return;
    case 2131165275: 
      gu.a(getActivity());
      return;
    case 2131165276: 
      openSettings(paramInt);
      return;
    case 2131165278: 
      ha.a(getActivity());
      return;
    case 2131165279: 
      ActivationController.deActivate(getActivity(), false);
      return;
    case 2131165280: 
      showDialog(11);
      return;
    }
    ha.b(getActivity());
  }
  
  public void onNewStickerPackageCountChanged(int paramInt)
  {
    this.mPreferenceAdapter.setNewPackageCount(paramInt);
    this.mPreferenceAdapter.notifyDataSetChanged();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    if ((TextUtils.isEmpty(UserData.getViberName())) || (TextUtils.isEmpty(UserData.getViberImage()))) {
      showDialog(12);
    }
    for (;;)
    {
      return true;
      gx.a(getActivity());
    }
  }
  
  public void onResume()
  {
    super.onResume();
    showViberOutPrefIfNeeded();
  }
  
  public void openSettings()
  {
    if (getView() == null) {}
    for (;;)
    {
      return;
      int i = getListView().getCount();
      for (int j = 0; j < i; j++) {
        if (getListView().getItemIdAtPosition(j) == 2131165276L)
        {
          openSettings(j);
          return;
        }
      }
    }
  }
  
  public void showDialog(int paramInt)
  {
    String str = paramInt + "";
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(str);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    YouFragment.FragmentDialogs.newInstance(paramInt).show(localFragmentTransaction, str);
  }
  
  protected void showToast(int paramInt)
  {
    if (getActivity() != null) {
      Toast.makeText(getActivity(), paramInt, 1).show();
    }
  }
  
  public void updateSettingsItem(boolean paramBoolean)
  {
    if (getView() == null) {
      return;
    }
    if (paramBoolean)
    {
      getListView().setChoiceMode(1);
      getListView().setItemChecked(this.settingsItemPosition, true);
      return;
    }
    ListView localListView = getListView();
    localListView.clearChoices();
    int i = localListView.getChildCount();
    for (int j = 0; j < i; j++) {
      localListView.setItemChecked(j, false);
    }
    this.settingsItemPosition = -1;
    localListView.post(new YouFragment.3(this, localListView));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment
 * JD-Core Version:    0.7.0.1
 */