package com.viber.voip.user;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;

public class PublicGroupParticipantDetailsActivity
  extends ViberFragmentActivity
{
  private static final String LOG_TAG = PublicGroupParticipantDetailsActivity.class.getSimpleName();
  public static final String NAME_TEXT = "name_text";
  public static final String PHOTO_URI = "photo_uri";
  private x mFetcherConfig;
  private w mImageFetcher;
  private TextView mParticipantNameView;
  private Uri mPhotoUri;
  private ImageView mPhotoView;
  
  public static Intent buildIntent(Context paramContext, Uri paramUri, String paramString)
  {
    Intent localIntent = new Intent(paramContext, PublicGroupParticipantDetailsActivity.class);
    if (paramUri != null) {
      localIntent.putExtra("photo_uri", paramUri);
    }
    localIntent.putExtra("name_text", paramString);
    return localIntent;
  }
  
  private void displayPhoto()
  {
    this.mImageFetcher.a(null, this.mPhotoUri, this.mPhotoView, this.mFetcherConfig);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903305);
    Intent localIntent = getIntent();
    this.mPhotoUri = ((Uri)localIntent.getParcelableExtra("photo_uri"));
    String str = localIntent.getStringExtra("name_text");
    this.mPhotoView = ((ImageView)findViewById(2131166061));
    this.mParticipantNameView = ((TextView)findViewById(2131166062));
    View localView = findViewById(2131166060);
    this.mImageFetcher = w.a(this);
    this.mFetcherConfig = x.a(this);
    this.mFetcherConfig = this.mFetcherConfig.b().a(true).b();
    localView.setOnClickListener(new PublicGroupParticipantDetailsActivity.1(this));
    this.mParticipantNameView.setText(str);
    displayPhoto();
    ViberApplication.log(3, LOG_TAG, "mPhotoUri:" + this.mPhotoUri + ",participantName:" + str);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.PublicGroupParticipantDetailsActivity
 * JD-Core Version:    0.7.0.1
 */