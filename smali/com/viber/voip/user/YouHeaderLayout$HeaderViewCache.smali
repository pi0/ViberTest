.class public Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public photoLayoutView:Landroid/view/View;

.field public photoOverlayView:Landroid/view/View;

.field public photoView:Landroid/widget/ImageView;

.field public textViewOnPic:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/viber/voip/user/YouHeaderLayout;

.field public final usernameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/viber/voip/user/YouHeaderLayout;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->this$0:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, 0x7f070112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f07011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f070113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    .line 41
    const v0, 0x7f0700fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoLayoutView:Landroid/view/View;

    .line 42
    const v0, 0x7f070111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->textViewOnPic:Landroid/widget/TextView;

    .line 47
    return-void
.end method


# virtual methods
.method public enablePhotoOverlay(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
