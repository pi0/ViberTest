package com.viber.voip.pixie;

public abstract interface PixieController
{
  public abstract void addReadyListener(PixieController.PixieReadyListener paramPixieReadyListener);
  
  public abstract int getLocalProxyPort();
  
  public abstract int getPixieMode();
  
  public abstract int getPixiePort();
  
  public abstract void init();
  
  public abstract void removeReadyListener(PixieController.PixieReadyListener paramPixieReadyListener);
  
  public abstract boolean useLocalProxy();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieController
 * JD-Core Version:    0.7.0.1
 */