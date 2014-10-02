.class Lcom/viber/voip/messages/ui/popup/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/view/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/view/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/e;->b:Lcom/viber/voip/messages/ui/popup/view/d;

    iput p2, p0, Lcom/viber/voip/messages/ui/popup/view/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/e;->b:Lcom/viber/voip/messages/ui/popup/view/d;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;Z)Z

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/e;->b:Lcom/viber/voip/messages/ui/popup/view/d;

    iget v1, p0, Lcom/viber/voip/messages/ui/popup/view/e;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/d;->onPageScrollStateChanged(I)V

    .line 204
    return-void
.end method
