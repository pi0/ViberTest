.class Lcom/viber/voip/messages/extras/twitter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/b;->a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/b;->a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->finish()V

    .line 57
    return-void
.end method
