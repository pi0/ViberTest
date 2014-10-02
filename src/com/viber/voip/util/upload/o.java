package com.viber.voip.util.upload;

import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;

final class o
  implements MediaScannerConnection.MediaScannerConnectionClient
{
  o(MediaScannerConnection[] paramArrayOfMediaScannerConnection, String paramString) {}
  
  public void onMediaScannerConnected()
  {
    n.d("onMediaScannerConnected()");
    if (this.a[0] != null) {
      this.a[0].scanFile(this.b, null);
    }
  }
  
  public void onScanCompleted(String paramString, Uri paramUri)
  {
    n.d("onScanCompleted(): s: " + paramString + " , uri: " + paramUri);
    if (this.a[0] != null) {
      this.a[0].disconnect();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.o
 * JD-Core Version:    0.7.0.1
 */