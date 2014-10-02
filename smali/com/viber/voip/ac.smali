.class Lcom/viber/voip/ac;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",previousState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v1}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/viber/voip/am;->a:[I

    invoke-static {p1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->resolveEnum(I)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0, p1}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;I)I

    .line 309
    :cond_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v1}, Lcom/viber/voip/HomeActivity;->c(Lcom/viber/voip/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/ad;-><init>(Lcom/viber/voip/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v1}, Lcom/viber/voip/HomeActivity;->c(Lcom/viber/voip/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/ae;

    invoke-direct {v1, p0}, Lcom/viber/voip/ae;-><init>(Lcom/viber/voip/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v1}, Lcom/viber/voip/HomeActivity;->c(Lcom/viber/voip/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v1}, Lcom/viber/voip/HomeActivity;->c(Lcom/viber/voip/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
