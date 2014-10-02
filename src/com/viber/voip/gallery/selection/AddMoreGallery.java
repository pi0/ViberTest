package com.viber.voip.gallery.selection;

import android.content.Intent;
import com.viber.voip.gallery.GalleryItem;
import java.util.ArrayList;

public class AddMoreGallery
  extends ViberGalleryActivity
{
  protected void a(ArrayList<GalleryItem> paramArrayList)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra_selected_images", paramArrayList);
    setResult(-1, localIntent);
    finish();
  }
  
  protected boolean a()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.AddMoreGallery
 * JD-Core Version:    0.7.0.1
 */