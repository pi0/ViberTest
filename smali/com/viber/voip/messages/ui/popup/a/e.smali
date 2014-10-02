.class Lcom/viber/voip/messages/ui/popup/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/a/a;

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/a/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/a/d;Lcom/viber/voip/messages/ui/popup/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/e;->b:Lcom/viber/voip/messages/ui/popup/a/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/popup/a/e;->a:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/e;->b:Lcom/viber/voip/messages/ui/popup/a/d;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/d;->i:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/e;->b:Lcom/viber/voip/messages/ui/popup/a/d;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Landroid/view/View;)V

    .line 102
    return-void
.end method
