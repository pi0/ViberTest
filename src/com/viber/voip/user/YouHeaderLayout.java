package com.viber.voip.user;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;

public class YouHeaderLayout
  extends RelativeLayout
{
  private View cachedView;
  private x mFetcherConfig;
  private w mImageFetcher;
  private LayoutInflater mInflater;
  private YouHeaderLayout.HeaderViewCache viewCache;
  
  public YouHeaderLayout(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public YouHeaderLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public YouHeaderLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mInflater = LayoutInflater.from(paramContext);
    this.mImageFetcher = w.a(paramContext);
    this.mFetcherConfig = new z().a(true).b(2130838544, paramContext).b();
    this.cachedView = this.mInflater.inflate(2130903087, this);
    this.viewCache = new YouHeaderLayout.HeaderViewCache(this, this.cachedView);
  }
  
  public YouHeaderLayout.HeaderViewCache getViewCache()
  {
    return this.viewCache;
  }
  
  public void initControls(View paramView)
  {
    this.viewCache.usernameView.setText(UserData.getName());
    this.viewCache.usernameView.addTextChangedListener(new YouHeaderLayout.1(this));
    if (((gl.e(getContext())) || (ViberApplication.isTablet())) && (this.viewCache.photoView == null))
    {
      this.viewCache.photoView = ((ImageView)paramView.findViewById(2131165458));
      this.viewCache.textViewOnPic = ((TextView)paramView.findViewById(2131165457));
      this.viewCache.photoOverlayView = paramView.findViewById(2131165459);
      this.viewCache.photoLayoutView = paramView.findViewById(2131165435);
    }
  }
  
  public void setHeaderInfo(Uri paramUri, View.OnClickListener paramOnClickListener)
  {
    this.viewCache.usernameView.setText(UserData.getName());
    if ((ViberApplication.externalStorageMounted(ViberApplication.getInstance(), false)) && (this.viewCache != null))
    {
      TextView localTextView = this.viewCache.textViewOnPic;
      int i = 0;
      if (paramUri != null) {
        i = 4;
      }
      localTextView.setVisibility(i);
      this.mImageFetcher.a(null, paramUri, this.viewCache.photoView, this.mFetcherConfig);
      this.viewCache.enablePhotoOverlay(paramOnClickListener);
    }
  }
  
  public void setHeaderInfo(View.OnClickListener paramOnClickListener)
  {
    setHeaderInfo(UserData.getImage(), paramOnClickListener);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouHeaderLayout
 * JD-Core Version:    0.7.0.1
 */