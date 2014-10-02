package com.viber.dexshared;

public abstract interface GMaps$GoogleMap
{
  public abstract GMaps.Circle addCircle(GMaps.CircleOptions paramCircleOptions);
  
  public abstract GMaps.GroundOverlay addGroundOverlay(GMaps.GroundOverlayOptions paramGroundOverlayOptions);
  
  public abstract GMaps.Marker addMarker(GMaps.MarkerOptions paramMarkerOptions);
  
  public abstract void animateCamera(GMaps.CameraUpdate paramCameraUpdate);
  
  public abstract GMaps.CameraPosition getCameraPosition();
  
  public abstract GMaps.UiSettings getUiSettings();
  
  public abstract void setInfoWindowAdapter(GMaps.GoogleMap.InfoWindowAdapter paramInfoWindowAdapter);
  
  public abstract void setOnCameraChangeListener(GMaps.GoogleMap.OnCameraChangeListener paramOnCameraChangeListener);
  
  public abstract void setOnMapClickListener(GMaps.GoogleMap.OnMapClickListener paramOnMapClickListener);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.dexshared.GMaps.GoogleMap
 * JD-Core Version:    0.7.0.1
 */