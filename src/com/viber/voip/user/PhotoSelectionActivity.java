package com.viber.voip.user;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.i;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;

public class PhotoSelectionActivity
  extends ViberFragmentActivity
{
  private static final int BACKDROP_FADEOUT_DURATION = 100;
  public static final String ENTITY_DELTA_LIST = "entity_delta_list";
  public static final String EXPAND_PHOTO = "expand_photo";
  public static final String IS_DIRECTORY_CONTACT = "is_directory_contact";
  public static final String IS_PROFILE = "is_profile";
  private static final String KEY_CURRENT_PHOTO_FILE = "currentphotofile";
  private static final String KEY_SUB_ACTIVITY_IN_PROGRESS = "subinprogress";
  private static final String LOG_TAG = PhotoSelectionActivity.class.getSimpleName();
  private static final int PHOTO_CONTRACT_DURATION = 50;
  private static final int PHOTO_EXPAND_DURATION = 100;
  public static final String PHOTO_URI = "photo_uri";
  private AnimatorListenerAdapter mAnimationListener;
  private boolean mAnimationPending;
  private View mBackdrop;
  private boolean mCloseActivityWhenCameBackFromSubActivity;
  private String mCurrentPhotoFile;
  private boolean mExpandPhoto;
  private int mExpandedPhotoSize;
  private x mFetcherConfig;
  private int mHeightOffset;
  private w mImageFetcher;
  private boolean mIsDirectoryContact;
  private boolean mIsProfile;
  protected i mMessagesManager;
  Rect mOriginalPos = new Rect();
  private PhotoSelectionActivity.PendingPhotoResult mPendingPhotoResult;
  private ObjectAnimator mPhotoAnimator;
  private ViewGroup.MarginLayoutParams mPhotoEndParams;
  private PhotoSelectionActivity.PhotoHandler mPhotoHandler;
  private ViewGroup.MarginLayoutParams mPhotoStartParams;
  private Uri mPhotoUri;
  private ImageView mPhotoView;
  private Rect mSourceBounds;
  private boolean mSubActivityInProgress;
  private TextView mTextViewOnPic;
  
  private void animateAwayBackground()
  {
    if (Build.VERSION.SDK_INT > 10)
    {
      ObjectAnimator.ofFloat(this.mBackdrop, "alpha", new float[] { 0.0F }).setDuration(100L).start();
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.5F, 0.0F);
    localAlphaAnimation.setDuration(100L);
    localAlphaAnimation.setFillAfter(true);
    this.mBackdrop.startAnimation(localAlphaAnimation);
  }
  
  private void animateInBackground()
  {
    if (Build.VERSION.SDK_INT > 10)
    {
      ObjectAnimator.ofFloat(this.mBackdrop, "alpha", new float[] { 0.0F, 0.5F }).setDuration(100L).start();
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 0.5F);
    localAlphaAnimation.setDuration(100L);
    localAlphaAnimation.setFillAfter(true);
    this.mBackdrop.startAnimation(localAlphaAnimation);
  }
  
  private void animatePhoto(FrameLayout.LayoutParams paramLayoutParams)
  {
    if (this.mPhotoAnimator != null) {
      this.mPhotoAnimator.cancel();
    }
    if (Build.VERSION.SDK_INT < 11)
    {
      this.mAnimationPending = false;
      int[] arrayOfInt1 = new int[2];
      arrayOfInt1[0] = this.mOriginalPos.left;
      arrayOfInt1[1] = paramLayoutParams.leftMargin;
      PropertyValuesHolder localPropertyValuesHolder1 = PropertyValuesHolder.ofInt("left", arrayOfInt1);
      int[] arrayOfInt2 = new int[2];
      arrayOfInt2[0] = this.mOriginalPos.top;
      arrayOfInt2[1] = paramLayoutParams.topMargin;
      PropertyValuesHolder localPropertyValuesHolder2 = PropertyValuesHolder.ofInt("top", arrayOfInt2);
      int[] arrayOfInt3 = new int[2];
      arrayOfInt3[0] = this.mOriginalPos.right;
      arrayOfInt3[1] = paramLayoutParams.rightMargin;
      PropertyValuesHolder localPropertyValuesHolder3 = PropertyValuesHolder.ofInt("right", arrayOfInt3);
      int[] arrayOfInt4 = new int[2];
      arrayOfInt4[0] = this.mOriginalPos.bottom;
      arrayOfInt4[1] = paramLayoutParams.bottomMargin;
      PropertyValuesHolder localPropertyValuesHolder4 = PropertyValuesHolder.ofInt("bottom", arrayOfInt4);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(new PhotoSelectionActivity.MarginObjectAnimator(this, this.mPhotoView), new PropertyValuesHolder[] { localPropertyValuesHolder1, localPropertyValuesHolder3, localPropertyValuesHolder4, localPropertyValuesHolder2 }).setDuration(100L);
      if (this.mAnimationListener != null) {
        localObjectAnimator.addListener(this.mAnimationListener);
      }
      localObjectAnimator.start();
      return;
    }
    this.mPhotoView.setLayoutParams(paramLayoutParams);
    this.mTextViewOnPic.setLayoutParams(paramLayoutParams);
    this.mAnimationPending = true;
    this.mPhotoView.requestLayout();
    this.mTextViewOnPic.requestLayout();
  }
  
  private void animatePhotoOpen()
  {
    this.mAnimationListener = new PhotoSelectionActivity.4(this);
    animatePhoto(new FrameLayout.LayoutParams(getPhotoEndParams()));
  }
  
  private void attachPhotoHandler()
  {
    if (this.mPhotoUri == null) {}
    for (int i = 4;; i = 14)
    {
      this.mPhotoHandler = new PhotoSelectionActivity.PhotoHandler(this, this, this.mPhotoView, i, null);
      if (this.mPendingPhotoResult == null) {
        break;
      }
      this.mPhotoHandler.handlePhotoActivityResult(PhotoSelectionActivity.PendingPhotoResult.access$1000(this.mPendingPhotoResult), PhotoSelectionActivity.PendingPhotoResult.access$1100(this.mPendingPhotoResult), PhotoSelectionActivity.PendingPhotoResult.access$1200(this.mPendingPhotoResult));
      this.mPendingPhotoResult = null;
      return;
    }
    SchedulingUtils.doAfterLayout(this.mBackdrop, new PhotoSelectionActivity.6(this));
  }
  
  public static Intent buildIntent(Context paramContext, Uri paramUri, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Intent localIntent = new Intent(paramContext, PhotoSelectionActivity.class);
    if (paramUri != null) {
      localIntent.putExtra("photo_uri", paramUri);
    }
    localIntent.setSourceBounds(paramRect);
    localIntent.putExtra("is_profile", paramBoolean1);
    localIntent.putExtra("is_directory_contact", paramBoolean2);
    localIntent.putExtra("expand_photo", paramBoolean3);
    return localIntent;
  }
  
  private void closePhotoAndFinish()
  {
    this.mAnimationListener = new PhotoSelectionActivity.5(this);
    animatePhoto(new FrameLayout.LayoutParams(this.mPhotoStartParams));
    animateAwayBackground();
  }
  
  @SuppressLint({"NewApi"})
  private void displayPhoto()
  {
    int[] arrayOfInt = new int[2];
    this.mBackdrop.getLocationOnScreen(arrayOfInt);
    ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(this.mSourceBounds.width(), this.mSourceBounds.height());
    this.mOriginalPos.left = (this.mSourceBounds.left - arrayOfInt[0]);
    this.mOriginalPos.top = (this.mSourceBounds.top - arrayOfInt[1]);
    if (Build.VERSION.SDK_INT > 10)
    {
      this.mOriginalPos.right = (this.mOriginalPos.left + this.mSourceBounds.width());
      this.mOriginalPos.bottom = (this.mOriginalPos.top + this.mSourceBounds.height());
      localMarginLayoutParams.setMargins(this.mOriginalPos.left, this.mOriginalPos.top, this.mOriginalPos.right, this.mOriginalPos.bottom);
      this.mPhotoStartParams = localMarginLayoutParams;
      if (Build.VERSION.SDK_INT <= 10) {
        break label384;
      }
      this.mPhotoView.setLayoutParams(new FrameLayout.LayoutParams(localMarginLayoutParams));
      this.mTextViewOnPic.setLayoutParams(new FrameLayout.LayoutParams(localMarginLayoutParams));
      label197:
      this.mPhotoView.requestLayout();
      this.mTextViewOnPic.requestLayout();
      if (this.mPhotoUri == null) {
        break label417;
      }
      this.mImageFetcher.a(null, this.mPhotoUri, this.mPhotoView, this.mFetcherConfig);
      this.mTextViewOnPic.setVisibility(4);
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT > 10) {
        this.mPhotoView.addOnLayoutChangeListener(new PhotoSelectionActivity.3(this));
      }
      attachPhotoHandler();
      return;
      this.mOriginalPos.bottom = (this.mSourceBounds.width() - this.mSourceBounds.height());
      if (this.mOriginalPos.bottom == 0) {
        this.mOriginalPos.bottom = this.mOriginalPos.top;
      }
      Rect localRect = this.mOriginalPos;
      if (this.mOriginalPos.bottom == this.mOriginalPos.top) {}
      for (int i = 2 * this.mOriginalPos.bottom + this.mOriginalPos.left;; i = 0)
      {
        localRect.right = i;
        break;
      }
      label384:
      this.mPhotoView.setLayoutParams(new RelativeLayout.LayoutParams(localMarginLayoutParams));
      this.mTextViewOnPic.setLayoutParams(new RelativeLayout.LayoutParams(localMarginLayoutParams));
      break label197;
      label417:
      if (Build.VERSION.SDK_INT > 10)
      {
        this.mPhotoView.setImageResource(2130837615);
        this.mTextViewOnPic.setVisibility(0);
      }
    }
  }
  
  private void finishImmediatelyWithNoAnimation()
  {
    super.finish();
  }
  
  private int getAdditionalLeftMargin()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    if ((ViberApplication.isTablet()) && (gl.e(localViberApplication)))
    {
      Resources localResources = localViberApplication.getResources();
      return (int)((localResources.getDisplayMetrics().widthPixels - gl.h()) * gl.a(localResources));
    }
    return 0;
  }
  
  private int getAdjustedExpandedPhotoSize(View paramView, int paramInt)
  {
    Rect localRect = new Rect();
    paramView.getDrawingRect(localRect);
    int i = localRect.width();
    float f = Math.min((localRect.height() - paramInt) / this.mExpandedPhotoSize, i / this.mExpandedPhotoSize);
    if (f < 1.0F) {
      return (int)(f * this.mExpandedPhotoSize);
    }
    return this.mExpandedPhotoSize;
  }
  
  private ViewGroup.MarginLayoutParams getPhotoEndParams()
  {
    int i;
    ViewGroup.MarginLayoutParams localMarginLayoutParams;
    if (this.mPhotoEndParams == null)
    {
      this.mPhotoEndParams = new ViewGroup.MarginLayoutParams(this.mPhotoStartParams);
      if (!this.mIsProfile) {
        break label175;
      }
      i = getResources().getDimensionPixelOffset(2131362370);
      if (this.mExpandPhoto)
      {
        int j = getAdjustedExpandedPhotoSize(this.mBackdrop, this.mHeightOffset);
        int k = j - this.mPhotoStartParams.width;
        int m = j - this.mPhotoStartParams.height;
        if (k >= 1)
        {
          this.mPhotoEndParams.width = j;
          this.mPhotoEndParams.leftMargin = (i + getAdditionalLeftMargin());
          this.mPhotoEndParams.rightMargin = 0;
        }
        if (m >= 1)
        {
          this.mPhotoEndParams.height = j;
          if (!this.mIsProfile) {
            i += h.b(this);
          }
          localMarginLayoutParams = this.mPhotoEndParams;
          if (!gl.e(this)) {
            break label189;
          }
        }
      }
    }
    for (;;)
    {
      localMarginLayoutParams.topMargin = i;
      this.mPhotoEndParams.bottomMargin = 0;
      return this.mPhotoEndParams;
      label175:
      i = getResources().getDimensionPixelOffset(2131362369);
      break;
      label189:
      i = 0;
    }
  }
  
  public void finish()
  {
    if (!this.mSubActivityInProgress)
    {
      closePhotoAndFinish();
      return;
    }
    finishImmediatelyWithNoAnimation();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    ViberApplication.log(3, LOG_TAG, "onActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2 + ",this:" + this);
    if (this.mPhotoHandler != null)
    {
      this.mSubActivityInProgress = false;
      if (this.mPhotoHandler.handlePhotoActivityResult(paramInt1, paramInt2, paramIntent))
      {
        this.mPendingPhotoResult = null;
        return;
      }
      if (this.mCloseActivityWhenCameBackFromSubActivity)
      {
        finishImmediatelyWithNoAnimation();
        return;
      }
      this.mPhotoHandler.onClick(this.mPhotoView);
      return;
    }
    this.mPendingPhotoResult = new PhotoSelectionActivity.PendingPhotoResult(paramInt1, paramInt2, paramIntent, null);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (!this.mSubActivityInProgress)
    {
      finishImmediatelyWithNoAnimation();
      return;
    }
    this.mCloseActivityWhenCameBackFromSubActivity = true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903295);
    if (paramBundle != null)
    {
      this.mCurrentPhotoFile = paramBundle.getString("currentphotofile");
      this.mSubActivityInProgress = paramBundle.getBoolean("subinprogress");
    }
    Intent localIntent = getIntent();
    this.mPhotoUri = ((Uri)localIntent.getParcelableExtra("photo_uri"));
    this.mIsProfile = localIntent.getBooleanExtra("is_profile", false);
    this.mIsDirectoryContact = localIntent.getBooleanExtra("is_directory_contact", false);
    this.mExpandPhoto = localIntent.getBooleanExtra("expand_photo", false);
    this.mExpandedPhotoSize = getResources().getDimensionPixelSize(2131362058);
    this.mHeightOffset = getResources().getDimensionPixelOffset(2131362059);
    this.mBackdrop = findViewById(2131166047);
    this.mPhotoView = ((ImageView)findViewById(2131165458));
    this.mTextViewOnPic = ((TextView)findViewById(2131165457));
    this.mSourceBounds = localIntent.getSourceBounds();
    this.mMessagesManager = ViberApplication.getInstance().getMessagesManager();
    this.mImageFetcher = w.a(this);
    this.mFetcherConfig = x.c(this).b().a().b();
    animateInBackground();
    this.mBackdrop.setOnClickListener(new PhotoSelectionActivity.1(this));
    SchedulingUtils.doAfterLayout(this.mBackdrop, new PhotoSelectionActivity.2(this));
    ViberApplication.log(3, LOG_TAG, "mPhotoUri:" + this.mPhotoUri + ",mExpandedPhotoSize:" + this.mExpandedPhotoSize);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.mPhotoAnimator != null)
    {
      this.mPhotoAnimator.cancel();
      this.mPhotoAnimator = null;
    }
    if (this.mPhotoHandler != null)
    {
      this.mPhotoHandler.destroy();
      this.mPhotoHandler = null;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("currentphotofile", this.mCurrentPhotoFile);
    paramBundle.putBoolean("subinprogress", this.mSubActivityInProgress);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionActivity
 * JD-Core Version:    0.7.0.1
 */