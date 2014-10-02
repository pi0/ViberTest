package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

abstract interface PrintHelper$PrintHelperVersionImpl
{
  public abstract int getColorMode();
  
  public abstract int getOrientation();
  
  public abstract int getScaleMode();
  
  public abstract void printBitmap(String paramString, Bitmap paramBitmap);
  
  public abstract void printBitmap(String paramString, Uri paramUri);
  
  public abstract void setColorMode(int paramInt);
  
  public abstract void setOrientation(int paramInt);
  
  public abstract void setScaleMode(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperVersionImpl
 * JD-Core Version:    0.7.0.1
 */