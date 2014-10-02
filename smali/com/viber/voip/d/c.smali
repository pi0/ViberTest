.class public Lcom/viber/voip/d/c;
.super Lcom/viber/voip/util/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/d/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/viber/voip/d/d;


# direct methods
.method public constructor <init>(Lcom/viber/voip/d/b;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/viber/voip/d/c;->a:Lcom/viber/voip/d/b;

    .line 222
    invoke-direct {p0}, Lcom/viber/voip/util/a;-><init>()V

    .line 223
    iput-object p4, p0, Lcom/viber/voip/d/c;->e:Lcom/viber/voip/d/d;

    .line 224
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url parameter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p2, p0, Lcom/viber/voip/d/c;->b:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/viber/voip/d/c;->c:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/d/c;->a:Lcom/viber/voip/d/b;

    iget-object v1, p0, Lcom/viber/voip/d/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/d/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/d/b;->a(Lcom/viber/voip/d/b;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/viber/voip/d/c;->e:Lcom/viber/voip/d/d;

    invoke-interface {v1, v0}, Lcom/viber/voip/d/d;->a(Ljava/io/InputStream;)V

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/d/c;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const/4 v1, 0x2

    iput v1, p0, Lcom/viber/voip/d/c;->d:I

    .line 238
    iget-object v1, p0, Lcom/viber/voip/d/c;->e:Lcom/viber/voip/d/d;

    iget v2, p0, Lcom/viber/voip/d/c;->d:I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/d/d;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/viber/voip/d/b;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/d/c;->d:I

    .line 250
    iget-object v0, p0, Lcom/viber/voip/d/c;->e:Lcom/viber/voip/d/d;

    iget v1, p0, Lcom/viber/voip/d/c;->d:I

    const-string/jumbo v2, "Data receive interrupted"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/d/d;->a(ILjava/lang/String;)V

    .line 251
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/viber/voip/d/c;->a()V

    .line 256
    return-void
.end method
