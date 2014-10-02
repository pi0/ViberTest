.class Lcom/viber/voip/messages/ui/popup/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/ui/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/view/b;

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;Lcom/viber/voip/messages/ui/popup/view/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/a;->b:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/popup/view/a;->a:Lcom/viber/voip/messages/ui/popup/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/a;->a:Lcom/viber/voip/messages/ui/popup/view/b;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/view/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
