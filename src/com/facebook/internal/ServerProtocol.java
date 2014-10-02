package com.facebook.internal;

import java.util.Collection;

public final class ServerProtocol
{
  public static final String BATCHED_REST_METHOD_URL_BASE = "method/";
  public static final String DIALOG_AUTHORITY = "m.facebook.com";
  public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
  public static final String DIALOG_PARAM_DISPLAY = "display";
  public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
  public static final String DIALOG_PARAM_SCOPE = "scope";
  public static final String DIALOG_PARAM_TYPE = "type";
  public static final String DIALOG_PATH = "dialog/";
  static final String FACEBOOK_COM = "facebook.com";
  public static final String GRAPH_URL = "https://graph.facebook.com";
  public static final String GRAPH_URL_BASE = "https://graph.facebook.com/";
  public static final String REST_URL_BASE = "https://api.facebook.com/method/";
  public static final Collection<String> errorsProxyAuthDisabled = Utility.unmodifiableCollection(new String[] { "service_disabled", "AndroidAuthKillSwitchException" });
  public static final Collection<String> errorsUserCanceled = Utility.unmodifiableCollection(new String[] { "access_denied", "OAuthAccessDeniedException" });
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.internal.ServerProtocol
 * JD-Core Version:    0.7.0.1
 */