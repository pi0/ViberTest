package com.facebook;

import android.os.Bundle;

public class NonCachingTokenCachingStrategy
  extends TokenCachingStrategy
{
  public void clear() {}
  
  public Bundle load()
  {
    return null;
  }
  
  public void save(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.NonCachingTokenCachingStrategy
 * JD-Core Version:    0.7.0.1
 */