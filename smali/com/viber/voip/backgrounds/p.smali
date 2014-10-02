.class public Lcom/viber/voip/backgrounds/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/backgrounds/r;


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/viber/voip/backgrounds/p;->a:Landroid/net/Uri;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/backgrounds/p;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Z)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/backgrounds/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/backgrounds/p;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_cr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "_land.jpg"

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
    const-string/jumbo v0, "_port.jpg"

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
