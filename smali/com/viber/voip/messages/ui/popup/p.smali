.class Lcom/viber/voip/messages/ui/popup/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/o;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/p;->a:Lcom/viber/voip/messages/ui/popup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/p;->a:Lcom/viber/voip/messages/ui/popup/o;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x4120

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 449
    return-void
.end method
