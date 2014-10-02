package com.viber.voip.user;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.ImageView;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.w;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.fb.ad;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.i;
import com.viber.voip.registration.RegistrationActivity;
import com.viber.voip.ui.al;
import com.viber.voip.util.at;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import com.viber.voip.widget.MessageBar;
import java.util.ArrayList;
import java.util.List;

public abstract class UserDataBaseFragment
  extends al
{
  protected static final int CROP_FOR_CONTACT_REQ_CODE = 233;
  protected static final int DIALOG_MENU = 0;
  protected static final int DIALOG_MENU_ON_PIC = 1;
  protected static final int DIALOG_REMOVE = 2;
  private static final String LOG_TAG = UserDataBaseFragment.class.getSimpleName();
  protected static final int MENU_ITEM_REMOVE_PIC = 2;
  protected static final int MENU_ITEM_SELECT_PIC = 1;
  protected static final int MENU_ITEM_TAKE_PIC = 0;
  protected static final int UPDATE_USER_DIALOG = 3;
  private ad authListener;
  private Runnable croppedCallback;
  private boolean editActivity;
  private s fbManager;
  private Uri imageUri;
  private ImageView imageView;
  protected boolean isRotationEnabled = true;
  private boolean mIsCropingImage;
  protected i mMessagesManager;
  private Uri mTempUri;
  
  private void loadFacebookDetais(FacebookDetailsListener paramFacebookDetailsListener, s params)
  {
    if (ft.c(getActivity())) {
      new LoadFacebookDetailsTask(getActivity(), paramFacebookDetailsListener).execute(new s[] { params });
    }
  }
  
  private void removeImage()
  {
    this.imageView.setImageBitmap(null);
    this.imageView.invalidate();
    this.imageUri = null;
  }
  
  private void startGalleryPickerActivity()
  {
    startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getString(2131493914), new Intent[0]), 1);
  }
  
  private void updateGallery(Uri paramUri)
  {
    dc.a(dk.g).post(new UserDataBaseFragment.5(this, paramUri));
  }
  
  protected void closeDialog(int paramInt)
  {
    getActivity().removeDialog(paramInt);
  }
  
  protected void dismissDialog(String paramString)
  {
    log("dismissDialog tag:" + paramString);
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag(paramString);
    if (ViberApplication.isTablet()) {
      ((RegistrationActivity)getActivity()).h().a();
    }
    while (localFragment == null) {
      return;
    }
    localFragmentTransaction.remove(localFragment);
    localFragmentTransaction.commitAllowingStateLoss();
  }
  
  protected boolean externalStorageMounted(boolean paramBoolean)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      if (paramBoolean) {
        Toast.makeText(getActivity(), 2131494025, 0).show();
      }
      return false;
    }
    return true;
  }
  
  public Uri getImageUri()
  {
    return this.imageUri;
  }
  
  protected void imageAction(int paramInt)
  {
    if (paramInt == 0)
    {
      bc.a().a(a.e.e());
      this.mTempUri = h.a(l.b, null);
      if (this.mTempUri != null) {
        takePhoto(this.mTempUri, 0);
      }
    }
    do
    {
      do
      {
        return;
        if (1 != paramInt) {
          break;
        }
        bc.a().a(a.e.d());
        this.mTempUri = h.a(l.a, null);
      } while (this.mTempUri == null);
      loadPhoto(1);
      return;
    } while ((2 != paramInt) || (this.imageUri == null));
    removeImage();
    onImageUpdate();
  }
  
  protected boolean isCropingImage()
  {
    return this.mIsCropingImage;
  }
  
  protected void loadFacebookDetails(FacebookDetailsListener paramFacebookDetailsListener)
  {
    s locals = ViberApplication.getInstance().getFacebookManager();
    this.authListener = new UserDataBaseFragment.4(this, paramFacebookDetailsListener, locals);
    ah localah = locals.b();
    if ((localah == ah.d) || (localah == ah.a))
    {
      locals.a(getActivity(), this.authListener, false);
      return;
    }
    loadFacebookDetais(paramFacebookDetailsListener, locals);
  }
  
  public void loadPhoto(int paramInt)
  {
    if (h.c()) {
      startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getResources().getString(2131493914), new Intent[0]), paramInt);
    }
  }
  
  protected void log(Exception paramException) {}
  
  protected void log(String paramString)
  {
    ViberApplication.log(3, LOG_TAG, paramString);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 0) {
      onUpdateScreenOrientation();
    }
    do
    {
      do
      {
        do
        {
          return;
          switch (paramInt1)
          {
          default: 
            return;
          }
        } while (this.mTempUri == null);
        startActivityForResult(g.a(this.mTempUri), 233);
        this.mIsCropingImage = true;
        updateGallery(this.mTempUri);
        return;
        if ((paramIntent != null) && (paramIntent.getData() != null))
        {
          Uri localUri2 = paramIntent.getData();
          log("uriFromIntent = " + localUri2 + ",mTempUri:" + this.mTempUri);
          if (!localUri2.equals(this.mTempUri)) {
            this.mTempUri = localUri2;
          }
          if (("image".equals(bj.b(this.mTempUri))) && (!h.c(localUri2)))
          {
            if ((h.a()) && (h.c()))
            {
              startActivityForResult(g.a(localUri2), 233);
              this.mIsCropingImage = true;
              return;
            }
            this.mIsCropingImage = false;
            return;
          }
          bj.a(getActivity(), null);
          return;
        }
      } while ((this.mTempUri == null) || (paramInt2 == 0));
      startActivityForResult(g.a(this.mTempUri), 233);
      this.mIsCropingImage = true;
      return;
      if (paramIntent != null)
      {
        Uri localUri1 = Uri.parse(paramIntent.getAction());
        log("Photo was cropped :" + localUri1);
        setImage(localUri1);
      }
      this.mIsCropingImage = false;
    } while (this.croppedCallback == null);
    this.croppedCallback.run();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mMessagesManager = ViberApplication.getInstance().getMessagesManager();
    this.fbManager = ViberApplication.getInstance().getFacebookManager();
  }
  
  abstract void onImageUpdate();
  
  protected void onUpdateScreenOrientation() {}
  
  public void setEditActivity(boolean paramBoolean)
  {
    this.editActivity = paramBoolean;
  }
  
  public void setImage(Uri paramUri)
  {
    this.imageUri = paramUri;
    onImageUpdate();
  }
  
  public void setImageUri(Uri paramUri)
  {
    log("setImageUri uri: " + paramUri);
    this.imageUri = paramUri;
    if (paramUri != null)
    {
      Bitmap localBitmap = BitmapFactory.decodeFile(paramUri.getPath());
      if (localBitmap != null) {
        this.imageView.setImageBitmap(localBitmap);
      }
      return;
    }
    removeImage();
  }
  
  public void setImageView(ImageView paramImageView)
  {
    this.imageView = paramImageView;
  }
  
  protected void showDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
    case 1: 
      ArrayList localArrayList = new ArrayList();
      if ((getActivity().getPackageManager().hasSystemFeature("android.hardware.camera")) || (getActivity().getPackageManager().hasSystemFeature("android.hardware.camera.front"))) {
        localArrayList.add(getResources().getString(2131494014));
      }
      localArrayList.add(getResources().getString(2131494021));
      if (paramInt == 1) {
        localArrayList.add(getResources().getString(2131494022));
      }
      new AlertDialog.Builder(getActivity()).setItems((CharSequence[])localArrayList.toArray(new String[0]), new UserDataBaseFragment.1(this)).show();
      return;
    }
    new AlertDialog.Builder(getActivity()).setMessage(2131494023).setCancelable(false).setPositiveButton(2131494022, new UserDataBaseFragment.3(this)).setNegativeButton(2131493558, new UserDataBaseFragment.2(this)).show();
  }
  
  protected void showToast(int paramInt)
  {
    Toast.makeText(getActivity(), paramInt, 1).show();
  }
  
  public void takePhoto(Uri paramUri, int paramInt)
  {
    if (h.c())
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent.putExtra("output", paramUri);
      startActivityForResult(localIntent, paramInt);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataBaseFragment
 * JD-Core Version:    0.7.0.1
 */