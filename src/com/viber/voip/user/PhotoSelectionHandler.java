package com.viber.voip.user;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListPopupWindow;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.at;
import com.viber.voip.util.bj;
import java.io.File;

public abstract class PhotoSelectionHandler
  implements View.OnClickListener
{
  private static final int REQUEST_CODE_CAMERA_WITH_DATA = 1001;
  private static final int REQUEST_CODE_CROP_PHOTO = 12302;
  private static final int REQUEST_CODE_PHOTO_PICKED_WITH_DATA = 10002;
  private static final String TAG = PhotoSelectionHandler.class.getSimpleName();
  protected final Context mContext;
  private final boolean mIsDirectoryContact;
  private final int mPhotoMode;
  private final View mPhotoView;
  private ListPopupWindow mPopup;
  private Dialog mPopupDialog;
  
  public PhotoSelectionHandler(Context paramContext, View paramView, int paramInt, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.mPhotoView = paramView;
    this.mPhotoMode = paramInt;
    this.mIsDirectoryContact = paramBoolean;
  }
  
  private void doCropPhoto(String paramString)
  {
    try
    {
      File localFile = new File(paramString);
      ((Activity)this.mContext).startActivityForResult(g.a(Uri.fromFile(localFile)), 12302);
      dc.a(dk.g).post(new PhotoSelectionHandler.5(this, localFile));
      return;
    }
    catch (Exception localException)
    {
      log("Cannot crop image:" + localException);
      Toast.makeText(this.mContext, getPhotoPickerNotFoundText(), 1).show();
    }
  }
  
  private Intent getPhotoPickIntent(File paramFile)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT", null);
    localIntent.setType("image/*");
    return localIntent;
  }
  
  private static int getPhotoPickerNotFoundText()
  {
    if (ViberApplication.isTablet()) {
      return 2131494018;
    }
    return 2131494019;
  }
  
  private static Intent getTakePhotoIntent(File paramFile)
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE", null);
    localIntent.putExtra("output", Uri.fromFile(paramFile));
    return localIntent;
  }
  
  private void showPhotoSelectPopup()
  {
    PhotoSelectionHandler.PhotoActionListener localPhotoActionListener = getListener();
    if (localPhotoActionListener != null)
    {
      if (Build.VERSION.SDK_INT > 10)
      {
        this.mPopup = PhotoActionPopup.createPopupMenu(this.mContext, this.mPhotoView, localPhotoActionListener, this.mPhotoMode);
        this.mPopup.setOnDismissListener(new PhotoSelectionHandler.1(this, localPhotoActionListener));
        this.mPopup.show();
      }
    }
    else {
      return;
    }
    this.mPopupDialog = PhotoActionDialog.createPopupMenu(this.mContext, this.mPhotoView, localPhotoActionListener, this.mPhotoMode);
    this.mPopupDialog.setOnDismissListener(new PhotoSelectionHandler.2(this, localPhotoActionListener));
    this.mPopupDialog.show();
  }
  
  private void startPickFromGalleryActivity(File paramFile)
  {
    startPhotoActivity(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), this.mContext.getString(2131493914), new Intent[0]), 10002, paramFile);
  }
  
  private void startTakePhotoActivity(File paramFile)
  {
    startPhotoActivity(getTakePhotoIntent(paramFile), 1001, paramFile);
  }
  
  public void destroy()
  {
    if (this.mPopup != null) {
      this.mPopup.dismiss();
    }
    if (this.mPopupDialog != null) {
      this.mPopupDialog.dismiss();
    }
  }
  
  public abstract PhotoSelectionHandler.PhotoActionListener getListener();
  
  public boolean handlePhotoActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    PhotoSelectionHandler.PhotoActionListener localPhotoActionListener = getListener();
    log("handlePhotoActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      return false;
      Uri localUri2;
      if ((paramIntent != null) && (paramIntent.getData() != null))
      {
        localUri2 = h.a(this.mContext, paramIntent.getData(), paramIntent.getType());
        log("uriFromIntent = " + localUri2);
        if ("image".equals(bj.b(localUri2))) {
          if (!h.c(localUri2)) {
            ((Activity)this.mContext).startActivityForResult(g.a(localUri2), 12302);
          }
        }
      }
      for (;;)
      {
        return true;
        dc.a(dk.h).post(new PhotoSelectionHandler.3(this, localUri2));
        continue;
        bj.a(this.mContext, new PhotoSelectionHandler.4(this));
        continue;
        if (localPhotoActionListener.getCurrentPhotoFile() != null)
        {
          File localFile2 = new File(localPhotoActionListener.getCurrentPhotoFile());
          ((Activity)this.mContext).startActivityForResult(g.a(Uri.fromFile(localFile2)), 12302);
        }
      }
      doCropPhoto(localPhotoActionListener.getCurrentPhotoFile());
      return true;
      if (paramIntent != null)
      {
        Uri localUri1 = Uri.parse(paramIntent.getAction());
        log("Photo was cropped :" + localUri1);
        localPhotoActionListener.onPhotoSelected(localUri1);
        return true;
        if (localPhotoActionListener.getCurrentPhotoFile() != null)
        {
          File localFile1 = new File(localPhotoActionListener.getCurrentPhotoFile());
          h.c(this.mContext, Uri.fromFile(localFile1));
        }
      }
    }
  }
  
  protected void log(String paramString)
  {
    ViberApplication.log(3, TAG, paramString);
  }
  
  public void onClick(View paramView)
  {
    log("onClick v:" + paramView);
    showPhotoSelectPopup();
  }
  
  protected abstract void startPhotoActivity(Intent paramIntent, int paramInt, File paramFile);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.PhotoSelectionHandler
 * JD-Core Version:    0.7.0.1
 */