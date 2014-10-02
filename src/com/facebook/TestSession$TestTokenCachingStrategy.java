package com.facebook;

import android.os.Bundle;

final class TestSession$TestTokenCachingStrategy
  extends TokenCachingStrategy
{
  private Bundle bundle;
  
  public void clear()
  {
    this.bundle = null;
  }
  
  public Bundle load()
  {
    return this.bundle;
  }
  
  public void save(Bundle paramBundle)
  {
    this.bundle = paramBundle;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.TestSession.TestTokenCachingStrategy
 * JD-Core Version:    0.7.0.1
 */