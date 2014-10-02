.class Lcom/viber/voip/messages/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/viber/voip/messages/ui/aq;->a:Lcom/viber/voip/messages/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aq;->a:Lcom/viber/voip/messages/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Package with this id doesn\'t exist"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    return-void
.end method
