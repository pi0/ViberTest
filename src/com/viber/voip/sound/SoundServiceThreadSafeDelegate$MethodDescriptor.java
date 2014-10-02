package com.viber.voip.sound;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

class SoundServiceThreadSafeDelegate$MethodDescriptor<Declaration extends SoundServiceThreadSafeDelegate.MethodDecl>
{
  private final String methodName;
  private final HashMap<String, Declaration> methodsTable = new HashMap();
  
  public SoundServiceThreadSafeDelegate$MethodDescriptor(Declaration paramDeclaration)
  {
    this(paramDeclaration, localMethodDecl.methodName);
    override(localMethodDecl);
  }
  
  public SoundServiceThreadSafeDelegate$MethodDescriptor(SoundServiceThreadSafeDelegate paramSoundServiceThreadSafeDelegate, String paramString)
  {
    this.methodName = paramString;
  }
  
  public Collection<Declaration> getCallables()
  {
    return this.methodsTable.values();
  }
  
  public String getMethodName()
  {
    return this.methodName;
  }
  
  public void override(Declaration paramDeclaration)
  {
    this.methodsTable.put(SoundServiceThreadSafeDelegate.getSignature(paramDeclaration.methodName, paramDeclaration.parmDecl), paramDeclaration);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.methodsTable.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(this.methodName + " : " + (String)localEntry.getKey() + "/" + localEntry.getValue() + "; ");
    }
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceThreadSafeDelegate.MethodDescriptor
 * JD-Core Version:    0.7.0.1
 */