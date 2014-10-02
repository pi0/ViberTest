.class Lcom/viber/voip/messages/extras/fb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/f;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/f;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 155
    return-void
.end method
