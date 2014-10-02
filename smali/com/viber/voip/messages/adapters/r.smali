.class Lcom/viber/voip/messages/adapters/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/adapters/u;

.field final synthetic e:Z

.field final synthetic f:Lcom/viber/voip/messages/adapters/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/q;IJILcom/viber/voip/messages/adapters/u;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    iput p2, p0, Lcom/viber/voip/messages/adapters/r;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/adapters/r;->b:J

    iput p5, p0, Lcom/viber/voip/messages/adapters/r;->c:I

    iput-object p6, p0, Lcom/viber/voip/messages/adapters/r;->d:Lcom/viber/voip/messages/adapters/u;

    iput-boolean p7, p0, Lcom/viber/voip/messages/adapters/r;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageId start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/adapters/r;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/viber/voip/messages/adapters/r;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/adapters/q;->a(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v1}, Lcom/viber/voip/messages/adapters/q;->b(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/stickers/r;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/adapters/r;->a:I

    iget v3, p0, Lcom/viber/voip/messages/adapters/r;->c:I

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v4}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/viber/voip/stickers/r;->a(IIZZ)[Lcom/viber/voip/stickers/p;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;Z)Z

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 106
    new-instance v5, Lcom/viber/voip/messages/adapters/t;

    iget-object v6, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-direct {v5, v6, v4}, Lcom/viber/voip/messages/adapters/t;-><init>(Lcom/viber/voip/messages/adapters/q;Lcom/viber/voip/stickers/p;)V

    .line 107
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, v4, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    array-length v5, v5

    iget-object v6, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v6}, Lcom/viber/voip/messages/adapters/q;->c(Lcom/viber/voip/messages/adapters/q;)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 109
    iget-object v5, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    iget-object v4, v4, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    array-length v4, v4

    invoke-static {v5, v4}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;I)I

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Lcom/viber/voip/messages/adapters/s;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/adapters/s;-><init>(Lcom/viber/voip/messages/adapters/r;Ljava/util/List;)V

    .line 124
    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/r;->e:Z

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/r;->f:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v1}, Lcom/viber/voip/messages/adapters/q;->d(Lcom/viber/voip/messages/adapters/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageId end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/adapters/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/messages/adapters/r;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->a(Ljava/lang/String;)V

    .line 130
    return-void

    .line 127
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method
