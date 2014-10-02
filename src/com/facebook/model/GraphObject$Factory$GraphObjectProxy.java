package com.facebook.model;

import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class GraphObject$Factory$GraphObjectProxy
  extends GraphObject.Factory.ProxyBase<JSONObject>
{
  private static final String CASTTOMAP_METHOD = "asMap";
  private static final String CAST_METHOD = "cast";
  private static final String CLEAR_METHOD = "clear";
  private static final String CONTAINSKEY_METHOD = "containsKey";
  private static final String CONTAINSVALUE_METHOD = "containsValue";
  private static final String ENTRYSET_METHOD = "entrySet";
  private static final String GETINNERJSONOBJECT_METHOD = "getInnerJSONObject";
  private static final String GETPROPERTY_METHOD = "getProperty";
  private static final String GET_METHOD = "get";
  private static final String ISEMPTY_METHOD = "isEmpty";
  private static final String KEYSET_METHOD = "keySet";
  private static final String PUTALL_METHOD = "putAll";
  private static final String PUT_METHOD = "put";
  private static final String REMOVEPROPERTY_METHOD = "removeProperty";
  private static final String REMOVE_METHOD = "remove";
  private static final String SETPROPERTY_METHOD = "setProperty";
  private static final String SIZE_METHOD = "size";
  private static final String VALUES_METHOD = "values";
  private final Class<?> graphObjectClass;
  
  public GraphObject$Factory$GraphObjectProxy(JSONObject paramJSONObject, Class<?> paramClass)
  {
    super(paramJSONObject);
    this.graphObjectClass = paramClass;
  }
  
  private final Object proxyGraphObjectGettersAndSetters(Method paramMethod, Object[] paramArrayOfObject)
  {
    String str1 = paramMethod.getName();
    int i = paramMethod.getParameterTypes().length;
    PropertyName localPropertyName = (PropertyName)paramMethod.getAnnotation(PropertyName.class);
    String str2;
    Object localObject4;
    Class localClass;
    Type localType;
    if (localPropertyName != null)
    {
      str2 = localPropertyName.value();
      if (i != 0) {
        break label106;
      }
      localObject4 = ((JSONObject)this.state).opt(str2);
      localClass = paramMethod.getReturnType();
      localType = paramMethod.getGenericReturnType();
      if (!(localType instanceof ParameterizedType)) {
        break label296;
      }
    }
    label296:
    for (ParameterizedType localParameterizedType = (ParameterizedType)localType;; localParameterizedType = null)
    {
      return GraphObject.Factory.coerceValueToExpectedType(localObject4, localClass, localParameterizedType);
      str2 = GraphObject.Factory.convertCamelCaseToLowercaseWithUnderscores(str1.substring(3));
      break;
      label106:
      Object localObject1;
      Object localObject2;
      if (i == 1)
      {
        localObject1 = paramArrayOfObject[0];
        if (GraphObject.class.isAssignableFrom(localObject1.getClass())) {
          localObject2 = ((GraphObject)localObject1).getInnerJSONObject();
        }
      }
      for (;;)
      {
        ((JSONObject)this.state).putOpt(str2, localObject2);
        return null;
        if (GraphObjectList.class.isAssignableFrom(localObject1.getClass()))
        {
          localObject2 = ((GraphObjectList)localObject1).getInnerJSONArray();
        }
        else if (Iterable.class.isAssignableFrom(localObject1.getClass()))
        {
          localObject2 = new JSONArray();
          Iterator localIterator = ((Iterable)localObject1).iterator();
          while (localIterator.hasNext())
          {
            Object localObject3 = localIterator.next();
            if (GraphObject.class.isAssignableFrom(localObject3.getClass())) {
              ((JSONArray)localObject2).put(((GraphObject)localObject3).getInnerJSONObject());
            } else {
              ((JSONArray)localObject2).put(localObject3);
            }
          }
          continue;
          return throwUnexpectedMethodSignature(paramMethod);
        }
        else
        {
          localObject2 = localObject1;
        }
      }
    }
  }
  
  private final Object proxyGraphObjectMethods(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    if (str.equals("cast"))
    {
      Class localClass = (Class)paramArrayOfObject[0];
      if ((localClass != null) && (localClass.isAssignableFrom(this.graphObjectClass))) {
        return paramObject;
      }
      return GraphObject.Factory.access$000(localClass, (JSONObject)this.state);
    }
    if (str.equals("getInnerJSONObject")) {
      return ((GraphObjectProxy)Proxy.getInvocationHandler(paramObject)).state;
    }
    if (str.equals("asMap")) {
      return GraphObject.Factory.access$100((JSONObject)this.state);
    }
    if (str.equals("getProperty")) {
      return ((JSONObject)this.state).opt((String)paramArrayOfObject[0]);
    }
    if (str.equals("setProperty")) {
      return setJSONProperty(paramArrayOfObject);
    }
    if (str.equals("removeProperty"))
    {
      ((JSONObject)this.state).remove((String)paramArrayOfObject[0]);
      return null;
    }
    return throwUnexpectedMethodSignature(paramMethod);
  }
  
  private final Object proxyMapMethods(Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    if (str.equals("clear"))
    {
      JsonUtil.jsonObjectClear((JSONObject)this.state);
      return null;
    }
    if (str.equals("containsKey")) {
      return Boolean.valueOf(((JSONObject)this.state).has((String)paramArrayOfObject[0]));
    }
    if (str.equals("containsValue")) {
      return Boolean.valueOf(JsonUtil.jsonObjectContainsValue((JSONObject)this.state, paramArrayOfObject[0]));
    }
    if (str.equals("entrySet")) {
      return JsonUtil.jsonObjectEntrySet((JSONObject)this.state);
    }
    if (str.equals("get")) {
      return ((JSONObject)this.state).opt((String)paramArrayOfObject[0]);
    }
    if (str.equals("isEmpty"))
    {
      if (((JSONObject)this.state).length() == 0) {}
      for (boolean bool = true;; bool = false) {
        return Boolean.valueOf(bool);
      }
    }
    if (str.equals("keySet")) {
      return JsonUtil.jsonObjectKeySet((JSONObject)this.state);
    }
    if (str.equals("put")) {
      return setJSONProperty(paramArrayOfObject);
    }
    Map localMap;
    if (str.equals("putAll")) {
      if ((paramArrayOfObject[0] instanceof Map)) {
        localMap = (Map)paramArrayOfObject[0];
      }
    }
    for (;;)
    {
      JsonUtil.jsonObjectPutAll((JSONObject)this.state, localMap);
      return null;
      if ((paramArrayOfObject[0] instanceof GraphObject))
      {
        localMap = ((GraphObject)paramArrayOfObject[0]).asMap();
        continue;
        if (str.equals("remove"))
        {
          ((JSONObject)this.state).remove((String)paramArrayOfObject[0]);
          return null;
        }
        if (str.equals("size")) {
          return Integer.valueOf(((JSONObject)this.state).length());
        }
        if (str.equals("values")) {
          return JsonUtil.jsonObjectValues((JSONObject)this.state);
        }
        return throwUnexpectedMethodSignature(paramMethod);
      }
      else
      {
        localMap = null;
      }
    }
  }
  
  private Object setJSONProperty(Object[] paramArrayOfObject)
  {
    String str = (String)paramArrayOfObject[0];
    Object localObject = GraphObject.Factory.access$200(paramArrayOfObject[1]);
    try
    {
      ((JSONObject)this.state).putOpt(str, localObject);
      return null;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    Class localClass = paramMethod.getDeclaringClass();
    if (localClass == Object.class) {
      return proxyObjectMethods(paramObject, paramMethod, paramArrayOfObject);
    }
    if (localClass == Map.class) {
      return proxyMapMethods(paramMethod, paramArrayOfObject);
    }
    if (localClass == GraphObject.class) {
      return proxyGraphObjectMethods(paramObject, paramMethod, paramArrayOfObject);
    }
    if (GraphObject.class.isAssignableFrom(localClass)) {
      return proxyGraphObjectGettersAndSetters(paramMethod, paramArrayOfObject);
    }
    return throwUnexpectedMethodSignature(paramMethod);
  }
  
  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.graphObjectClass.getSimpleName();
    arrayOfObject[1] = this.state;
    return String.format("GraphObject{graphObjectClass=%s, state=%s}", arrayOfObject);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.model.GraphObject.Factory.GraphObjectProxy
 * JD-Core Version:    0.7.0.1
 */