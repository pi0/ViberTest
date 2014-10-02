package com.facebook;

import com.facebook.internal.Utility;
import com.viber.voip.util.http.HttpRequest;
import org.json.JSONException;
import org.json.JSONObject;

public final class FacebookRequestError
{
  private static final String BODY_KEY = "body";
  private static final String CODE_KEY = "code";
  private static final int EC_APP_NOT_INSTALLED = 458;
  private static final int EC_APP_TOO_MANY_CALLS = 4;
  private static final int EC_INVALID_SESSION = 102;
  private static final int EC_INVALID_TOKEN = 190;
  private static final int EC_PASSWORD_CHANGED = 460;
  private static final int EC_PERMISSION_DENIED = 10;
  private static final FacebookRequestError.Range EC_RANGE_PERMISSION = new FacebookRequestError.Range(200, 299, null);
  private static final int EC_SERVICE_UNAVAILABLE = 2;
  private static final int EC_UNCONFIRMED_USER = 464;
  private static final int EC_UNKNOWN_ERROR = 1;
  private static final int EC_USER_CHECKPOINTED = 459;
  private static final int EC_USER_TOO_MANY_CALLS = 17;
  private static final String ERROR_CODE_FIELD_KEY = "code";
  private static final String ERROR_CODE_KEY = "error_code";
  private static final String ERROR_KEY = "error";
  private static final String ERROR_MESSAGE_FIELD_KEY = "message";
  private static final String ERROR_MSG_KEY = "error_msg";
  private static final String ERROR_REASON_KEY = "error_reason";
  private static final String ERROR_SUB_CODE_KEY = "error_subcode";
  private static final String ERROR_TYPE_FIELD_KEY = "type";
  private static final FacebookRequestError.Range HTTP_RANGE_CLIENT_ERROR = new FacebookRequestError.Range(400, 499, null);
  private static final FacebookRequestError.Range HTTP_RANGE_SERVER_ERROR = new FacebookRequestError.Range(500, 599, null);
  private static final FacebookRequestError.Range HTTP_RANGE_SUCCESS = new FacebookRequestError.Range(200, 299, null);
  public static final int INVALID_ERROR_CODE = -1;
  public static final int INVALID_HTTP_STATUS_CODE = -1;
  private static final int INVALID_MESSAGE_ID;
  private final Object batchRequestResult;
  private final FacebookRequestError.Category category;
  private final int errorCode;
  private final String errorMessage;
  private final String errorType;
  private final FacebookException exception;
  private final HttpRequest req;
  private final JSONObject requestResult;
  private final JSONObject requestResultBody;
  private final int requestStatusCode;
  private final boolean shouldNotifyUser;
  private final int subErrorCode;
  private final int userActionMessageId;
  
  private FacebookRequestError(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Object paramObject, HttpRequest paramHttpRequest)
  {
    this(paramInt1, paramInt2, paramInt3, paramString1, paramString2, paramJSONObject1, paramJSONObject2, paramObject, paramHttpRequest, null);
  }
  
  private FacebookRequestError(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Object paramObject, HttpRequest paramHttpRequest, FacebookException paramFacebookException)
  {
    this.requestStatusCode = paramInt1;
    this.errorCode = paramInt2;
    this.subErrorCode = paramInt3;
    this.errorType = paramString1;
    this.errorMessage = paramString2;
    this.requestResultBody = paramJSONObject1;
    this.requestResult = paramJSONObject2;
    this.batchRequestResult = paramObject;
    this.req = paramHttpRequest;
    int i;
    FacebookRequestError.Category localCategory;
    int j;
    if (paramFacebookException != null)
    {
      this.exception = paramFacebookException;
      i = 1;
      if (i == 0) {
        break label124;
      }
      localCategory = FacebookRequestError.Category.CLIENT;
      j = 0;
    }
    label338:
    label348:
    for (;;)
    {
      this.category = localCategory;
      this.userActionMessageId = j;
      this.shouldNotifyUser = bool;
      return;
      this.exception = new FacebookServiceException(this, paramString2);
      i = 0;
      break;
      label124:
      if ((paramInt2 == 1) || (paramInt2 == 2))
      {
        localCategory = FacebookRequestError.Category.SERVER;
        j = 0;
      }
      for (;;)
      {
        if (localCategory != null) {
          break label348;
        }
        if (HTTP_RANGE_CLIENT_ERROR.contains(paramInt1))
        {
          localCategory = FacebookRequestError.Category.BAD_REQUEST;
          break;
          if ((paramInt2 == 4) || (paramInt2 == 17))
          {
            localCategory = FacebookRequestError.Category.THROTTLING;
            bool = false;
            j = 0;
            continue;
          }
          if ((paramInt2 == 10) || (EC_RANGE_PERMISSION.contains(paramInt2)))
          {
            localCategory = FacebookRequestError.Category.PERMISSION;
            j = 2131493973;
            bool = false;
            continue;
          }
          if ((paramInt2 != 102) && (paramInt2 != 190)) {
            break label338;
          }
          if ((paramInt3 == 459) || (paramInt3 == 464))
          {
            localCategory = FacebookRequestError.Category.AUTHENTICATION_RETRY;
            j = 2131493969;
            bool = true;
            continue;
          }
          localCategory = FacebookRequestError.Category.AUTHENTICATION_REOPEN_SESSION;
          if (paramInt3 == 458)
          {
            j = 2131493970;
            bool = false;
            continue;
          }
          if (paramInt3 == 460)
          {
            j = 2131493971;
            bool = false;
            continue;
          }
          j = 2131493972;
          bool = false;
          continue;
        }
        if (HTTP_RANGE_SERVER_ERROR.contains(paramInt1))
        {
          localCategory = FacebookRequestError.Category.SERVER;
          break;
        }
        localCategory = FacebookRequestError.Category.OTHER;
        break;
        bool = false;
        j = 0;
        localCategory = null;
      }
    }
  }
  
