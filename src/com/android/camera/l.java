package com.android.camera;

import android.widget.Toast;
import java.util.ArrayList;

class l
  implements Runnable
{
  l(k paramk) {}
  
  public void run()
  {
    CropImage localCropImage = this.a.e;
    if (this.a.d > 1) {}
    for (boolean bool = true;; bool = false)
    {
      localCropImage.a = bool;
      if (this.a.d <= 0) {
        break;
      }
      for (int i = 0; i < this.a.d; i++) {
        k.a(this.a, this.a.c[i]);
      }
    }
    k.a(this.a);
    CropImage.d(this.a.e).invalidate();
    if (CropImage.d(this.a.e).a.size() == 1)
    {
      this.a.e.c = ((m)CropImage.d(this.a.e).a.get(0));
      this.a.e.c.a(true);
    }
    if (this.a.d > 1) {
      Toast.makeText(this.a.e, 2131494072, 0).show();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.l
 * JD-Core Version:    0.7.0.1
 */