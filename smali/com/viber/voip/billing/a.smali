.class public Lcom/viber/voip/billing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/billing/an;

.field private static c:Lcom/viber/voip/billing/a;


# instance fields
.field private d:Lcom/viber/voip/billing/r;

.field private e:J

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/billing/ah;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/ai;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/viber/voip/billing/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/a;->f:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/a;->g:Ljava/util/Map;

    .line 1156
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/a;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/viber/voip/billing/a;->e:J

    return-wide p1
.end method

.method public static a()Lcom/viber/voip/billing/a;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/viber/voip/billing/a;->c:Lcom/viber/voip/billing/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v0, Lcom/viber/voip/billing/a;

    invoke-direct {v0}, Lcom/viber/voip/billing/a;-><init>()V

    sput-object v0, Lcom/viber/voip/billing/a;->c:Lcom/viber/voip/billing/a;

    .line 129
    :cond_0
    sget-object v0, Lcom/viber/voip/billing/a;->c:Lcom/viber/voip/billing/a;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/an;)Lcom/viber/voip/billing/an;
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-object p0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;ZIZ)Lcom/viber/voip/billing/m;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZIZ)",
            "Lcom/viber/voip/billing/m;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1207
    .line 1208
    const/4 v1, 0x0

    move v6, v5

    move-object v2, p0

    .line 1211
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_4

    .line 1212
    :try_start_0
    invoke-static {v2, p3}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;I)Lcom/viber/voip/util/http/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1214
    if-eqz p1, :cond_0

    .line 1215
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v3, v0}, Lcom/viber/voip/util/http/HttpRequest;->setPost(Z)V

    .line 1216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1252
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 1255
    :goto_2
    :try_start_2
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1257
    new-instance v0, Lcom/viber/voip/billing/m;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1283
    :goto_3
    return-object v0

    .line 1221
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v3, v0}, Lcom/viber/voip/util/http/HttpRequest;->setFollowRedirects(Z)V

    .line 1224
    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v4

    move-object v1, v3

    .line 1246
    :goto_4
    if-nez v0, :cond_1

    .line 1247
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v3, "Too many redirects"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1252
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    .line 1229
    :pswitch_1
    :try_start_5
    const-string/jumbo v0, "Location"

    invoke-interface {v3, v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Redirect ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ") to REL: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    .line 1231
    new-instance v1, Ljava/net/URL;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Redirect ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ") to ABS: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1211
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_0

    .line 1250
    :cond_1
    :try_start_6
    invoke-interface {v1}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .line 1272
    if-eqz p2, :cond_3

    .line 1274
    new-instance v0, Lcom/viber/voip/billing/m;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1259
    :cond_2
    :try_start_7
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1262
    new-instance v0, Lcom/viber/voip/billing/m;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/m;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 1264
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1266
    new-instance v0, Lcom/viber/voip/billing/m;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Ljava/io/IOException;)V

    goto/16 :goto_3

    .line 1267
    :catch_3
    move-exception v0

    .line 1268
    new-instance v0, Lcom/viber/voip/billing/m;

    sget-object v1, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Lcom/viber/voip/billing/s;)V

    goto/16 :goto_3

    .line 1277
    :cond_3
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1279
    new-instance v0, Lcom/viber/voip/billing/m;

    invoke-direct {v0, v3, v2, p4}, Lcom/viber/voip/billing/m;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 1280
    :catch_4
    move-exception v0

    .line 1282
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1283
    new-instance v0, Lcom/viber/voip/billing/m;

    sget-object v1, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Lcom/viber/voip/billing/s;)V

    goto/16 :goto_3

    :cond_4
    move v0, v5

    goto/16 :goto_4

    .line 1224
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;ZI)Lcom/viber/voip/billing/m;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/util/Map;ZIZ)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;ZIZ)Lcom/viber/voip/billing/m;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;ZIZ)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ZILjava/lang/String;)Lcom/viber/voip/billing/m;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/viber/voip/billing/a;->b(ZILjava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/a;)Lcom/viber/voip/billing/r;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;)Lcom/viber/voip/billing/r;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    return-object p1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 1312
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1314
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 1315
    if-gtz v3, :cond_0

    .line 1319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1317
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x3f

    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 293
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :goto_0
    const-string/jumbo v2, "lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 333
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->H:Ljava/lang/String;

    .line 338
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/phone/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    iget-wide v1, v1, Lcom/viber/voip/billing/an;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/token/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    iget-object v1, v1, Lcom/viber/voip/billing/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string/jumbo v1, "payment-history"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "call-history"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :cond_2
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->G:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lcom/viber/voip/billing/a;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/aj;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V

    return-void
