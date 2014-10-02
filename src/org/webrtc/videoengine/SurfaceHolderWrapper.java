package org.webrtc.videoengine;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class SurfaceHolderWrapper
  implements SurfaceHolder
{
  private static final int SurfaceState_Changed = 2;
  private static final int SurfaceState_Created = 1;
  private static final int SurfaceState_Destroyed = 3;
  private static final int SurfaceState_Unknown;
  private static final Map<SurfaceHolder, SurfaceHolderWrapper> _wrapMap = new HashMap();
  private final Set<SurfaceHolder.Callback> _callbacks = new HashSet();
  private AtomicInteger _currentState = new AtomicInteger(0);
  private AtomicReference<SurfaceHolder> _holderRef = new AtomicReference(null);
  private final SurfaceHolder.Callback _internal = new SurfaceHolderWrapper.1(this);
  private final SurfaceHolder _wrap;
  private int format = -1;
  private int height = -1;
  private int width = -1;
  
  private SurfaceHolderWrapper(SurfaceHolder paramSurfaceHolder)
  {
    this._wrap = paramSurfaceHolder;
    paramSurfaceHolder.addCallback(this._internal);
  }
  
  private void broadcastStateForSingleCallback(SurfaceHolder.Callback paramCallback, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      try
      {
        paramCallback.surfaceCreated((SurfaceHolder)this._holderRef.get());
        paramCallback.surfaceChanged((SurfaceHolder)this._holderRef.get(), this.format, this.width, this.height);
        continue;
      }
      finally {}
      paramCallback.surfaceDestroyed((SurfaceHolder)this._holderRef.get());
    }
  }
  
  public static SurfaceHolderWrapper getWrapper(SurfaceHolder paramSurfaceHolder)
  {
    synchronized (_wrapMap)
    {
      SurfaceHolderWrapper localSurfaceHolderWrapper = (SurfaceHolderWrapper)_wrapMap.get(paramSurfaceHolder);
      if (localSurfaceHolderWrapper == null)
      {
        Map localMap2 = _wrapMap;
        localSurfaceHolderWrapper = new SurfaceHolderWrapper(paramSurfaceHolder);
        localMap2.put(paramSurfaceHolder, localSurfaceHolderWrapper);
      }
      return localSurfaceHolderWrapper;
    }
  }
  
  public void addCallback(SurfaceHolder.Callback paramCallback)
  {
    synchronized (this._currentState)
    {
      boolean bool = this._callbacks.add(paramCallback);
      if (bool) {
        broadcastStateForSingleCallback(paramCallback, this._currentState.get());
      }
      return;
    }
  }
  
  /* Error */
  protected void broadcastStateChange(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 55	org/webrtc/videoengine/SurfaceHolderWrapper:_currentState	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: new 45	java/util/HashSet
    //   12: dup
    //   13: aload_0
    //   14: getfield 48	org/webrtc/videoengine/SurfaceHolderWrapper:_callbacks	Ljava/util/Set;
    //   17: invokespecial 135	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   20: astore 4
    //   22: aload_3
    //   23: monitorexit
    //   24: aload 4
    //   26: invokeinterface 139 1 0
    //   31: astore 6
    //   33: aload 6
    //   35: invokeinterface 145 1 0
    //   40: ifeq +33 -> 73
    //   43: aload_0
    //   44: aload 6
    //   46: invokeinterface 148 1 0
    //   51: checkcast 97	android/view/SurfaceHolder$Callback
    //   54: iload_1
    //   55: invokespecial 131	org/webrtc/videoengine/SurfaceHolderWrapper:broadcastStateForSingleCallback	(Landroid/view/SurfaceHolder$Callback;I)V
    //   58: goto -25 -> 33
    //   61: astore_2
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_2
    //   65: athrow
    //   66: astore 5
    //   68: aload_3
    //   69: monitorexit
    //   70: aload 5
    //   72: athrow
    //   73: aload_0
    //   74: monitorexit
    //   75: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	SurfaceHolderWrapper
    //   0	76	1	paramInt	int
    //   61	4	2	localObject1	Object
    //   20	5	4	localHashSet	HashSet
    //   66	5	5	localObject2	Object
    //   31	14	6	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	9	61	finally
    //   24	33	61	finally
    //   33	58	61	finally
    //   70	73	61	finally
    //   9	24	66	finally
    //   68	70	66	finally
  }
  
  public boolean equals(Object paramObject)
  {
    return this._wrap.equals(paramObject);
  }
  
  public Surface getSurface()
  {
    return this._wrap.getSurface();
  }
  
  public Rect getSurfaceFrame()
  {
    return this._wrap.getSurfaceFrame();
  }
  
  public int hashCode()
  {
    return hashCode();
  }
  
  public boolean isCreating()
  {
    return this._wrap.isCreating();
  }
  
  public Canvas lockCanvas()
  {
    return this._wrap.lockCanvas();
  }
  
  public Canvas lockCanvas(Rect paramRect)
  {
    return this._wrap.lockCanvas(paramRect);
  }
  
  public void removeCallback(SurfaceHolder.Callback paramCallback)
  {
    synchronized (this._currentState)
    {
      if (!this._callbacks.remove(paramCallback)) {
        this._wrap.removeCallback(paramCallback);
      }
      return;
    }
  }
  
  public void setFixedSize(int paramInt1, int paramInt2)
  {
    this._wrap.setFixedSize(paramInt1, paramInt2);
  }
  
  public void setFormat(int paramInt)
  {
    this._wrap.setFormat(paramInt);
  }
  
  public void setKeepScreenOn(boolean paramBoolean)
  {
    this._wrap.setKeepScreenOn(paramBoolean);
  }
  
  public void setSizeFromLayout()
  {
    this._wrap.setSizeFromLayout();
  }
  
  public void setType(int paramInt)
  {
    this._wrap.setType(paramInt);
  }
  
  public String toString()
  {
    return this._wrap.toString();
  }
  
  public void unlockCanvasAndPost(Canvas paramCanvas)
  {
    this._wrap.unlockCanvasAndPost(paramCanvas);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.SurfaceHolderWrapper
 * JD-Core Version:    0.7.0.1
 */