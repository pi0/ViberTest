.class Lcom/viber/voip/messages/extras/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/b;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/t;->b:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/t;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 309
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getCountryCodeManager()Lcom/viber/voip/registration/ar;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/t;

    invoke-direct {v1}, Lcom/viber/voip/util/t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ar;->a(Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Lcom/viber/voip/messages/extras/map/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/extras/map/d;-><init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V

    .line 312
    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/extras/a/u;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/messages/extras/a/u;-><init>(Lcom/viber/voip/messages/extras/a/t;Lcom/viber/voip/registration/CountryCode;)V

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/extras/map/d;->a(Ljava/lang/String;Lcom/viber/voip/messages/extras/map/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWPSLocation obtainCurrentCountry Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