  public FacebookRequestError(int paramInt, String paramString1, String paramString2)
  {
    this(-1, paramInt, -1, paramString1, paramString2, null, null, null, null, null);
  }
  
  FacebookRequestError(HttpRequest paramHttpRequest, Exception paramException) {}
  
  static FacebookRequestError checkResponseAndCreateError(JSONObject paramJSONObject, Object paramObject, HttpRequest paramHttpRequest)
  {
    int i = -1;
    for (;;)
    {
      try
      {
        if (paramJSONObject.has("code"))
        {
          int j = paramJSONObject.getInt("code");
          Object localObject = Utility.getStringPropertyAsJSON(paramJSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
          if ((localObject != null) && ((localObject instanceof JSONObject)))
          {
            JSONObject localJSONObject2 = (JSONObject)localObject;
            if (localJSONObject2.has("error"))
            {
              JSONObject localJSONObject3 = (JSONObject)Utility.getStringPropertyAsJSON(localJSONObject2, "error", null);
              String str3 = localJSONObject3.optString("type", null);
              str2 = localJSONObject3.optString("message", null);
              int i1 = localJSONObject3.optInt("code", -1);
              i = localJSONObject3.optInt("error_subcode", -1);
              n = 1;
              m = i1;
              str1 = str3;
              if (n != 0) {
                return new FacebookRequestError(j, m, i, str1, str2, localJSONObject2, paramJSONObject, paramObject, paramHttpRequest);
              }
            }
            else
            {
              if ((!localJSONObject2.has("error_code")) && (!localJSONObject2.has("error_msg")) && (!localJSONObject2.has("error_reason"))) {
                break label294;
              }
              str1 = localJSONObject2.optString("error_reason", null);
              str2 = localJSONObject2.optString("error_msg", null);
              int k = localJSONObject2.optInt("error_code", -1);
              i = localJSONObject2.optInt("error_subcode", -1);
              m = k;
              n = 1;
              continue;
            }
          }
          if (!HTTP_RANGE_SUCCESS.contains(j))
          {
            if (!paramJSONObject.has("body")) {
              break label288;
            }
            localJSONObject1 = (JSONObject)Utility.getStringPropertyAsJSON(paramJSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            FacebookRequestError localFacebookRequestError = new FacebookRequestError(j, -1, -1, null, null, localJSONObject1, paramJSONObject, paramObject, paramHttpRequest);
            return localFacebookRequestError;
          }
        }
      }
      catch (JSONException localJSONException) {}
      return null;
      label288:
      JSONObject localJSONObject1 = null;
      continue;
      label294:
      int m = i;
      int n = 0;
      String str1 = null;
      String str2 = null;
    }
  }
  
  public Object getBatchRequestResult()
  {
    return this.batchRequestResult;
  }
  
  public FacebookRequestError.Category getCategory()
  {
    return this.category;
  }
  
  public int getErrorCode()
  {
    return this.errorCode;
  }
  
  public String getErrorMessage()
  {
    if (this.errorMessage != null) {
      return this.errorMessage;
    }
    return this.exception.getLocalizedMessage();
  }
  
  public String getErrorType()
  {
    return this.errorType;
  }
  
  public FacebookException getException()
  {
    return this.exception;
  }
  
  public HttpRequest getHttpRequest()
  {
    return this.req;
  }
  
  public JSONObject getRequestResult()
  {
    return this.requestResult;
  }
  
  public JSONObject getRequestResultBody()
  {
    return this.requestResultBody;
  }
  
  public int getRequestStatusCode()
  {
    return this.requestStatusCode;
  }
  
  public int getSubErrorCode()
  {
    return this.subErrorCode;
  }
  
  public int getUserActionMessageId()
  {
    return this.userActionMessageId;
  }
  
  public boolean shouldNotifyUser()
  {
    return this.shouldNotifyUser;
  }
  
  public String toString()
  {
    return "{HttpStatus: " + this.requestStatusCode + ", errorCode: " + this.errorCode + ", errorType: " + this.errorType + ", errorMessage: " + this.errorMessage + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.FacebookRequestError
 * JD-Core Version:    0.7.0.1
 */