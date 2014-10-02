.class Lcom/viber/voip/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Player;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/PttLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/PttLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    return-void
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;I)V

    .line 278
    :cond_0
    return-void
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x48190800

    .line 236
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    if-ne v0, p2, :cond_2

    .line 241
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;I)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PttLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PttLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 247
    :cond_2
    sget v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_FILE_NOT_AVAILABLE:I

    if-ne v0, p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v2}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->Z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->e(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/widget/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->e(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/widget/z;

    move-result-object v0

    const v1, 0x7f0c03a9

    const v2, 0x7f0c03aa

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/widget/z;->a(II)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v2}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->Z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->e(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/widget/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->e(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/widget/z;

    move-result-object v0

    const v1, 0x7f0c03a7

    const v2, 0x7f0c03a8

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/widget/z;->a(II)V

    goto/16 :goto_0

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/h/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;I)V

    .line 267
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PttLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/viber/voip/widget/y;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PttLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 271
    :cond_0
    return-void
.end method
