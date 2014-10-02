.class Lcom/viber/voip/util/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field d:I

.field final synthetic e:Lcom/viber/voip/util/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/viber/voip/util/bc;->a:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method a()J
    .locals 6

    .prologue
    .line 135
    iget v0, p0, Lcom/viber/voip/util/bc;->c:I

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-virtual {p0}, Lcom/viber/voip/util/bc;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/util/bc;->b:J

    iget-object v4, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v4}, Lcom/viber/voip/util/bb;->c(Lcom/viber/voip/util/bb;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 136
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 137
    :pswitch_1
    iget-wide v0, p0, Lcom/viber/voip/util/bc;->b:J

    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v2}, Lcom/viber/voip/util/bb;->a(Lcom/viber/voip/util/bb;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 138
    :pswitch_2
    iget-wide v0, p0, Lcom/viber/voip/util/bc;->b:J

    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v2}, Lcom/viber/voip/util/bb;->b(Lcom/viber/voip/util/bb;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 139
    :pswitch_3
    iget-wide v0, p0, Lcom/viber/voip/util/bc;->b:J

    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v2}, Lcom/viber/voip/util/bb;->c(Lcom/viber/voip/util/bb;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method b()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/viber/voip/util/bc;->c:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/util/bc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/util/bc;->c:I

    .line 148
    :cond_0
    iget v0, p0, Lcom/viber/voip/util/bc;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/bc;->c:I

    .line 149
    iget v0, p0, Lcom/viber/voip/util/bc;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/bc;->d:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/util/bc;->b:J

    .line 151
    return-void
.end method

.method c()J
    .locals 7

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v2}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    iget-object v3, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v3, v0, v1}, Lcom/viber/voip/util/bb;->b(Lcom/viber/voip/util/bb;J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/viber/voip/util/bb;->a(Lcom/viber/voip/util/bb;J)J

    .line 157
    iget-object v2, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    iget-object v3, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v3}, Lcom/viber/voip/util/bb;->e(Lcom/viber/voip/util/bb;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v5}, Lcom/viber/voip/util/bb;->f(Lcom/viber/voip/util/bb;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/viber/voip/util/bb;->c(Lcom/viber/voip/util/bb;J)J

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNextAttemptMinTime() new day, mCurDayStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    iget-object v4, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v4}, Lcom/viber/voip/util/bb;->e(Lcom/viber/voip/util/bb;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mNextDayStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    iget-object v4, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v4}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bb;->d(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-wide v2, p0, Lcom/viber/voip/util/bc;->b:J

    iget-object v4, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v4}, Lcom/viber/voip/util/bb;->e(Lcom/viber/voip/util/bb;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 161
    const/4 v2, 0x0

    iput v2, p0, Lcom/viber/voip/util/bc;->c:I

    .line 164
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-static {v0}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;)J

    move-result-wide v0

    goto :goto_0
.end method

.method d()Z
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/viber/voip/util/bc;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Item{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/util/bc;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/util/bc;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/bc;->e:Lcom/viber/voip/util/bb;

    invoke-virtual {p0}, Lcom/viber/voip/util/bc;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/util/bb;->d(Lcom/viber/voip/util/bb;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
