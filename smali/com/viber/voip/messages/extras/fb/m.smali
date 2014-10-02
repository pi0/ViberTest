.class Lcom/viber/voip/messages/extras/fb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/m;->a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/m;->a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/m;->a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->finish()V

    .line 87
    return-void
.end method
