.class Lcom/viber/voip/messages/extras/twitter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/h;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/h;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->a()V

    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/h;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/h;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/h;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->finish()V

    .line 68
    return-void
.end method
