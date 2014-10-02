package com.facebook;

import android.content.Context;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.FileLruCache.Limits;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObject.Factory;
import com.facebook.model.GraphObjectList;
import com.viber.voip.util.http.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class Response
{
  private static final String BODY_KEY = "body";
  private static final String CODE_KEY = "code";
  private static final int INVALID_SESSION_FACEBOOK_ERROR_CODE = 190;
  public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
  private static final String RESPONSE_CACHE_TAG = "ResponseCache";
  private static final String RESPONSE_LOG_TAG = "Response";
  private static FileLruCache responseCache;
  private final FacebookRequestError error;
  private final GraphObject graphObject;
  private final GraphObjectList<GraphObject> graphObjectList;
  private final boolean isFromCache;
  private final HttpRequest req;
  private final Request request;
  
  static
  {
    if (!Response.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  Response(Request paramRequest, HttpRequest paramHttpRequest, FacebookRequestError paramFacebookRequestError)
  {
    this.request = paramRequest;
    this.req = paramHttpRequest;
    this.graphObject = null;
    this.graphObjectList = null;
    this.isFromCache = false;
    this.error = paramFacebookRequestError;
  }
  
  Response(Request paramRequest, HttpRequest paramHttpRequest, GraphObject paramGraphObject, boolean paramBoolean)
  {
    this.request = paramRequest;
    this.req = paramHttpRequest;
    this.graphObject = paramGraphObject;
    this.graphObjectList = null;
    this.isFromCache = paramBoolean;
    this.error = null;
  }
  
  Response(Request paramRequest, HttpRequest paramHttpRequest, GraphObjectList<GraphObject> paramGraphObjectList, boolean paramBoolean)
  {
    this.request = paramRequest;
    this.req = paramHttpRequest;
    this.graphObject = null;
    this.graphObjectList = paramGraphObjectList;
    this.isFromCache = paramBoolean;
    this.error = null;
  }
  
  static List<Response> constructErrorResponses(List<Request> paramList, HttpRequest paramHttpRequest, FacebookException paramFacebookException)
  {
    int i = paramList.size();
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++) {
      localArrayList.add(new Response((Request)paramList.get(j), paramHttpRequest, new FacebookRequestError(paramHttpRequest, paramFacebookException)));
    }
    return localArrayList;
  }
  
  private static Response createResponseFromObject(Request paramRequest, HttpRequest paramHttpRequest, Object paramObject1, boolean paramBoolean, Object paramObject2)
  {
    if ((paramObject1 instanceof JSONObject))
    {
      JSONObject localJSONObject = (JSONObject)paramObject1;
      FacebookRequestError localFacebookRequestError = FacebookRequestError.checkResponseAndCreateError(localJSONObject, paramObject2, paramHttpRequest);
      if (localFacebookRequestError != null)
      {
        if (localFacebookRequestError.getErrorCode() == 190)
        {
          Session localSession = paramRequest.getSession();
          if (localSession != null) {
            localSession.closeAndClearTokenInformation();
          }
        }
        return new Response(paramRequest, paramHttpRequest, localFacebookRequestError);
      }
      Object localObject = Utility.getStringPropertyAsJSON(localJSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
      if ((localObject instanceof JSONObject)) {
        return new Response(paramRequest, paramHttpRequest, GraphObject.Factory.create((JSONObject)localObject), paramBoolean);
      }
      if ((localObject instanceof JSONArray)) {
        return new Response(paramRequest, paramHttpRequest, GraphObject.Factory.createList((JSONArray)localObject, GraphObject.class), paramBoolean);
      }
      paramObject1 = JSONObject.NULL;
    }
    if (paramObject1 == JSONObject.NULL) {
      return new Response(paramRequest, paramHttpRequest, (GraphObject)null, paramBoolean);
    }
    throw new FacebookException("Got unexpected object type in response, class: " + paramObject1.getClass().getSimpleName());
  }
  
  private static List<Response> createResponsesFromObject(HttpRequest paramHttpRequest, List<Request> paramList, Object paramObject, boolean paramBoolean)
  {
    int i = 0;
    assert ((paramHttpRequest != null) || (paramBoolean));
    int j = paramList.size();
    ArrayList localArrayList = new ArrayList(j);
    Request localRequest2;
    if (j == 1) {
      localRequest2 = (Request)paramList.get(0);
    }
    Object localObject;
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("body", paramObject);
        if (paramHttpRequest == null) {
          continue;
        }
        k = paramHttpRequest.getResponseCode();
        localJSONObject.put("code", k);
        localObject = new JSONArray();
        ((JSONArray)localObject).put(localJSONObject);
      }
      catch (JSONException localJSONException2)
      {
        int k;
        localArrayList.add(new Response(localRequest2, paramHttpRequest, new FacebookRequestError(paramHttpRequest, localJSONException2)));
        localObject = paramObject;
        continue;
      }
      catch (IOException localIOException)
      {
        localArrayList.add(new Response(localRequest2, paramHttpRequest, new FacebookRequestError(paramHttpRequest, localIOException)));
      }
      if (((localObject instanceof JSONArray)) && (((JSONArray)localObject).length() == j)) {
        break;
      }
      throw new FacebookException("Unexpected number of results");
      k = 200;
      continue;
      localObject = paramObject;
    }
    JSONArray localJSONArray = (JSONArray)localObject;
    for (;;)
    {
      if (i < localJSONArray.length())
      {
        Request localRequest1 = (Request)paramList.get(i);
        try
        {
          localArrayList.add(createResponseFromObject(localRequest1, paramHttpRequest, localJSONArray.get(i), paramBoolean, paramObject));
          i++;
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            localArrayList.add(new Response(localRequest1, paramHttpRequest, new FacebookRequestError(paramHttpRequest, localJSONException1)));
          }
        }
        catch (FacebookException localFacebookException)
        {
          for (;;)
          {
            localArrayList.add(new Response(localRequest1, paramHttpRequest, new FacebookRequestError(paramHttpRequest, localFacebookException)));
          }
        }
      }
    }
    return localArrayList;
  }
  
  static List<Response> createResponsesFromStream(InputStream paramInputStream, HttpRequest paramHttpRequest, RequestBatch paramRequestBatch, boolean paramBoolean)
  {
    String str = Utility.readStreamToString(paramInputStream);
    LoggingBehavior localLoggingBehavior1 = LoggingBehavior.INCLUDE_RAW_RESPONSES;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(str.length());
    arrayOfObject1[1] = str;
    Logger.log(localLoggingBehavior1, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", arrayOfObject1);
    List localList = createResponsesFromObject(paramHttpRequest, paramRequestBatch, new JSONTokener(str).nextValue(), paramBoolean);
    LoggingBehavior localLoggingBehavior2 = LoggingBehavior.REQUESTS;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = paramRequestBatch.getId();
    arrayOfObject2[1] = Integer.valueOf(str.length());
    arrayOfObject2[2] = localList;
    Logger.log(localLoggingBehavior2, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", arrayOfObject2);
    return localList;
  }
  
  /* Error */
  static List<Response> fromHttpConnection(HttpRequest paramHttpRequest, RequestBatch paramRequestBatch)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: instanceof 257
    //   6: ifeq +455 -> 461
    //   9: aload_1
    //   10: checkcast 257	com/facebook/internal/CacheableRequestBatch
    //   13: astore 15
    //   15: invokestatic 261	com/facebook/Response:getResponseCache	()Lcom/facebook/internal/FileLruCache;
    //   18: astore 16
    //   20: aload 15
    //   22: invokevirtual 264	com/facebook/internal/CacheableRequestBatch:getCacheKeyOverride	()Ljava/lang/String;
    //   25: astore 17
    //   27: aload 17
    //   29: invokestatic 268	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   32: ifeq +21 -> 53
    //   35: aload_1
    //   36: invokevirtual 269	com/facebook/RequestBatch:size	()I
    //   39: iconst_1
    //   40: if_icmpne +66 -> 106
    //   43: aload_1
    //   44: iconst_0
    //   45: invokevirtual 272	com/facebook/RequestBatch:get	(I)Lcom/facebook/Request;
    //   48: invokevirtual 275	com/facebook/Request:getUrlForSingleRequest	()Ljava/lang/String;
    //   51: astore 17
    //   53: aload 15
    //   55: invokevirtual 278	com/facebook/internal/CacheableRequestBatch:getForceRoundTrip	()Z
    //   58: ifne +390 -> 448
    //   61: aload 16
    //   63: ifnull +385 -> 448
    //   66: aload 17
    //   68: invokestatic 268	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   71: ifne +377 -> 448
    //   74: aload 16
    //   76: aload 17
    //   78: invokevirtual 283	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;)Ljava/io/InputStream;
    //   81: astore 25
    //   83: aload 25
    //   85: astore_2
    //   86: aload_2
    //   87: ifnull +33 -> 120
    //   90: aload_2
    //   91: aconst_null
    //   92: aload_1
    //   93: iconst_1
    //   94: invokestatic 285	com/facebook/Response:createResponsesFromStream	(Ljava/io/InputStream;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    //   97: astore 28
    //   99: aload_2
    //   100: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   103: aload 28
    //   105: areturn
    //   106: getstatic 246	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   109: ldc 23
    //   111: ldc_w 291
    //   114: invokestatic 294	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   117: goto -64 -> 53
    //   120: aload_2
    //   121: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   124: aload 16
    //   126: astore_3
    //   127: aload 17
    //   129: astore 26
    //   131: aload_2
    //   132: astore 4
    //   134: aload 26
    //   136: astore 5
    //   138: aload_0
    //   139: invokeinterface 190 1 0
    //   144: sipush 400
    //   147: if_icmplt +108 -> 255
    //   150: aload_0
    //   151: invokeinterface 298 1 0
    //   156: astore 4
    //   158: aload 4
    //   160: aload_0
    //   161: aload_1
    //   162: iconst_0
    //   163: invokestatic 285	com/facebook/Response:createResponsesFromStream	(Ljava/io/InputStream;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    //   166: astore 14
    //   168: aload 4
    //   170: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   173: aload 14
    //   175: areturn
    //   176: astore 23
    //   178: aconst_null
    //   179: astore 24
    //   181: aload 24
    //   183: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   186: aload 17
    //   188: astore 5
    //   190: aload 24
    //   192: astore 4
    //   194: aload 16
    //   196: astore_3
    //   197: goto -59 -> 138
    //   200: astore 21
    //   202: aload_2
    //   203: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   206: aload 16
    //   208: astore_3
    //   209: aload 17
    //   211: astore 22
    //   213: aload_2
    //   214: astore 4
    //   216: aload 22
    //   218: astore 5
    //   220: goto -82 -> 138
    //   223: astore 19
    //   225: aload_2
    //   226: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   229: aload 16
    //   231: astore_3
    //   232: aload 17
    //   234: astore 20
    //   236: aload_2
    //   237: astore 4
    //   239: aload 20
    //   241: astore 5
    //   243: goto -105 -> 138
    //   246: astore 18
    //   248: aload_2
    //   249: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   252: aload 18
    //   254: athrow
    //   255: aload_0
    //   256: invokeinterface 301 1 0
    //   261: astore 4
    //   263: aload_3
    //   264: ifnull -106 -> 158
    //   267: aload 5
    //   269: ifnull -111 -> 158
    //   272: aload 4
    //   274: ifnull -116 -> 158
    //   277: aload_3
    //   278: aload 5
    //   280: aload 4
    //   282: invokevirtual 305	com/facebook/internal/FileLruCache:interceptAndPut	(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    //   285: astore 13
    //   287: aload 13
    //   289: ifnull -131 -> 158
    //   292: aload 13
    //   294: astore 4
    //   296: goto -138 -> 158
    //   299: astore 11
    //   301: getstatic 246	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   304: ldc 26
    //   306: ldc_w 307
    //   309: iconst_1
    //   310: anewarray 4	java/lang/Object
    //   313: dup
    //   314: iconst_0
    //   315: aload 11
    //   317: aastore
    //   318: invokestatic 234	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   321: aload_1
    //   322: aload_0
    //   323: aload 11
    //   325: invokestatic 309	com/facebook/Response:constructErrorResponses	(Ljava/util/List;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)Ljava/util/List;
    //   328: astore 12
    //   330: aload 4
    //   332: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   335: aload 12
    //   337: areturn
    //   338: astore 9
    //   340: getstatic 246	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   343: ldc 26
    //   345: ldc_w 307
    //   348: iconst_1
    //   349: anewarray 4	java/lang/Object
    //   352: dup
    //   353: iconst_0
    //   354: aload 9
    //   356: aastore
    //   357: invokestatic 234	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   360: aload_1
    //   361: aload_0
    //   362: new 148	com/facebook/FacebookException
    //   365: dup
    //   366: aload 9
    //   368: invokespecial 312	com/facebook/FacebookException:<init>	(Ljava/lang/Throwable;)V
    //   371: invokestatic 309	com/facebook/Response:constructErrorResponses	(Ljava/util/List;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)Ljava/util/List;
    //   374: astore 10
    //   376: aload 4
    //   378: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   381: aload 10
    //   383: areturn
    //   384: astore 7
    //   386: getstatic 246	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   389: ldc 26
    //   391: ldc_w 307
    //   394: iconst_1
    //   395: anewarray 4	java/lang/Object
    //   398: dup
    //   399: iconst_0
    //   400: aload 7
    //   402: aastore
    //   403: invokestatic 234	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   406: aload_1
    //   407: aload_0
    //   408: new 148	com/facebook/FacebookException
    //   411: dup
    //   412: aload 7
    //   414: invokespecial 312	com/facebook/FacebookException:<init>	(Ljava/lang/Throwable;)V
    //   417: invokestatic 309	com/facebook/Response:constructErrorResponses	(Ljava/util/List;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)Ljava/util/List;
    //   420: astore 8
    //   422: aload 4
    //   424: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   427: aload 8
    //   429: areturn
    //   430: astore 6
    //   432: aload 4
    //   434: invokestatic 289	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   437: aload 6
    //   439: athrow
    //   440: astore 27
    //   442: aload_2
    //   443: astore 24
    //   445: goto -264 -> 181
    //   448: aload 16
    //   450: astore_3
    //   451: aload 17
    //   453: astore 5
    //   455: aconst_null
    //   456: astore 4
    //   458: goto -320 -> 138
    //   461: aconst_null
    //   462: astore_3
    //   463: aconst_null
    //   464: astore 4
    //   466: aconst_null
    //   467: astore 5
    //   469: goto -331 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	472	0	paramHttpRequest	HttpRequest
    //   0	472	1	paramRequestBatch	RequestBatch
    //   1	442	2	localObject1	Object
    //   126	337	3	localFileLruCache1	FileLruCache
    //   132	333	4	localObject2	Object
    //   136	332	5	localObject3	Object
    //   430	8	6	localObject4	Object
    //   384	29	7	localIOException1	IOException
    //   420	8	8	localList1	List
    //   338	29	9	localJSONException1	JSONException
    //   374	8	10	localList2	List
    //   299	25	11	localFacebookException1	FacebookException
    //   328	8	12	localList3	List
    //   285	8	13	localInputStream1	InputStream
    //   166	8	14	localList4	List
    //   13	41	15	localCacheableRequestBatch	com.facebook.internal.CacheableRequestBatch
    //   18	431	16	localFileLruCache2	FileLruCache
    //   25	427	17	str1	String
    //   246	7	18	localObject5	Object
    //   223	1	19	localIOException2	IOException
    //   234	6	20	str2	String
    //   200	1	21	localJSONException2	JSONException
    //   211	6	22	str3	String
    //   176	1	23	localFacebookException2	FacebookException
    //   179	265	24	localObject6	Object
    //   81	3	25	localInputStream2	InputStream
    //   129	6	26	str4	String
    //   440	1	27	localFacebookException3	FacebookException
    //   97	7	28	localList5	List
    // Exception table:
    //   from	to	target	type
    //   74	83	176	com/facebook/FacebookException
    //   74	83	200	org/json/JSONException
    //   90	99	200	org/json/JSONException
    //   74	83	223	java/io/IOException
    //   90	99	223	java/io/IOException
    //   74	83	246	finally
    //   90	99	246	finally
    //   138	158	299	com/facebook/FacebookException
    //   158	168	299	com/facebook/FacebookException
    //   255	263	299	com/facebook/FacebookException
    //   277	287	299	com/facebook/FacebookException
    //   138	158	338	org/json/JSONException
    //   158	168	338	org/json/JSONException
    //   255	263	338	org/json/JSONException
    //   277	287	338	org/json/JSONException
    //   138	158	384	java/io/IOException
    //   158	168	384	java/io/IOException
    //   255	263	384	java/io/IOException
    //   277	287	384	java/io/IOException
    //   138	158	430	finally
    //   158	168	430	finally
    //   255	263	430	finally
    //   277	287	430	finally
    //   301	330	430	finally
    //   340	376	430	finally
    //   386	422	430	finally
    //   90	99	440	com/facebook/FacebookException
  }
  
  static FileLruCache getResponseCache()
  {
    if (responseCache == null)
    {
      Context localContext = Session.getStaticContext();
      if (localContext != null) {
        responseCache = new FileLruCache(localContext, "ResponseCache", new FileLruCache.Limits());
      }
    }
    return responseCache;
  }
  
  public final FacebookRequestError getError()
  {
    return this.error;
  }
  
  public final GraphObject getGraphObject()
  {
    return this.graphObject;
  }
  
  public final <T extends GraphObject> T getGraphObjectAs(Class<T> paramClass)
  {
    if (this.graphObject == null) {
      return null;
    }
    if (paramClass == null) {
      throw new NullPointerException("Must pass in a valid interface that extends GraphObject");
    }
    return this.graphObject.cast(paramClass);
  }
  
  public final GraphObjectList<GraphObject> getGraphObjectList()
  {
    return this.graphObjectList;
  }
  
  public final <T extends GraphObject> GraphObjectList<T> getGraphObjectListAs(Class<T> paramClass)
  {
    if (this.graphObjectList == null) {
      return null;
    }
    return this.graphObjectList.castToListOf(paramClass);
  }
  
  public final HttpRequest getHttpRequest()
  {
    return this.req;
  }
  
  public final boolean getIsFromCache()
  {
    return this.isFromCache;
  }
  
  public Request getRequest()
  {
    return this.request;
  }
  
  public Request getRequestForPagedResults(Response.PagingDirection paramPagingDirection)
  {
    Response.PagingInfo localPagingInfo;
    String str;
    if (this.graphObject != null)
    {
      localPagingInfo = ((Response.PagedResults)this.graphObject.cast(Response.PagedResults.class)).getPaging();
      if (localPagingInfo != null) {
        if (paramPagingDirection == Response.PagingDirection.NEXT) {
          str = localPagingInfo.getNext();
        }
      }
    }
    for (;;)
    {
      if (Utility.isNullOrEmpty(str)) {}
      while ((str != null) && (str.equals(this.request.getUrlForSingleRequest())))
      {
        return null;
        str = localPagingInfo.getPrevious();
        break;
      }
      try
      {
        Request localRequest = new Request(this.request.getSession(), new URL(str));
        return localRequest;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        return null;
      }
      str = null;
    }
  }
  
  public String toString()
  {
    for (;;)
    {
      try
      {
        Object[] arrayOfObject = new Object[1];
        if (this.req == null) {
          continue;
        }
        i = this.req.getResponseCode();
        arrayOfObject[0] = Integer.valueOf(i);
        String str2 = String.format("%d", arrayOfObject);
        str1 = str2;
      }
      catch (IOException localIOException)
      {
        int i;
        String str1 = "unknown";
        continue;
      }
      return "{Response: " + " responseCode: " + str1 + ", graphObject: " + this.graphObject + ", error: " + this.error + ", isFromCache:" + this.isFromCache + "}";
      i = 200;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.Response
 * JD-Core Version:    0.7.0.1
 */