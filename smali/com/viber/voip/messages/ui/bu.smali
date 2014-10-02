.class Lcom/viber/voip/messages/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/messages/ui/bt;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/bt;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/bu;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/bt;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 523
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->m(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->p(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/ui/bv;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/ui/bv;-><init>(Lcom/viber/voip/messages/ui/bu;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bu;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 540
    return-void

    .line 532
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sticker with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " doesn\'t exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, " Unknown error, try again"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
