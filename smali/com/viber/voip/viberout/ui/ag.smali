.class Lcom/viber/voip/viberout/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ag;->a:[Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting purchase of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    invoke-virtual {v1}, Lcom/viber/voip/billing/q;->b()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/ui/ah;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/ah;-><init>(Lcom/viber/voip/viberout/ui/ag;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/n;)V

    .line 814
    return-void
.end method
