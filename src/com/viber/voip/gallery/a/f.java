package com.viber.voip.gallery.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.messages.extras.image.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class f
  extends c<ArrayList<GalleryItem>>
{
  private static final String[] a = { "_id" };
  private final int b;
  private final List<GalleryItem> c;
  
  public f(List<GalleryItem> paramList, int paramInt, Context paramContext)
  {
    super(paramContext);
    this.c = paramList;
    this.b = paramInt;
  }
  
  private static String a(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString).append(" DESC");
    if (paramInt > 0) {
      localStringBuilder.append(" LIMIT ").append(paramInt);
    }
    return localStringBuilder.toString();
  }
  
  private static String a(String paramString, List<Long> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramList.size() > 0)
    {
      localStringBuilder.append(paramString).append(" IN(");
      localStringBuilder.append(TextUtils.join(",", paramList));
      localStringBuilder.append(")");
    }
    return localStringBuilder.toString();
  }
  
  private void a(ArrayList<GalleryItem> paramArrayList)
  {
    if (this.b > 0) {}
    for (List localList = this.c.subList(0, this.b);; localList = this.c)
    {
      paramArrayList.addAll(localList);
      return;
    }
  }
  
  private void b(ArrayList<GalleryItem> paramArrayList)
  {
    ContentResolver localContentResolver = getContext().getContentResolver();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      String str2 = ((GalleryItem)localIterator.next()).a().getLastPathSegment();
      try
      {
        localArrayList.add(Long.valueOf(Long.parseLong(str2)));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ViberApplication.log(5, "DateFilterPhotoLoader", "Invalid URI for photo filtering. Uri doesn't contain photo ID");
      }
    }
    Cursor localCursor = localContentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, a, a("_id", localArrayList), null, a("datetaken", this.b));
    if (localCursor != null) {
      try
      {
        if (localCursor.moveToNext())
        {
          String str1 = localCursor.getString(localCursor.getColumnIndex("_id"));
          paramArrayList.add(GalleryItem.a(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.buildUpon().appendPath(str1).build()));
        }
        return;
      }
      finally
      {
        localCursor.close();
      }
    }
  }
  
  public ArrayList<GalleryItem> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.c.size() > 0)
    {
      if (h.b(((GalleryItem)this.c.get(0)).a())) {
        a(localArrayList);
      }
    }
    else {
      return localArrayList;
    }
    b(localArrayList);
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a.f
 * JD-Core Version:    0.7.0.1
 */