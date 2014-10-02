.class public Lcom/viber/voip/messages/ui/chathead/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private b:Lcom/viber/voip/messages/orm/entity/ConversationEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/chathead/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 18
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    const v1, 0x7f0a01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 21
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const v2, 0x7f0a01cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setBorderWidth(F)V

    .line 23
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const v2, 0x7f09009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setBorderColor(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/b;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/b;->b:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/b;->b:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/b;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-interface {p1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTag(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/b;->b:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    return-object v0
.end method
