package pager;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

final class j
  implements ParcelableCompatCreatorCallbacks<ViewPager.SavedState>
{
  public ViewPager.SavedState a(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return new ViewPager.SavedState(paramParcel, paramClassLoader);
  }
  
  public ViewPager.SavedState[] a(int paramInt)
  {
    return new ViewPager.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     pager.j
 * JD-Core Version:    0.7.0.1
 */