.class Lcom/viber/voip/stickers/aq;
.super Lcom/viber/voip/util/bi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/ao;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/stickers/aq;->a:Lcom/viber/voip/stickers/ao;

    invoke-direct {p0}, Lcom/viber/voip/util/bi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color_icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 75
    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method
