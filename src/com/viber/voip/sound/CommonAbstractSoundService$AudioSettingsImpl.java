package com.viber.voip.sound;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

class CommonAbstractSoundService$AudioSettingsImpl
  implements ISoundService.IAudioSettings
{
  private AtomicInteger _aecMode = new AtomicInteger(-1);
  private AtomicInteger _agcMode = new AtomicInteger(-1);
  private Set<ISoundService.IAudioSettings.IAudioSettingsListener> _listeners = new HashSet();
  private AtomicInteger _nsMode = new AtomicInteger(-1);
  private AtomicInteger _rxAgcMode = new AtomicInteger(-1);
  private AtomicInteger _rxNsMode = new AtomicInteger(-1);
  private AtomicInteger _vadMode = new AtomicInteger(-1);
  
  CommonAbstractSoundService$AudioSettingsImpl(CommonAbstractSoundService paramCommonAbstractSoundService)
  {
    this(paramCommonAbstractSoundService, null);
  }
  
  CommonAbstractSoundService$AudioSettingsImpl(CommonAbstractSoundService paramCommonAbstractSoundService, ISoundService.IAudioSettings.IAudioSettingsListener paramIAudioSettingsListener)
  {
    addListener(paramIAudioSettingsListener);
  }
  
  private Set<ISoundService.IAudioSettings.IAudioSettingsListener> _getListeners()
  {
    synchronized (this._listeners)
    {
      HashSet localHashSet = new HashSet(this._listeners);
      return localHashSet;
    }
  }
  
  public void addListener(ISoundService.IAudioSettings.IAudioSettingsListener paramIAudioSettingsListener)
  {
    if (paramIAudioSettingsListener == null) {
      return;
    }
    synchronized (this._listeners)
    {
      this._listeners.add(paramIAudioSettingsListener);
      return;
    }
  }
  
  public int getAECMode()
  {
    return this._aecMode.get();
  }
  
  public int getAGCMode()
  {
    return this._agcMode.get();
  }
  
  public int getNSMode()
  {
    return this._nsMode.get();
  }
  
  public int getRxAGCMode()
  {
    return this._rxAgcMode.get();
  }
  
  public int getRxNSMode()
  {
    return this._rxNsMode.get();
  }
  
  public int getVADMode()
  {
    return this._vadMode.get();
  }
  
  public void removeListener(ISoundService.IAudioSettings.IAudioSettingsListener paramIAudioSettingsListener)
  {
    if (paramIAudioSettingsListener == null) {
      return;
    }
    synchronized (this._listeners)
    {
      this._listeners.remove(paramIAudioSettingsListener);
      return;
    }
  }
  
  public int setAECMode(int paramInt)
  {
    int i = this._aecMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onAECChange(i, paramInt);
    }
    return i;
  }
  
  public int setAGCMode(int paramInt)
  {
    int i = this._agcMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onAGCChange(i, paramInt);
    }
    return i;
  }
  
  public int setNSMode(int paramInt)
  {
    int i = this._nsMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onNSChange(i, paramInt);
    }
    return i;
  }
  
  public int setRxAGCMode(int paramInt)
  {
    int i = this._rxAgcMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onRxAGCChange(i, paramInt);
    }
    return i;
  }
  
  public int setRxNSMode(int paramInt)
  {
    int i = this._rxNsMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onRxNSChange(i, paramInt);
    }
    return i;
  }
  
  public int setVADMode(int paramInt)
  {
    int i = this._vadMode.getAndSet(paramInt);
    Iterator localIterator = _getListeners().iterator();
    while (localIterator.hasNext()) {
      ((ISoundService.IAudioSettings.IAudioSettingsListener)localIterator.next()).onVADChange(i, paramInt);
    }
    return i;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.AudioSettingsImpl
 * JD-Core Version:    0.7.0.1
 */