.class Lcom/viber/voip/messages/extras/fb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/g;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/g;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 162
    return-void
.end method
