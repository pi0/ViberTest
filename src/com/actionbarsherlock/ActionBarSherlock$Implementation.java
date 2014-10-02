package com.actionbarsherlock;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface ActionBarSherlock$Implementation
{
  public static final int DEFAULT_API = -1;
  public static final int DEFAULT_DPI = -1;
  
  int api() default -1;
  
  int dpi() default -1;
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.ActionBarSherlock.Implementation
 * JD-Core Version:    0.7.0.1
 */