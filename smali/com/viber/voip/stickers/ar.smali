.class public Lcom/viber/voip/stickers/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/stickers/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/viber/voip/stickers/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/viber/voip/stickers/ar;->b:Lcom/viber/voip/stickers/r;

    .line 19
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sticker not ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/ar;->a(Ljava/lang/String;)V

    .line 35
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->t:I

    .line 36
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/viber/voip/stickers/ar;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 46
    :goto_1
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/stickers/ar;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/ar;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/a;)V

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Ljava/io/IOException;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/ar;->a(Ljava/lang/String;)V

    .line 25
    instance-of v0, p5, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->h()V

    .line 27
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/ar;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 31
    :cond_0
    return-void
.end method
