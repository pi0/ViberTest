.class Lcom/viber/voip/messages/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/i;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/viber/voip/messages/ui/j;->a:Lcom/viber/voip/messages/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/ui/j;->a:Lcom/viber/voip/messages/ui/i;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/i;->a:Landroid/view/ContextMenu;

    const v1, 0x7f070471

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    return-void
.end method
