.class Lcom/viber/voip/sms/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viber/voip/sms/h;->a:Lcom/viber/voip/sms/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/sms/h;->a:Lcom/viber/voip/sms/a;

    const-string/jumbo v1, "CheckGrowSmsStateRunnable runs"

    invoke-static {v0, v1}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/sms/h;->a:Lcom/viber/voip/sms/a;

    invoke-static {v0}, Lcom/viber/voip/sms/a;->e(Lcom/viber/voip/sms/a;)V

    .line 292
    return-void
.end method