.end method

.method private a(Lcom/viber/voip/billing/aj;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    const-string/jumbo v0, "obtainToken()"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    invoke-virtual {v0}, Lcom/viber/voip/billing/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/ak;

    invoke-direct {v0, p1}, Lcom/viber/voip/billing/ak;-><init>(Lcom/viber/voip/billing/aj;)V

    .line 275
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    invoke-interface {p1, v0}, Lcom/viber/voip/billing/aj;->a(Lcom/viber/voip/billing/an;)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    iget-object v2, p1, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 725
    invoke-static {v4}, Lcom/viber/voip/billing/q;->a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/billing/f;

    invoke-direct {v2, p0, p1, p2}, Lcom/viber/voip/billing/f;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bk;)V

    .line 754
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/viber/voip/billing/aa;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 802
    new-instance v0, Lcom/viber/voip/billing/ab;

    invoke-direct {v0, p1}, Lcom/viber/voip/billing/ab;-><init>(Lcom/viber/voip/billing/aa;)V

    .line 803
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ab;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 804
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/viber/voip/billing/y;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/viber/voip/billing/z;

    invoke-direct {v0, p1}, Lcom/viber/voip/billing/z;-><init>(Lcom/viber/voip/billing/y;)V

    .line 308
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1335
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Lcom/viber/voip/billing/an;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    invoke-virtual {v0}, Lcom/viber/voip/billing/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    invoke-static {}, Lcom/viber/voip/billing/a;->g()V

    .line 286
    :cond_1
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    return-object v0
.end method

.method private static b(Ljava/lang/String;ZIZ)Lcom/viber/voip/billing/m;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/util/Map;ZIZ)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method private static b(ZILjava/lang/String;)Lcom/viber/voip/billing/m;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_4

    .line 545
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    invoke-virtual {v0}, Lcom/viber/voip/billing/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    invoke-static {}, Lcom/viber/voip/billing/a;->g()V

    .line 548
    :cond_1
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-eqz v0, :cond_2

    .line 549
    invoke-static {p2, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0, p0, p1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;ZI)Lcom/viber/voip/billing/m;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/viber/voip/billing/m;->c()I

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_3

    .line 553
    const-string/jumbo v0, "Server reported invalid token, retrying"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    .line 544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 559
    :cond_2
    new-instance v0, Lcom/viber/voip/billing/m;

    sget-object v1, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Lcom/viber/voip/billing/s;)V

    .line 564
    :cond_3
    :goto_1
    return-object v0

    .line 563
    :cond_4
    const-string/jumbo v0, "Billing server request error"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    .line 564
    new-instance v0, Lcom/viber/voip/billing/m;

    sget-object v1, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Lcom/viber/voip/billing/s;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1195
    invoke-static {p0, p1}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;I)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 1196
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1191
    if-eqz p0, :cond_0

    const-string/jumbo v0, "$"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\u20ac"

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/billing/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/billing/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1327
    sget-object v0, Lcom/viber/voip/billing/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    return-void
.end method

.method private static c(Ljava/lang/String;I)Lcom/viber/voip/util/http/HttpRequest;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1295
    invoke-static {p0}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 1296
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1299
    if-eqz v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    const-string/jumbo v1, "Disabling SSL check for connection"

    invoke-static {v1}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    .line 1301
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->disableSSLCheck()V

    .line 1304
    :cond_0
    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 1305
    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 1306
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/billing/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/billing/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1323
    sget-object v0, Lcom/viber/voip/billing/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 518
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 519
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/viber/voip/billing/a;->g()V

    return-void
