.class Lcom/viber/voip/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/viber/voip/cq;->c:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/cq;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/cq;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    iget-object v2, p0, Lcom/viber/voip/cq;->a:Ljava/lang/String;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Yes"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1076
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    iget-object v2, p0, Lcom/viber/voip/cq;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1078
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1079
    iget-object v1, p0, Lcom/viber/voip/cq;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 1080
    iget-object v0, p0, Lcom/viber/voip/cq;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/cq;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/SystemDialogActivity;->b(Lcom/viber/voip/SystemDialogActivity;)V

    goto :goto_0
.end method
