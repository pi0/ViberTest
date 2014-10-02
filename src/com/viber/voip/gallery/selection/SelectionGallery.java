package com.viber.voip.gallery.selection;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.preview.PhotoPreviewActivity;
import com.viber.voip.gallery.preview.a;
import com.viber.voip.messages.conversation.ui.ConversationData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SelectionGallery
  extends ViberGalleryActivity
{
  private void b(ArrayList<GalleryItem> paramArrayList)
  {
    startActivityForResult(PhotoPreviewActivity.a((ConversationData)getIntent().getParcelableExtra("extra_conversation_data"), paramArrayList), 10);
  }
  
  private void c(GalleryItem paramGalleryItem)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramGalleryItem);
    b(localArrayList);
  }
  
  protected void a(ArrayList<GalleryItem> paramArrayList)
  {
    b(paramArrayList);
  }
  
  protected void a(List<GalleryItem> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      GalleryItem localGalleryItem = (GalleryItem)localIterator.next();
      if (localGalleryItem.d()) {
        localArrayList.add(localGalleryItem.b());
      }
    }
    if (localArrayList.size() > 0) {
      this.a.post(new a(localArrayList));
    }
  }
  
  protected void b(GalleryItem paramGalleryItem)
  {
    c(paramGalleryItem);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((-1 == paramInt2) && (paramIntent != null) && (10 == paramInt1))
    {
      ArrayList localArrayList = paramIntent.getParcelableArrayListExtra("image_list");
      Bundle localBundle = new Bundle();
      localBundle.putParcelableArrayList("extra_selected_images", localArrayList);
      if (localArrayList.size() > 0) {}
      for (boolean bool = true;; bool = false)
      {
        localBundle.putBoolean("extra_multiple_selection", bool);
        a(false);
        a(localBundle);
        return;
      }
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.SelectionGallery
 * JD-Core Version:    0.7.0.1
 */