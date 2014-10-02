.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range; = null

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range; = null

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range; = null

.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range; = null

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1

.field private static final INVALID_MESSAGE_ID:I


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/facebook/FacebookRequestError$Category;

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final exception:Lcom/facebook/FacebookException;

.field private final req:Lcom/viber/voip/util/http/HttpRequest;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final shouldNotifyUser:Z

.field private final subErrorCode:I

.field private final userActionMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    .line 88
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    .line 89
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    .line 90
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)V

    .line 183
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 111
    iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 112
    iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 113
    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    .line 116
    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    .line 117
    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    .line 118
    iput-object p9, p0, Lcom/facebook/FacebookRequestError;->req:Lcom/viber/voip/util/http/HttpRequest;

    .line 121
    if-eqz p10, :cond_1

    .line 122
    iput-object p10, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    move v3, v1

    .line 130
    :goto_0
    const/4 v2, 0x0

    .line 133
    if-eqz v3, :cond_2

    .line 134
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    move-object v2, v1

    move v1, v0

    .line 173
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    .line 174
    iput v1, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    .line 175
    iput-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    .line 176
    return-void

    .line 125
    :cond_1
    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    move v3, v0

    goto :goto_0

    .line 137
    :cond_2
    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 138
    :cond_3
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    move v1, v0

    .line 162
    :goto_2
    if-nez v2, :cond_0

    .line 163
    sget-object v2, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v2, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 164
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1

    .line 139
    :cond_4
    const/4 v3, 0x4

    if-eq p2, v3, :cond_5

    const/16 v3, 0x11

    if-ne p2, v3, :cond_6

    .line 140
    :cond_5
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    move v1, v0

    goto :goto_2

    .line 141
    :cond_6
    const/16 v3, 0xa

    if-eq p2, v3, :cond_7

    sget-object v3, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v3, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 142
    :cond_7
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    .line 143
    const v1, 0x7f0c0455

    goto :goto_2

    .line 144
    :cond_8
    const/16 v3, 0x66

    if-eq p2, v3, :cond_9

    const/16 v3, 0xbe

    if-ne p2, v3, :cond_10

    .line 145
    :cond_9
    const/16 v2, 0x1cb

    if-eq p3, v2, :cond_a

    const/16 v2, 0x1d0

    if-ne p3, v2, :cond_b

    .line 146
    :cond_a
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    .line 147
    const v0, 0x7f0c0451

    move v4, v1

    move v1, v0

    move v0, v4

    .line 148
    goto :goto_2

    .line 150
    :cond_b
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    .line 152
    const/16 v1, 0x1ca

    if-ne p3, v1, :cond_c

    .line 153
    const v1, 0x7f0c0452

    goto :goto_2

    .line 154
    :cond_c
    const/16 v1, 0x1cc

    if-ne p3, v1, :cond_d

    .line 155
    const v1, 0x7f0c0453

    goto :goto_2

    .line 157
    :cond_d
    const v1, 0x7f0c0454

    goto :goto_2

    .line 165
    :cond_e
    sget-object v2, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v2, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 166
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1

    .line 168
    :cond_f
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1

    :cond_10
    move v1, v0

    goto :goto_2
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 193
    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)V

    .line 195
    return-void
.end method

.method constructor <init>(Lcom/viber/voip/util/http/HttpRequest;Ljava/lang/Exception;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 186
    instance-of v0, p2, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/facebook/FacebookException;

    move-object v10, p2

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;Lcom/facebook/FacebookException;)V

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance v10, Lcom/facebook/FacebookException;

    invoke-direct {v10, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;)Lcom/facebook/FacebookRequestError;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v10, 0x0

    .line 349
    :try_start_0
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 351
    const-string/jumbo v0, "body"

    const-string/jumbo v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v0, v4}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 354
    if-eqz v6, :cond_2

    instance-of v0, v6, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 355
    check-cast v6, Lorg/json/JSONObject;

    .line 363
    const/4 v0, 0x0

    .line 364
    const-string/jumbo v4, "error"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    const-string/jumbo v0, "error"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 368
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 369
    const-string/jumbo v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    const-string/jumbo v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 371
    const-string/jumbo v3, "error_subcode"

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v2

    move v2, v4

    move-object v4, v7

    .line 382
    :goto_0
    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Lcom/facebook/FacebookRequestError;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;)V

    .line 401
    :goto_1
    return-object v0

    .line 373
    :cond_0
    const-string/jumbo v4, "error_code"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "error_msg"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "error_reason"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    :cond_1
    const-string/jumbo v0, "error_reason"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    const-string/jumbo v0, "error_msg"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    const-string/jumbo v0, "error_code"

    const/4 v3, -0x1

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 378
    const-string/jumbo v3, "error_subcode"

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v11, v2

    move v2, v0

    move v0, v11

    .line 379
    goto :goto_0

    .line 389
    :cond_2
    sget-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v0, v1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    new-instance v0, Lcom/facebook/FacebookRequestError;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "body"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "body"

    const-string/jumbo v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v6, v7}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    :goto_2
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Lcom/viber/voip/util/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v10

    .line 401
    goto :goto_1

    :cond_4
    move-object v6, v10

    .line 390
    goto :goto_2

    :cond_5
    move v2, v3

    move-object v5, v10

    move-object v4, v10

    goto :goto_0
.end method


# virtual methods
.method public getBatchRequestResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 276
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public getHttpRequest()Lcom/viber/voip/util/http/HttpRequest;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->req:Lcom/viber/voip/util/http/HttpRequest;

    return-object v0
.end method

.method public getRequestResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestResultBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestStatusCode()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public getSubErrorCode()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    return v0
.end method

.method public getUserActionMessageId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    return v0
.end method

.method public shouldNotifyUser()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
