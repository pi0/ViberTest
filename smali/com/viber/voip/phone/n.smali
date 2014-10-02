.class Lcom/viber/voip/phone/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Lcom/viber/voip/phone/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/viber/voip/phone/n;->b:Lcom/viber/voip/phone/PhoneActivity;

    iput-object p2, p0, Lcom/viber/voip/phone/n;->a:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/phone/n;->b:Lcom/viber/voip/phone/PhoneActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 293
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a()Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/viber/voip/phone/n;->b:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableOrUpdateState, reason: HANGUP_NO_CREDIT, fromDialpad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/viber/voip/phone/n;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/ae;)V

    .line 297
    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/viber/voip/phone/n;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/billing/ae;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/n;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/billing/ae;)V

    goto :goto_0
.end method
