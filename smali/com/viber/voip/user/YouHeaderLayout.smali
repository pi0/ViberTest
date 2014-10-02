.class public Lcom/viber/voip/user/YouHeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private cachedView:Landroid/view/View;

.field private mFetcherConfig:Lcom/viber/voip/util/b/x;

.field private mImageFetcher:Lcom/viber/voip/util/b/w;

.field private mInflater:Landroid/view/LayoutInflater;

.field private viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/user/YouHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/user/YouHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->mImageFetcher:Lcom/viber/voip/util/b/w;

    .line 72
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const v1, 0x7f020410

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    .line 73
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->cachedView:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->cachedView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;-><init>(Lcom/viber/voip/user/YouHeaderLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/YouHeaderLayout;)Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    return-object v0
.end method


# virtual methods
.method public getViewCache()Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    return-object v0
.end method

.method public initControls(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v0, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v0, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    new-instance v1, Lcom/viber/voip/user/YouHeaderLayout$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/YouHeaderLayout$1;-><init>(Lcom/viber/voip/user/YouHeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/user/YouHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v0, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    const v0, 0x7f070112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    const v0, 0x7f070111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->textViewOnPic:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    const v1, 0x7f070113

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    const v1, 0x7f0700fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoLayoutView:Landroid/view/View;

    .line 103
    :cond_1
    return-void
.end method

.method public setHeaderInfo(Landroid/net/Uri;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v1, v1, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/ViberApplication;->externalStorageMounted(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v1, v1, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->textViewOnPic:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->mImageFetcher:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    iget-object v2, v2, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/user/YouHeaderLayout;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    invoke-virtual {v0, p2}, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    return-void
.end method

.method public setHeaderInfo(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/user/YouHeaderLayout;->setHeaderInfo(Landroid/net/Uri;Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method
