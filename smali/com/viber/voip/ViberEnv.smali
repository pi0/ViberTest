.class public Lcom/viber/voip/ViberEnv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDexFactory:Lcom/viber/voip/DexFactory;

.field private static sLogger:Lcom/viber/voip/ViberLogger;

.field private static sViberFactory:Lcom/viber/voip/ViberFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static getPixieController()Lcom/viber/voip/pixie/PixieController;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/viber/voip/ViberEnv;->sViberFactory:Lcom/viber/voip/ViberFactory;

    invoke-interface {v0}, Lcom/viber/voip/ViberFactory;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    return-object v0
.end method

.method public static getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/viber/voip/ViberFactory;Lcom/viber/voip/DexFactory;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    sput-object p0, Lcom/viber/voip/ViberEnv;->sViberFactory:Lcom/viber/voip/ViberFactory;

    .line 27
    sput-object p1, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    .line 28
    invoke-interface {p0}, Lcom/viber/voip/ViberFactory;->getLogger()Lcom/viber/voip/ViberLogger;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ViberEnv;->sLogger:Lcom/viber/voip/ViberLogger;

    .line 29
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/ViberEnv;->sLogger:Lcom/viber/voip/ViberLogger;

    invoke-interface {v0, p0, p1}, Lcom/viber/voip/ViberLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/viber/voip/ViberEnv;->sLogger:Lcom/viber/voip/ViberLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/viber/voip/ViberLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static newCrashlyticsHelper()Lcom/viber/dexshared/CrashlyticsHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->newCrashlyticsHelper()Lcom/viber/dexshared/CrashlyticsHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newGoogleAnalyticsHelper()Lcom/viber/dexshared/GoogleAnalyticsHelper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->newGoogleAnalyticsHelper()Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;
    .locals 1
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->getHttpRequestFactory()Lcom/viber/voip/util/http/HttpRequestFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/util/http/HttpRequestFactory;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static newMicrologHelper()Lcom/viber/dexshared/MicrologHelper;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->newMicrologHelper()Lcom/viber/dexshared/MicrologHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newTwitterHelper()Lcom/viber/dexshared/TwitterHelper;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/viber/voip/ViberEnv;->sDexFactory:Lcom/viber/voip/DexFactory;

    invoke-interface {v0}, Lcom/viber/voip/DexFactory;->newTwitterHelper()Lcom/viber/dexshared/TwitterHelper;

    move-result-object v0

    return-object v0
.end method
