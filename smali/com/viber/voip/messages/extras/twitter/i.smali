.class Lcom/viber/voip/messages/extras/twitter/i;
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
    .line 70
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/i;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/i;->a:Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->finish()V

    .line 75
    return-void
.end method
