.class Lcom/viber/voip/gallery/selection/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/g;->a:Landroid/view/View;

    .line 154
    const v0, 0x7f0700d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/g;->b:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/g;->c:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/g;->d:Landroid/widget/ImageView;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/viber/voip/gallery/selection/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/g;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private a(Lcom/viber/voip/gallery/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/g;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/g;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/g;Lcom/viber/voip/gallery/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/selection/g;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/g;->c:Landroid/widget/TextView;

    return-object v0
.end method
