.class Lcom/viber/voip/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sms/i;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field final synthetic f:Lcom/viber/voip/b/a;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/viber/voip/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/viber/voip/b/f;->f:Lcom/viber/voip/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/b/f;->g:Landroid/os/Handler;

    .line 554
    new-instance v0, Lcom/viber/voip/b/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/b/g;-><init>(Lcom/viber/voip/b/f;)V

    iput-object v0, p0, Lcom/viber/voip/b/f;->h:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/b/a;Lcom/viber/voip/b/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/viber/voip/b/f;-><init>(Lcom/viber/voip/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/b/f;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/viber/voip/b/f;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsChecker.sendSmsResult isCreateSms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/b/a;->c(Ljava/lang/String;)V

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/b/f;->f:Lcom/viber/voip/b/a;

    iget-object v1, p0, Lcom/viber/voip/b/f;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/viber/voip/b/f;->e:J

    iget-object v4, p0, Lcom/viber/voip/b/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/viber/voip/b/a;->a(Lcom/viber/voip/b/a;Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_1
    return-void

    .line 566
    :cond_0
    const/16 v5, 0xe

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsChecker.onNewSms smsNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " smsBody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/b/a;->c(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/viber/voip/b/f;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/b/f;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsChecker.onNewSms Insert smsNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " smsBody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/b/a;->c(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/viber/voip/b/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/b/f;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/sms/a;->b(Lcom/viber/voip/sms/i;)V

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/b/f;->a(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsChecker.startCheck srcPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/b/a;->c(Ljava/lang/String;)V

    .line 534
    iput-object p1, p0, Lcom/viber/voip/b/f;->a:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Lcom/viber/voip/b/f;->b:Ljava/lang/String;

    .line 536
    iput-object p3, p0, Lcom/viber/voip/b/f;->c:Ljava/lang/String;

    .line 537
    iput-wide p4, p0, Lcom/viber/voip/b/f;->e:J

    .line 538
    iput-object p6, p0, Lcom/viber/voip/b/f;->d:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/viber/voip/b/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/b/f;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/i;)V

    .line 541
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/b/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/b/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    return-void
.end method
