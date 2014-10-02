.class Lcom/viber/voip/messages/ui/media/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bl;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bm;->a:Lcom/viber/voip/messages/ui/media/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bm;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bm;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bm;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    const v1, 0x7f0c032d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    return-void
.end method
