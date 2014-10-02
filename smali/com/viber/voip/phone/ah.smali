.class final Lcom/viber/voip/phone/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/VideoCallActivity;

.field private b:Lcom/viber/voip/phone/call/k;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/viber/voip/phone/ah;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;Lcom/viber/voip/phone/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/ah;-><init>(Lcom/viber/voip/phone/VideoCallActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 400
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    if-eq p1, v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/viber/voip/phone/ah;->b()V

    .line 393
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    .line 394
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    .line 406
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/phone/ah;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 412
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 416
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 417
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    :pswitch_0
    return-void

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->a:Lcom/viber/voip/phone/VideoCallActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/ah;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lcom/viber/voip/phone/call/k;)V

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/phone/ah;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
