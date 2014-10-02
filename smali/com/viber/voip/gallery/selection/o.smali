.class Lcom/viber/voip/gallery/selection/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/viber/voip/widget/CheckableImageView;

.field private c:Lcom/viber/voip/gallery/a/d;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/o;->a:Landroid/view/View;

    .line 185
    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/CheckableImageView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/o;->b:Lcom/viber/voip/widget/CheckableImageView;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/viber/voip/gallery/selection/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/o;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/o;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/o;->a:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/viber/voip/gallery/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/o;->c:Lcom/viber/voip/gallery/a/d;

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/o;Lcom/viber/voip/gallery/a/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/o;->a(Lcom/viber/voip/gallery/a/d;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/selection/o;)Lcom/viber/voip/widget/CheckableImageView;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/o;->b:Lcom/viber/voip/widget/CheckableImageView;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/gallery/a/d;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/o;->c:Lcom/viber/voip/gallery/a/d;

    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/o;->b:Lcom/viber/voip/widget/CheckableImageView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/CheckableImageView;->setChecked(Z)V

    .line 198
    return-void
.end method
