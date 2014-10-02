.class Lcom/viber/voip/phone/call/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/phone/call/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/viber/voip/phone/call/e;->b:Lcom/viber/voip/phone/call/a;

    iput-object p2, p0, Lcom/viber/voip/phone/call/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/phone/call/e;->b:Lcom/viber/voip/phone/call/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submitNewPendingTaskForCallState number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;)V

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    const-string/jumbo v2, "tel"

    iget-object v3, p0, Lcom/viber/voip/phone/call/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/viber/voip/phone/call/e;->b:Lcom/viber/voip/phone/call/a;

    invoke-static {v1}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method