.end method

.method static synthetic f()Lcom/viber/voip/billing/an;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    return-object v0
.end method

.method private static g()V
    .locals 6

    .prologue
    .line 569
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    .line 570
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 573
    new-instance v3, Lcom/viber/voip/billing/b;

    invoke-direct {v3, v0}, Lcom/viber/voip/billing/b;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/billing/b;->a(Landroid/content/Context;)V

    .line 588
    const-wide/16 v3, 0x2710

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    sget-object v0, Lcom/viber/voip/billing/a;->b:Lcom/viber/voip/billing/an;

    if-nez v0, :cond_0

    .line 597
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 599
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string/jumbo v0, "InterruptedExceptin during renewToken()"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/q;
    .locals 5
    .parameter

    .prologue
    .line 789
    if-eqz p1, :cond_1

    .line 790
    iget-object v0, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    iget-object v0, v0, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    iget-object v2, v0, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 792
    invoke-static {v0}, Lcom/viber/voip/billing/q;->a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/viber/voip/billing/bn;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 798
    :goto_1
    return-object v0

    .line 791
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 798
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/billing/t;)Lcom/viber/voip/billing/u;
    .locals 4
    .parameter

    .prologue
    .line 442
    new-instance v0, Lcom/viber/voip/billing/u;

    invoke-direct {v0, p1}, Lcom/viber/voip/billing/u;-><init>(Lcom/viber/voip/billing/t;)V

    .line 443
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "viber-balance"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-object v0
.end method

.method public a(Lcom/viber/voip/billing/ae;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 355
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->K:Ljava/lang/String;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&src_phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ai;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 856
    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v1

    .line 857
    if-eqz v1, :cond_4

    .line 858
    iget-object v0, p0, Lcom/viber/voip/billing/a;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/ah;

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 860
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/viber/voip/billing/ah;->a:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/a;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 862
    if-nez v0, :cond_1

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    iget-object v2, p0, Lcom/viber/voip/billing/a;->g:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v1, Lcom/viber/voip/billing/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/x;-><init>(Lcom/viber/voip/billing/a;)V

    .line 866
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/voip/billing/ae;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/voip/billing/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 868
    :cond_1
    if-eqz p2, :cond_2

    .line 869
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_2
    :goto_0
    return-void

    .line 871
    :cond_3
    if-eqz p2, :cond_2

    .line 872
    invoke-interface {p2, p1, v0}, Lcom/viber/voip/billing/ai;->a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V

    goto :goto_0

    .line 875
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/viber/voip/billing/ai;->a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1187
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/billing/p;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1109
    new-instance v0, Lcom/viber/voip/billing/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/billing/g;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bt;Lcom/viber/voip/billing/p;)V

    invoke-virtual {v0}, Lcom/viber/voip/billing/g;->b()V

    .line 1127
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/al;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    new-instance v0, Lcom/viber/voip/billing/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/billing/h;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/al;)V

    invoke-virtual {v0}, Lcom/viber/voip/billing/h;->b()V

    .line 1154
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/am;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    new-instance v0, Lcom/viber/voip/billing/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/billing/i;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/am;)V

    invoke-virtual {v0}, Lcom/viber/voip/billing/i;->b()V

    .line 1183
    return-void
.end method

.method public a(Lcom/viber/voip/billing/n;)V
    .locals 2
    .parameter

    .prologue
    .line 969
    new-instance v0, Lcom/viber/voip/billing/o;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/billing/o;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/n;)V

    .line 970
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 971
    return-void
.end method

.method public a(Lcom/viber/voip/billing/v;)V
    .locals 4
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/viber/voip/billing/a;->d:Lcom/viber/voip/billing/r;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/billing/a;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 692
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/billing/c;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    :goto_0
    return-void

    .line 700
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/w;

    new-instance v1, Lcom/viber/voip/billing/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/billing/d;-><init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/v;)V

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/w;-><init>(Lcom/viber/voip/billing/v;)V

    .line 718
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
