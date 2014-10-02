package com.viber.voip.sound;

import com.viber.jni.MediaStats;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class VoENativeDebugHelper$2
  implements Runnable
{
  VoENativeDebugHelper$2(MediaStats paramMediaStats) {}
  
  public void run()
  {
    synchronized ()
    {
      HashSet localHashSet = new HashSet(VoENativeDebugHelper.access$000());
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((VoENativeDebugHelper.MediaStatisticsListener)localIterator.next()).onStatisticsUpdate(this.val$stats);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.VoENativeDebugHelper.2
 * JD-Core Version:    0.7.0.1
 */