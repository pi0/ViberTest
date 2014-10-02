.class public Lcom/viber/voip/messages/ui/ConversationGalleryListView;
.super Lcom/viber/voip/ui/ac;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(IF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected a(ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public a(Lcom/viber/voip/ui/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method protected c()Lcom/viber/voip/ui/ai;
    .locals 4

    .prologue
    .line 33
    new-instance v1, Lcom/viber/voip/ui/ai;

    invoke-direct {v1}, Lcom/viber/voip/ui/ai;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    .line 36
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f070209

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->a:Landroid/widget/TextView;

    .line 38
    return-object v1
.end method

.method protected getHeaderTag()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f07009c

    return v0
.end method
