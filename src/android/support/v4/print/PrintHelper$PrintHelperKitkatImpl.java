package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

final class PrintHelper$PrintHelperKitkatImpl
  implements PrintHelper.PrintHelperVersionImpl
{
  private final PrintHelperKitkat mPrintHelper;
  
  PrintHelper$PrintHelperKitkatImpl(Context paramContext)
  {
    this.mPrintHelper = new PrintHelperKitkat(paramContext);
  }
  
  public int getColorMode()
  {
    return this.mPrintHelper.getColorMode();
  }
  
  public int getOrientation()
  {
    return this.mPrintHelper.getOrientation();
  }
  
  public int getScaleMode()
  {
    return this.mPrintHelper.getScaleMode();
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap)
  {
    this.mPrintHelper.printBitmap(paramString, paramBitmap);
  }
  
  public void printBitmap(String paramString, Uri paramUri)
  {
    this.mPrintHelper.printBitmap(paramString, paramUri);
  }
  
  public void setColorMode(int paramInt)
  {
    this.mPrintHelper.setColorMode(paramInt);
  }
  
  public void setOrientation(int paramInt)
  {
    this.mPrintHelper.setOrientation(paramInt);
  }
  
  public void setScaleMode(int paramInt)
  {
    this.mPrintHelper.setScaleMode(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperKitkatImpl
 * JD-Core Version:    0.7.0.1
 */