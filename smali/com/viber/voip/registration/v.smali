.class Lcom/viber/voip/registration/v;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/text/SimpleDateFormat;

.field final synthetic b:Lcom/viber/voip/registration/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/t;JJLjava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/viber/voip/registration/v;->b:Lcom/viber/voip/registration/t;

    iput-object p6, p0, Lcom/viber/voip/registration/v;->a:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->d:Lcom/viber/voip/a/d;

    invoke-virtual {v1}, Lcom/viber/voip/a/d;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 236
    iget-object v0, p0, Lcom/viber/voip/registration/v;->b:Lcom/viber/voip/registration/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;I)V

    .line 237
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/registration/v;->b:Lcom/viber/voip/registration/t;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;J)J

    .line 230
    iget-object v0, p0, Lcom/viber/voip/registration/v;->b:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->e(Lcom/viber/voip/registration/t;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/v;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/viber/voip/registration/v;->b:Lcom/viber/voip/registration/t;

    invoke-static {v3}, Lcom/viber/voip/registration/t;->d(Lcom/viber/voip/registration/t;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
