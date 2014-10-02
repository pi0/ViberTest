.class public Lcom/viber/voip/util/be;
.super Lcom/viber/voip/util/bi;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/util/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/be;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/voip/util/bi;-><init>()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/util/be;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/viber/voip/util/bf;

    invoke-direct {v0, p0, p2, p3}, Lcom/viber/voip/util/bf;-><init>(Lcom/viber/voip/util/be;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method

.method protected a(Ljava/io/File;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-float v4, v1

    const v5, 0x4a5bba00

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hours"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/be;->c(Ljava/lang/String;)V

    .line 36
    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0
.end method
