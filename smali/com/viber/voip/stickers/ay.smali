.class public Lcom/viber/voip/stickers/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/viber/voip/stickers/a/a;

.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/stickers/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/ay;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/viber/voip/stickers/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/viber/voip/stickers/ay;->b:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/viber/voip/stickers/ay;->c:Lcom/viber/voip/stickers/a/a;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/stickers/ay;->d:Z

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ay;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/viber/voip/stickers/ay;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ay;)Lcom/viber/voip/stickers/a/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/stickers/ay;->c:Lcom/viber/voip/stickers/a/a;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->B:Ljava/lang/String;

    const-string/jumbo v1, "%PKG%"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ay;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/viber/voip/stickers/ay;->d:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_UPGRADE_STICKER_PACKAGES_NAME"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/viber/voip/stickers/ay;->d:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/stickers/ay;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/stickers/ay;->d:Z

    .line 64
    iget-object v0, p0, Lcom/viber/voip/stickers/ay;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/az;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/az;-><init>(Lcom/viber/voip/stickers/ay;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    return-void
.end method
