.class public Lcom/viber/voip/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/DexFactory;


# instance fields
.field private a:Lcom/viber/voip/util/http/HttpRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/viber/voip/c/b;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/viber/voip/c/b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.viber.dexlibs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Impl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/c/a;->a(Ljava/lang/String;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/c/b;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/viber/voip/c/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error instantiating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "com.viber.dexlibs.GMapsFactoryImpl"

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/String;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/GMaps$Factory;

    return-object v0
.end method

.method public getHttpRequestFactory()Lcom/viber/voip/util/http/HttpRequestFactory;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/c/a;->a:Lcom/viber/voip/util/http/HttpRequestFactory;

    if-nez v0, :cond_1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/c/a;->a:Lcom/viber/voip/util/http/HttpRequestFactory;

    if-nez v0, :cond_0

    .line 40
    const-string/jumbo v0, "com.viber.voip.util.http.HttpRequestFactoryImpl"

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/String;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/http/HttpRequestFactory;

    iput-object v0, p0, Lcom/viber/voip/c/a;->a:Lcom/viber/voip/util/http/HttpRequestFactory;

    .line 42
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/c/a;->a:Lcom/viber/voip/util/http/HttpRequestFactory;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "com.viber.dexlibs.ZXingFactoryImpl"

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/String;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/ZXing$Factory;

    return-object v0
.end method

.method public newCrashlyticsHelper()Lcom/viber/dexshared/CrashlyticsHelper;
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/viber/dexshared/CrashlyticsHelper;

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/Class;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/CrashlyticsHelper;

    return-object v0
.end method

.method public newGoogleAnalyticsHelper()Lcom/viber/dexshared/GoogleAnalyticsHelper;
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/Class;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/GoogleAnalyticsHelper;

    return-object v0
.end method

.method public newMicrologHelper()Lcom/viber/dexshared/MicrologHelper;
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/viber/dexshared/MicrologHelper;

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/Class;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/MicrologHelper;

    return-object v0
.end method

.method public newTwitterHelper()Lcom/viber/dexshared/TwitterHelper;
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/viber/dexshared/TwitterHelper;

    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/a;->a(Ljava/lang/Class;Lcom/viber/voip/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/dexshared/TwitterHelper;

    return-object v0
.end method
