.class public Lcom/viber/voip/pixie/PixieServices;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTIVATION_LISTS_CACHE_TIME:J = 0x1499700L

.field private static final ACTIVATION_LISTS_URL:Ljava/lang/String; = null

.field private static final CONFIG_KEY_CALLS_OVER_UDP:I = 0x0

.field private static final CONFIG_KEY_CODES:Ljava/lang/String; = "ueon"

.field private static final CONFIG_KEY_NUMBER_OF_EDGE_LISTS:I = 0x1

.field private static final CONFIG_KEY_OBFUSCATION_POLICY:I = 0x2

.field private static final CONFIG_KEY_UNBLOCKER_2_EDGE_LISTS:I = 0x3

.field static final CRYPTO_STRING_ID_ACTIVATION_ALGORITHM:I = 0x2

.field static final CRYPTO_STRING_ID_ACTIVATION_KEYGEN_ALGORITHM:I = 0x7

.field static final CRYPTO_STRING_ID_ACTIVATION_KEYSPEC_ALGORITHM:I = 0x9

.field static final CRYPTO_STRING_ID_ACTIVATION_PASSWORD:I = 0x3

.field public static final EDGE_LIST_FILE_NAME_SUFFIX_V1:Ljava/lang/String; = ".e"

.field private static final EDGE_PROXY_LIST_CACHE_TIME:J = 0xcdfe60L

.field private static final EDGE_PROXY_LIST_PREFIX_URL:Ljava/lang/String; = null

.field private static final EDGE_PROXY_LIST_REFRESH_INTERVAL_MS:I = 0xdbba00

