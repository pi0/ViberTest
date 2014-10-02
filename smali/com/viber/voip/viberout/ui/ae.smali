.class Lcom/viber/voip/viberout/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/billing/q;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/q;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/ae;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    iput-object p5, p0, Lcom/viber/voip/viberout/ui/ae;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 778
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 779
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 780
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/ae;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/viberout/ui/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 782
    :cond_0
    new-array v0, v5, [Landroid/app/ProgressDialog;

    .line 783
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    new-instance v3, Lcom/viber/voip/viberout/ui/af;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/viberout/ui/af;-><init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;)V

    invoke-static {v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v2

    aput-object v2, v0, v1

    .line 791
    new-instance v1, Lcom/viber/voip/viberout/ui/ag;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/viberout/ui/ag;-><init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;)V

    .line 821
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/viber/voip/viberout/ui/ai;

    invoke-direct {v4, p0, v0, v1}, Lcom/viber/voip/viberout/ui/ai;-><init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/viber/voip/billing/ap;->a(ZLjava/util/List;Lcom/viber/voip/billing/bj;)V

    .line 851
    return-void
.end method
