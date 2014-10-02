.class Lcom/viber/voip/viberout/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/ai;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/t;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/t;->a:[Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lcom/viber/voip/viberout/ui/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/t;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/t;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/t;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 515
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/viber/voip/billing/ah;->b:Ljava/lang/String;

    .line 517
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/viberout/ui/t;->b:Z

    if-eqz v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/t;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-static {v1, p1, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V

    .line 527
    :cond_0
    :goto_1
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_2
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/t;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/billing/ae;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/t;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->c(Lcom/viber/voip/billing/ae;)V

    goto :goto_1
.end method