.field private static final EXTERNAL_CONNECTION_TEST_URLS:[I = null

.field private static final EXTERNAL_IP_CACHE_TIME:J = 0x6ddd00L

.field private static IP_PROVIDERS_FALLBACK:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static IP_PROVIDER_GOOGLE:Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider; = null

.field public static final OBFUSCATION_POLICY_HTTP:C = 'h'

.field public static final OBFUSCATION_POLICY_SSL:C = 's'

.field static final PIXIE_REFRESH_RETRY_ON_ERROR_TIMEOUT_MS:I = 0x36ee80

.field private static final PREFS_NAME:Ljava/lang/String; = "ub"

.field private static final PREF_NAME_ACTIVATION_DATA:Ljava/lang/String; = "ad"

.field private static final PREF_NAME_ACTIVATION_DATA_EXPIRATION:Ljava/lang/String; = "ae"

.field private static final PREF_NAME_EDGE_PROXIES:Ljava/lang/String; = "ep"

.field private static final PREF_NAME_EDGE_PROXIES_EXPIRATION:Ljava/lang/String; = "ee"

.field private static final PREF_NAME_EXTERNAL_IP:Ljava/lang/String; = "ei"

.field private static final PREF_NAME_EXTERNAL_IP_EXPIRATION:Ljava/lang/String; = "ie"

.field private static final REGEXP_IP_ADDRESS:Ljava/lang/String; = "(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})"

.field private static TAG:Ljava/lang/String; = null

.field private static final URL_CONNECT_TIMEOUT:I = 0x2710

.field private static final VIBER_DOWN_URL:Ljava/lang/String;

.field private static instance:Lcom/viber/voip/pixie/PixieServices;


# instance fields
.field private activationAllowExternalIP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private activationAllowNetworkOperator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private activationAllowNetworkOperator_v2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private activationAllowPhoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private activationAllowPhoneNumber_v2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private activationConfigurationValue:[Ljava/lang/String;

.field private activationDataEncrypted:Ljava/lang/String;

.field private activationDataExpirationTime:J

.field private activationRestrictPhoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private applicationContext:Landroid/content/Context;

.field private edgeProxyContent:Ljava/lang/String;

.field private edgeProxyContentExpirationTime:J

.field private externalIP:Ljava/lang/String;

.field private externalIPExpirationTime:J

.field private listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

.field private refresherThread:Ljava/lang/Thread;

.field private unblockerVersion:S

.field private userHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v4, 0x4

    const/16 v13, 0x28

    const/4 v9, -0x1

    .line 35
    const-string/jumbo v0, "UB"

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->instance:Lcom/viber/voip/pixie/PixieServices;

    .line 39
    new-instance v0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    const/16 v1, 0x40

    const/16 v2, 0x5a

    const/16 v3, 0x64

    const/16 v5, 0x21

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDER_GOOGLE:Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    new-instance v5, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    const/16 v6, 0x14

    const/16 v7, 0xc

    const/16 v8, 0xc8

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v6, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    new-instance v0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    const/16 v1, 0x2f

    const/4 v2, 0x3

    const/16 v3, 0x78

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    new-instance v7, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    const/16 v8, 0x12

    move v10, v13

    move v11, v9

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    new-instance v7, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    move v8, v14

    move v10, v13

    move v11, v9

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    new-instance v5, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    const/16 v6, 0x18

    const/16 v7, 0xb

    move v8, v13

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;-><init>(IIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-array v0, v14, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->EXTERNAL_CONNECTION_TEST_URLS:[I

    .line 96
    const/16 v0, 0x29

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->ACTIVATION_LISTS_URL:Ljava/lang/String;

    .line 98
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->VIBER_DOWN_URL:Ljava/lang/String;

    .line 100
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->EDGE_PROXY_LIST_PREFIX_URL:Ljava/lang/String;

    return-void

    .line 87
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationRestrictPhoneNumber:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowExternalIP:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber_v2:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator_v2:Ljava/util/List;

    .line 186
    const-string/jumbo v0, "ueon"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/viber/voip/pixie/PixieServices;->unblockerVersion:S

    .line 860
    new-instance v0, Lcom/viber/voip/pixie/PixieServices$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieServices$1;-><init>(Lcom/viber/voip/pixie/PixieServices;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->refresherThread:Ljava/lang/Thread;

    .line 205
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices;->applicationContext:Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->restoreSavedState()V

    .line 209
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->refresherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/pixie/PixieServices;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->validateAndCorrectTimestamps()V

    return-void
.end method

.method static synthetic access$300(Lcom/viber/voip/pixie/PixieServices;)J
    .locals 2
    .parameter

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/viber/voip/pixie/PixieServices;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/viber/voip/pixie/PixieServices;)J
    .locals 2
    .parameter

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/viber/voip/pixie/PixieServices;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    return-wide p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/viber/voip/pixie/PixieServices;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->loadActivationLists(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/viber/voip/pixie/PixieServices;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->loadEdgeProxyList(Z)Z

    move-result v0

    return v0
.end method

.method private calculateUserHashCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    .line 358
    :goto_0
    iget v0, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    .line 359
    return-void

    .line 352
    :cond_0
    if-eqz p2, :cond_1

    .line 353
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    goto :goto_0
.end method

.method private canConnectExternally()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 388
    const/4 v4, 0x2

    .line 389
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->EXTERNAL_CONNECTION_TEST_URLS:[I

    array-length v0, v0

    int-to-double v5, v0

    mul-double/2addr v2, v5

    double-to-int v0, v2

    move v2, v1

    move v3, v0

    .line 390
    :goto_0
    if-ge v2, v4, :cond_0

    .line 392
    :try_start_0
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->EXTERNAL_CONNECTION_TEST_URLS:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 395
    const/16 v5, 0x1388

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 396
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 397
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    const/4 v0, 0x1

    .line 403
    :goto_1
    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 401
    add-int/lit8 v0, v3, 0x1

    sget-object v3, Lcom/viber/voip/pixie/PixieServices;->EXTERNAL_CONNECTION_TEST_URLS:[I

    array-length v3, v3

    rem-int v3, v0, v3

    .line 390
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 403
    goto :goto_1
.end method

.method private decodeActivationLists()V
    .locals 12

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 667
    :cond_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 576
    new-array v6, v4, [B

    move v3, v1

    .line 578
    :goto_0
    if-ge v3, v4, :cond_4

    .line 579
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    .line 581
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    :goto_2
    aput-byte v0, v6, v3

    .line 578
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 580
    :cond_2
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 581
    goto :goto_2

    .line 584
    :cond_4
    array-length v0, v6

    add-int/lit8 v0, v0, -0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v7, v0, [B

    .line 590
    aget-byte v0, v6, v2

    and-int/lit8 v8, v0, 0x46

    .line 591
    const v9, 0x7fffffff

    move v4, v1

    move v0, v2

    move v3, v2

    .line 592
    :goto_3
    if-ge v4, v8, :cond_5

    .line 593
    xor-int/lit8 v5, v0, 0x7

    xor-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v5

    rem-int v5, v3, v9

    .line 592
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v5

    goto :goto_3

    .line 599
    :cond_5
    const/16 v5, 0xc

    move v4, v3

    move v3, v0

    move v0, v1

    .line 601
    :goto_4
    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 602
    add-int v8, v0, v5

    aget-byte v8, v6, v8

    .line 603
    aget-byte v10, v6, v0

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    .line 604
    xor-int/2addr v8, v4

    int-to-byte v8, v8

    .line 606
    aput-byte v8, v7, v0

    .line 609
    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v5

    .line 610
    xor-int/lit8 v8, v3, 0x7

    xor-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v8

    rem-int/2addr v4, v9

    .line 601
    add-int/lit8 v0, v0, 0x1

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_4

    .line 615
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 618
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationRestrictPhoneNumber:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 619
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 620
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowExternalIP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 621
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 622
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber_v2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 623
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator_v2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 625
    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 626
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 627
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    .line 630
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 626
    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 632
    :sswitch_0
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 662
    :catch_0
    move-exception v3

    goto :goto_6

    .line 636
    :sswitch_1
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationRestrictPhoneNumber:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 640
    :sswitch_2
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowExternalIP:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 644
    :sswitch_3
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 648
    :sswitch_4
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator_v2:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 651
    :sswitch_5
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber_v2:Ljava/util/List;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 655
    :sswitch_6
    const-string/jumbo v4, "ueon"

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 656
    if-ltz v4, :cond_7

    .line 657
    iget-object v5, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x63 -> :sswitch_6
        0x69 -> :sswitch_2
        0x6d -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_0
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method private getExternalIP()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 408
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->externalIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    iget-wide v2, p0, Lcom/viber/voip/pixie/PixieServices;->externalIPExpirationTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->externalIP:Ljava/lang/String;

    .line 436
    :goto_0
    return-object v0

    .line 415
    :cond_0
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDER_GOOGLE:Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    invoke-virtual {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->getExternalIP()Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;

    move-result-object v0

    .line 416
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$100(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)I

    move-result v1

    if-gez v1, :cond_1

    .line 417
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_1
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$100(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)I

    move-result v1

    if-ne v1, v4, :cond_4

    if-nez v0, :cond_4

    .line 427
    :cond_2
    :goto_1
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/viber/voip/pixie/PixieServices;->IP_PROVIDERS_FALLBACK:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;

    .line 429
    invoke-virtual {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider;->getExternalIP()Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;

    move-result-object v0

    .line 432
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 433
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->setExternalIP(Ljava/lang/String;)V

    .line 436
    :cond_3
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->ip:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$000(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_4
    #getter for: Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->statusCode:I
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;->access$100(Lcom/viber/voip/pixie/PixieServices$ExternalIpProvider$Result;)I

    move-result v0

    if-eq v0, v4, :cond_2

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/viber/voip/pixie/PixieServices;
    .locals 2
    .parameter

    .prologue
    .line 159
    const-class v1, Lcom/viber/voip/pixie/PixieServices;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->instance:Lcom/viber/voip/pixie/PixieServices;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/viber/voip/pixie/PixieServices;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/pixie/PixieServices;->instance:Lcom/viber/voip/pixie/PixieServices;

    .line 162
    :cond_0
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->instance:Lcom/viber/voip/pixie/PixieServices;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "ub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private isPixieEnabledForIP(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 519
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowExternalIP:Ljava/util/List;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowExternalIP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 521
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    monitor-exit v1

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_1
    monitor-exit v1

    .line 526
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPixieEnabledForNetworkOperator(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 489
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 499
    :goto_0
    return v0

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator:Ljava/util/List;

    monitor-enter v2

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 494
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 499
    goto :goto_0
.end method

.method private isPixieEnabledForNetworkOperator_v2(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 504
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 514
    :goto_0
    return v0

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator_v2:Ljava/util/List;

    monitor-enter v2

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowNetworkOperator_v2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 509
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 514
    goto :goto_0
.end method

.method private isPixieEnabledForPhone(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 467
    :goto_0
    return v0

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber:Ljava/util/List;

    monitor-enter v2

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 462
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 467
    goto :goto_0
.end method

.method private isPixieEnabledForPhone_v2(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 483
    :goto_0
    return v0

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber_v2:Ljava/util/List;

    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationAllowPhoneNumber_v2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 478
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 483
    goto :goto_0
.end method

.method private isPixieRestrictedForPhone(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 451
    :goto_0
    return v0

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices;->activationRestrictPhoneNumber:Ljava/util/List;

    monitor-enter v2

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationRestrictPhoneNumber:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 446
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 451
    goto :goto_0
.end method

.method private loadActivationLists(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 532
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 534
    iget-wide v3, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    cmp-long v1, v3, v1

    if-ltz v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    sget-object v1, Lcom/viber/voip/pixie/PixieServices;->ACTIVATION_LISTS_URL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->loadS3Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    .line 541
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 543
    const/4 v0, 0x0

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1499700

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    .line 551
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 552
    const-string/jumbo v2, "ad"

    iget-object v3, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    const-string/jumbo v2, "ae"

    iget-wide v3, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->decodeActivationLists()V

    .line 558
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    invoke-interface {v1}, Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;->onNewActivationFileLoaded()V

    goto :goto_0
.end method

.method private loadEdgeProxyList(Z)Z
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 690
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 692
    iget-wide v5, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 710
    :goto_1
    iget v3, p0, Lcom/viber/voip/pixie/PixieServices;->userHashCode:I

    rem-int v0, v3, v0

    .line 711
    add-int/lit8 v7, v0, 0xd

    .line 714
    const v6, 0x5f08243b

    .line 715
    const v5, 0x480c2de5

    .line 716
    const v0, 0x23226de7

    .line 717
    const v3, 0x6842ba31

    move v4, v6

    move v6, v5

    move v5, v0

    move v0, v2

    .line 718
    :goto_2
    if-ge v0, v7, :cond_3

    .line 719
    shl-int/lit8 v8, v4, 0xb

    xor-int/2addr v4, v8

    .line 723
    shr-int/lit8 v8, v3, 0x13

    xor-int/2addr v8, v3

    shr-int/lit8 v9, v4, 0x8

    xor-int/2addr v4, v9

    xor-int/2addr v4, v8

    .line 718
    add-int/lit8 v0, v0, 0x1

    move v11, v4

    move v4, v6

    move v6, v5

    move v5, v3

    move v3, v11

    goto :goto_2

    .line 703
    :catch_0
    move-exception v0

    .line 705
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Invalid value"

    invoke-static {v10, v0, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 726
    :cond_3
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->EDGE_PROXY_LIST_PREFIX_URL:Ljava/lang/String;

    move v4, v3

    move-object v3, v0

    move v0, v2

    .line 727
    :goto_3
    const/16 v5, 0x8

    if-ge v0, v5, :cond_4

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v5, v4, 0xf

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    shr-int/lit8 v4, v4, 0x4

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 732
    :cond_4
    iget-short v0, p0, Lcom/viber/voip/pixie/PixieServices;->unblockerVersion:S

    const/4 v4, 0x2

    if-ge v0, v4, :cond_5

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    :goto_4
    invoke-direct {p0, v0}, Lcom/viber/voip/pixie/PixieServices;->loadS3Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    if-nez v0, :cond_7

    move v1, v2

    .line 756
    goto/16 :goto_0

    .line 739
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    .line 740
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 742
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 749
    :goto_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int/lit8 v0, v0, 0x1

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 743
    :catch_1
    move-exception v0

    .line 745
    sget-object v0, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid value for CONFIG_KEY_UNBLOCKER_2_EDGE_LISTS"

    invoke-static {v10, v0, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto :goto_5

    .line 759
    :cond_7
    const-wide/32 v2, 0xcdfe60

    .line 762
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x64

    if-ge v0, v4, :cond_9

    .line 763
    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    .line 769
    :cond_8
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    .line 772
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    const-string/jumbo v2, "ep"

    iget-object v3, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 774
    const-string/jumbo v2, "ee"

    iget-wide v3, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 777
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;->onNewEdgeListLoaded()V

    goto/16 :goto_0

    .line 764
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x96

    if-ge v0, v4, :cond_8

    .line 765
    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_6
.end method

.method private loadS3Url(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 792
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    const/4 v0, 0x0

    .line 799
    if-nez v0, :cond_0

    .line 800
    const/16 v0, 0x27

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/pixie/PixieServices;->loadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_0
    return-object v0
.end method

.method private loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 807
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: loadUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 808
    const/4 v1, 0x0

    .line 810
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 812
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 813
    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 815
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 820
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 822
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 824
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 836
    :goto_1
    return-object v1

    .line 826
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 828
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 835
    goto :goto_1

    .line 833
    :catch_1
    move-exception v0

    .line 834
    const/4 v2, 0x4

    sget-object v3, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private restoreSavedState()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "ub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 847
    const-string/jumbo v1, "ei"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->externalIP:Ljava/lang/String;

    .line 848
    const-string/jumbo v1, "ie"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/pixie/PixieServices;->externalIPExpirationTime:J

    .line 849
    const-string/jumbo v1, "ad"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataEncrypted:Ljava/lang/String;

    .line 850
    const-string/jumbo v1, "ae"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    .line 851
    const-string/jumbo v1, "ep"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    .line 852
    const-string/jumbo v1, "ee"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    .line 853
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->decodeActivationLists()V

    .line 854
    return-void
.end method

.method private validateAndCorrectTimestamps()V
    .locals 6

    .prologue
    .line 1010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1011
    const-wide/32 v2, 0xcdfe60

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1012
    iput-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J

    .line 1015
    :cond_0
    const-wide/32 v2, 0x1499700

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1016
    iput-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J

    .line 1018
    :cond_1
    return-void
.end method


# virtual methods
.method public getEdgeProxyBundle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->edgeProxyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscationPolicy()C
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 309
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 310
    :cond_0
    const/16 v0, 0x73

    .line 312
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v0, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 333
    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 339
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/viber/voip/pixie/StringStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_2
    const-string/jumbo v0, "1.0"

    goto :goto_0
.end method

.method public isCallsOverUDP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieServices;->activationConfigurationValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 297
    if-eqz v1, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_0
    return v0
.end method

.method public reloadEdgeProxyList()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/pixie/PixieServices;->loadEdgeProxyList(Z)Z

    move-result v0

    return v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    .line 685
    return-void
.end method

.method public setExternalIP(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices;->externalIP:Ljava/lang/String;

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/viber/voip/pixie/PixieServices;->externalIPExpirationTime:J

    .line 378
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    const-string/jumbo v1, "ei"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string/jumbo v1, "ie"

    iget-wide v2, p0, Lcom/viber/voip/pixie/PixieServices;->externalIPExpirationTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setListener(Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices;->listener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    .line 681
    return-void
.end method

.method public shouldUsePixieSystem(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/pixie/PixieServices;->calculateUserHashCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->loadActivationLists(Z)Z

    .line 226
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->isPixieRestrictedForPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 227
    if-eqz p3, :cond_1

    .line 251
    :goto_0
    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->loadEdgeProxyList(Z)Z

    move-result v0

    .line 255
    :cond_0
    return v0

    .line 233
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->isPixieEnabledForPhone_v2(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/viber/voip/pixie/PixieServices;->isPixieEnabledForNetworkOperator_v2(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    :cond_2
    const/4 v2, 0x2

    iput-short v2, p0, Lcom/viber/voip/pixie/PixieServices;->unblockerVersion:S

    .line 237
    sget-object v2, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Pixie: phone number found in v2 list"

    invoke-static {v4, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->isPixieEnabledForPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p2}, Lcom/viber/voip/pixie/PixieServices;->isPixieEnabledForNetworkOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    :cond_4
    iput-short v0, p0, Lcom/viber/voip/pixie/PixieServices;->unblockerVersion:S

    .line 245
    sget-object v2, Lcom/viber/voip/pixie/PixieServices;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Pixie: phone number found in v1 list"

    invoke-static {v4, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public shouldUsePixieSystemAfterNormalConnectFailed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/pixie/PixieServices;->calculateUserHashCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v0}, Lcom/viber/voip/pixie/PixieServices;->loadActivationLists(Z)Z

    .line 268
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieServices;->isPixieRestrictedForPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->canConnectExternally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/viber/voip/pixie/PixieServices;->VIBER_DOWN_URL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->loadS3Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-eq v1, v2, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieServices;->getExternalIP()Ljava/lang/String;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/viber/voip/pixie/PixieServices;->isPixieEnabledForIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-direct {p0, v0}, Lcom/viber/voip/pixie/PixieServices;->loadEdgeProxyList(Z)Z

    move-result v0

    goto :goto_0
.end method
