.class public Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 74
    :try_start_1
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->c()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->setVerticalScrollbarPosition(I)V

    .line 89
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 92
    const-class v0, Landroid/view/View;

    .line 94
    const-string/jumbo v1, "mScrollCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "scrollBar"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "mVerticalThumb"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 110
    new-instance v3, Lcom/viber/voip/messages/ui/bq;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v3, p0, v4}, Lcom/viber/voip/messages/ui/bq;-><init>(Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;[Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method


# virtual methods
.method public invalidate(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->getWidth()I

    move-result v0

    if-ne p3, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->getHeight()I

    move-result v0

    if-ne p4, v0, :cond_0

    sub-int v0, p3, p1

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 54
    sub-int v0, p3, p1

    .line 55
    const/4 p1, 0x0

    .line 56
    add-int p3, p1, v0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 60
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/ListViewWithLeftScrollBar;->invalidate(IIII)V

    .line 46
    return-void
.end method
