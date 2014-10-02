.class Lcom/viber/voip/messages/extras/fb/o;
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
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/o;->a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "call_min_time_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/o;->a:Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->finish()V

    .line 101
    return-void
.end method
