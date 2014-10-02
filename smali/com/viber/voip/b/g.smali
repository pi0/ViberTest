.class Lcom/viber/voip/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/b/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/viber/voip/b/g;->a:Lcom/viber/voip/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    const-string/jumbo v0, "SmsChecker timeout, SMS not inserted"

    invoke-static {v0}, Lcom/viber/voip/b/a;->c(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/b/g;->a:Lcom/viber/voip/b/f;

    invoke-virtual {v0, v1}, Lcom/viber/voip/sms/a;->b(Lcom/viber/voip/sms/i;)V

    .line 559
    iget-object v0, p0, Lcom/viber/voip/b/g;->a:Lcom/viber/voip/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/b/f;->a(Lcom/viber/voip/b/f;Z)V

    .line 560
    return-void
.end method
