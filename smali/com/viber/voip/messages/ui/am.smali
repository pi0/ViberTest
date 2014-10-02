.class Lcom/viber/voip/messages/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/viber/voip/messages/ui/am;->b:Lcom/viber/voip/messages/ui/aj;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/am;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/ui/am;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/am;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/ui/am;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 228
    :cond_0
    return-void
.end method
