.class Lcom/viber/voip/messages/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/viber/voip/messages/ui/as;->b:Lcom/viber/voip/messages/ui/aj;

    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/as;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/as;->a:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/ui/as;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->c(Lcom/viber/voip/messages/ui/aj;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/as;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->c(Lcom/viber/voip/messages/ui/aj;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
