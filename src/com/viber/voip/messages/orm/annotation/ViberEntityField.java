package com.viber.voip.messages.orm.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface ViberEntityField
{
  int api() default 0;
  
  String projection();
  
  boolean uiRelated() default true;
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.annotation.ViberEntityField
 * JD-Core Version:    0.7.0.1
 */