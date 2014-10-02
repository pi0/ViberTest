.class Lcom/viber/voip/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;ILandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/cy;->c:Lcom/viber/voip/SystemDialogActivity;

    iput p2, p0, Lcom/viber/voip/cy;->a:I

    iput-object p3, p0, Lcom/viber/voip/cy;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 250
    iget v0, p0, Lcom/viber/voip/cy;->a:I

    const v1, 0x7f0c0380

    if-ne v0, v1, :cond_0

    .line 251
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "300"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Delete"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-static {}, Lcom/viber/voip/util/gn;->b()V

    .line 260
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    iget-object v2, p0, Lcom/viber/voip/cy;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/viber/voip/cy;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/cy;->c:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/cy;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/cy;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/SystemDialogActivity;->b(Lcom/viber/voip/SystemDialogActivity;)V

    goto :goto_0
.end method
