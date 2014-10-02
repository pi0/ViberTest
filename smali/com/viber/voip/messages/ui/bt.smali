.class Lcom/viber/voip/messages/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/bt;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 515
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Send custom stiker"

    const-string/jumbo v2, "Checking on server"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 517
    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/ui/bu;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/ui/bu;-><init>(Lcom/viber/voip/messages/ui/bt;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method
