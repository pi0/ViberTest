package org.webrtc.videoengine;

import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

class ViEOMXHelper$OMXNode
{
  @ViEOMXHelper.Native
  private final Set<Integer> colorspaces = new TreeSet();
  @ViEOMXHelper.Native
  public final boolean isEncoder;
  @ViEOMXHelper.Native
  public final String mimetype;
  @ViEOMXHelper.Native
  public final String name;
  
  public ViEOMXHelper$OMXNode(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.mimetype = paramString1;
    this.name = paramString2;
    this.isEncoder = paramBoolean;
  }
  
  public void addSupportedColorspace(int paramInt)
  {
    this.colorspaces.add(Integer.valueOf(paramInt));
  }
  
  public boolean equals(Object paramObject)
  {
    return (paramObject != null) && ((paramObject instanceof OMXNode)) && (paramObject.hashCode() == hashCode());
  }
  
  public int hashCode()
  {
    return this.name.hashCode();
  }
  
  public int[] supportedColorspaces()
  {
    int[] arrayOfInt = new int[this.colorspaces.size()];
    Iterator localIterator = this.colorspaces.iterator();
    int k;
    for (int i = 0; localIterator.hasNext(); i = k)
    {
      int j = ((Integer)localIterator.next()).intValue();
      k = i + 1;
      arrayOfInt[i] = j;
    }
    return arrayOfInt;
  }
  
  public String toString()
  {
    return this.name;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEOMXHelper.OMXNode
 * JD-Core Version:    0.7.0.1
 */