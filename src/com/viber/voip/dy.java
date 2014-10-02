package com.viber.voip;

import com.viber.voip.pixie.PixieController;
import com.viber.voip.pixie.PixieControllerImpl;

public class dy
  implements ViberFactory
{
  private ViberLogger a = new dz(this);
  
  public ViberLogger getLogger()
  {
    return this.a;
  }
  
  public PixieController getPixieController()
  {
    return PixieControllerImpl._getInstance();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dy
 * JD-Core Version:    0.7.0.1
 */