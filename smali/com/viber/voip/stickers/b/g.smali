.class public Lcom/viber/voip/stickers/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/util/upload/d;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p2, :cond_0

    sget v0, Lcom/viber/voip/stickers/an;->m:I

    invoke-static {p1, v0}, Lcom/viber/voip/stickers/b/h;->c(II)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    iput p1, p0, Lcom/viber/voip/stickers/b/g;->c:I

    .line 34
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/viber/voip/stickers/c/e;->e(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/viber/voip/stickers/b/g;->d:Ljava/lang/String;

    .line 35
    new-instance v1, Lcom/viber/voip/util/upload/d;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/g;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/viber/voip/stickers/b/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/stickers/b/g;->b:Lcom/viber/voip/util/upload/d;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download package icon from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/g;->a(Ljava/lang/String;)V

    .line 37
    return-void

    .line 30
    :cond_0
    sget v0, Lcom/viber/voip/stickers/an;->l:I

    invoke-static {p1, v0}, Lcom/viber/voip/stickers/b/h;->b(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/stickers/c/e;->d(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/stickers/b/g;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    iget-object v0, p0, Lcom/viber/voip/stickers/b/g;->b:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iput-object v4, p0, Lcom/viber/voip/stickers/b/g;->b:Lcom/viber/voip/util/upload/d;

    .line 49
    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/g;->a(Z)V

    .line 51
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR WHILE ICON FOR PACKAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/stickers/b/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WAS DOWNLOADED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/g;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    iput-object v4, p0, Lcom/viber/voip/stickers/b/g;->b:Lcom/viber/voip/util/upload/d;

    .line 49
    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/g;->a(Z)V

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/viber/voip/stickers/b/g;->b:Lcom/viber/voip/util/upload/d;

    .line 49
    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/g;->a(Z)V

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/stickers/b/g;->a()V

    .line 56
    return-void
.end method
