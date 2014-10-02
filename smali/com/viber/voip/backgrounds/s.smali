.class public Lcom/viber/voip/backgrounds/s;
.super Lcom/viber/voip/backgrounds/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/viber/voip/backgrounds/q;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Z)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 29
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/backgrounds/s;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/backgrounds/s;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_pg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/viber/voip/backgrounds/s;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_tail.jpg"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "_land.jpg"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_port.jpg"

    goto :goto_0
.end method
