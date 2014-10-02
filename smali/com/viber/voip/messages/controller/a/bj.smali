.class Lcom/viber/voip/messages/controller/a/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JJIZIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bj;->h:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bj;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/a/bj;->b:J

    iput p6, p0, Lcom/viber/voip/messages/controller/a/bj;->c:I

    iput-boolean p7, p0, Lcom/viber/voip/messages/controller/a/bj;->d:Z

    iput p8, p0, Lcom/viber/voip/messages/controller/a/bj;->e:I

    iput-wide p9, p0, Lcom/viber/voip/messages/controller/a/bj;->f:J

    iput p11, p0, Lcom/viber/voip/messages/controller/a/bj;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 613
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bj;->h:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v0, v12, v11

    .line 614
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/bj;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/a/bj;->b:J

    iget v5, p0, Lcom/viber/voip/messages/controller/a/bj;->c:I

    iget-boolean v6, p0, Lcom/viber/voip/messages/controller/a/bj;->d:Z

    iget v7, p0, Lcom/viber/voip/messages/controller/a/bj;->e:I

    iget-wide v8, p0, Lcom/viber/voip/messages/controller/a/bj;->f:J

    iget v10, p0, Lcom/viber/voip/messages/controller/a/bj;->g:I

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/messages/controller/a/a;->onLikePublicGroupMessage(JJIZIJI)V

    .line 613
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method
