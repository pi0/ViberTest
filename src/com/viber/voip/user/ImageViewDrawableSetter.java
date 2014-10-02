package com.viber.voip.user;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;

public class ImageViewDrawableSetter
{
  private static final String TAG = "ImageViewDrawableSetter";
  private byte[] mCompressed;
  private int mDurationInMillis = 0;
  private Drawable mPreviousDrawable;
  private ImageView mTarget;
  
  public ImageViewDrawableSetter() {}
  
  public ImageViewDrawableSetter(ImageView paramImageView)
  {
    this.mTarget = paramImageView;
  }
  
  private BitmapDrawable decodedBitmapDrawable(byte[] paramArrayOfByte)
  {
    return new BitmapDrawable(this.mTarget.getResources(), BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length));
  }
  
  private Drawable defaultDrawable()
  {
    Resources localResources = this.mTarget.getResources();
    try
    {
      Drawable localDrawable = localResources.getDrawable(2130837615);
      return localDrawable;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      Log.wtf("ImageViewDrawableSetter", "Cannot load default avatar resource.");
    }
    return null;
  }
  
  private Bitmap previousBitmap()
  {
    if (this.mPreviousDrawable == null) {
      return null;
    }
    return ((BitmapDrawable)this.mPreviousDrawable).getBitmap();
  }
  
  protected byte[] getCompressedImage()
  {
    return this.mCompressed;
  }
  
  public ImageView getTarget()
  {
    return this.mTarget;
  }
  
  protected void setCompressedImage(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.mTarget.setImageBitmap(paramBitmap);
      return;
    }
    this.mTarget.setImageDrawable(defaultDrawable());
  }
  
  protected void setTarget(ImageView paramImageView)
  {
    if (this.mTarget != paramImageView)
    {
      this.mTarget = paramImageView;
      this.mCompressed = null;
      this.mPreviousDrawable = null;
    }
  }
  
  public void setTransitionDuration(int paramInt)
  {
    this.mDurationInMillis = paramInt;
  }
  
  public void setupContactPhoto(Bitmap paramBitmap, ImageView paramImageView)
  {
    setTarget(paramImageView);
    setCompressedImage(paramBitmap);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.ImageViewDrawableSetter
 * JD-Core Version:    0.7.0.1
 */