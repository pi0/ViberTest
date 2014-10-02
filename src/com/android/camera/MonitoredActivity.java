package com.android.camera;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public class MonitoredActivity
  extends NoSearchActivity
{
  private final ArrayList<x> a = new ArrayList();
  
  public void a(x paramx)
  {
    if (this.a.contains(paramx)) {
      return;
    }
    this.a.add(paramx);
  }
  
  public void b(x paramx)
  {
    this.a.remove(paramx);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((x)localIterator.next()).a(this);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((x)localIterator.next()).b(this);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((x)localIterator.next()).c(this);
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((x)localIterator.next()).d(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.MonitoredActivity
 * JD-Core Version:    0.7.0.1
 */