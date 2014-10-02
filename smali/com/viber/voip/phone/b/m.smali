.class Lcom/viber/voip/phone/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/k;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/viber/voip/phone/b/m;->a:Lcom/viber/voip/phone/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/viber/voip/phone/b/m;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->b(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    const v1, 0x7f0c07ae

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/viber/voip/phone/b/m;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v1}, Lcom/viber/voip/phone/b/k;->c(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 438
    return-void
.end method
