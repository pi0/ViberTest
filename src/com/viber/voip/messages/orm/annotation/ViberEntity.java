package com.viber.voip.messages.orm.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface ViberEntity
{
  String authority();
  
  String table();
  
  ViberEntityType type() default ViberEntityType.ContentValues;
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.annotation.ViberEntity
 * JD-Core Version:    0.7.0.1
 */