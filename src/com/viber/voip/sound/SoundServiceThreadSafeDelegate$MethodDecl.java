package com.viber.voip.sound;

import java.lang.reflect.Method;

class SoundServiceThreadSafeDelegate$MethodDecl
{
  final Method method;
  final String methodName;
  private final String methodSignatureStr;
  final Class<?>[] parmDecl;
  final String signature;
  
  SoundServiceThreadSafeDelegate$MethodDecl(String paramString, Method paramMethod, Class<?>... paramVarArgs)
  {
    this.methodName = paramMethod;
    Class[] arrayOfClass;
    this.parmDecl = arrayOfClass;
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; (arrayOfClass != null) && (i < arrayOfClass.length); i++) {
      localStringBuilder.append("{" + arrayOfClass[i].getSimpleName() + "} ");
    }
    this.signature = SoundServiceThreadSafeDelegate.getSignature(paramMethod, arrayOfClass);
    this.methodSignatureStr = localStringBuilder.toString();
    this.method = paramVarArgs;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (this.signature == null)) {}
    do
    {
      return false;
      if ((paramObject instanceof String)) {
        return this.signature.equals(paramObject);
      }
    } while (!(paramObject instanceof MethodDecl));
    return this.signature.equals(((MethodDecl)paramObject).signature);
  }
  
  public String toString()
  {
    return "MethodDecl [" + this.methodName + ": " + this.methodSignatureStr + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceThreadSafeDelegate.MethodDecl
 * JD-Core Version:    0.7.0.1
 */