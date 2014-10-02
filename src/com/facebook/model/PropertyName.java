package com.facebook.model;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface PropertyName
{
  String value();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.model.PropertyName
 * JD-Core Version:    0.7.0.1
 */