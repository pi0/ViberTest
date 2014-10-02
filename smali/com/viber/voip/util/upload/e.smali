.class public Lcom/viber/voip/util/upload/e;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/util/upload/f;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/upload/f;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/viber/voip/util/upload/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lcom/viber/voip/util/upload/e;->a:Lcom/viber/voip/util/upload/f;

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/util/upload/f;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/viber/voip/util/upload/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    iput-object p1, p0, Lcom/viber/voip/util/upload/e;->a:Lcom/viber/voip/util/upload/f;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    sget-object v0, Lcom/viber/voip/util/upload/f;->f:Lcom/viber/voip/util/upload/f;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;Ljava/lang/Throwable;)V

    .line 220
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/util/upload/f;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/util/upload/e;->a:Lcom/viber/voip/util/upload/f;

    return-object v0
.end method
