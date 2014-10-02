.class public Lcom/viber/voip/ui/ViberListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field public static final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/ui/ViberListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/ViberListView;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setDescendantFocusability(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setDescendantFocusability(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setDescendantFocusability(I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberListView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberListView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ui/ViberListView;->measure(II)V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 72
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
