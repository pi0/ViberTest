.class Lcom/viber/voip/messages/extras/fb/l;
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
    .line 216
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/l;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/l;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 221
    return-void
.end method
