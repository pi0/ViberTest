package com.viber.voip;

import com.viber.voip.pixie.PixieController;

abstract interface ViberFactory
{
  public abstract ViberLogger getLogger();
  
  public abstract PixieController getPixieController();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ViberFactory
 * JD-Core Version:    0.7.0.1
 */