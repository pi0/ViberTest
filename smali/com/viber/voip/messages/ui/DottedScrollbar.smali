.class public Lcom/viber/voip/messages/ui/DottedScrollbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/DottedScrollbar;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/DottedScrollbar;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    .line 17
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/DottedScrollbar;->a(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setOrientation(I)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    const v1, 0x7f030097

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    const v0, 0x7f070253

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/DottedScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 37
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    const v0, 0x7f070254

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/DottedScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 38
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f070255

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/DottedScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 39
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f070256

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/DottedScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 41
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setCurrentPosition(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setCurrentPosition(I)V
    .locals 3
    .parameter

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "position is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/viber/voip/messages/ui/DottedScrollbar;->a:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    .line 59
    if-ne v0, p1, :cond_2

    const v1, 0x7f0202a3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const v1, 0x7f0202a2

    goto :goto_1

    .line 62
    :cond_3
    return-void
.end method
