.class public Lcom/viber/voip/phone/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/viber/voip/util/fy;

.field private b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/widget/ImageButton;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/viber/voip/util/fy;

    const/4 v1, 0x7

    new-array v1, v1, [[I

    const/4 v2, 0x0

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/viber/voip/util/fy;-><init>([[I)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/i;->a:Lcom/viber/voip/util/fy;

    .line 40
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/i;->b:Landroid/widget/ImageButton;

    .line 41
    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x2t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x2t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfat 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public a(Landroid/widget/ImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/i;->b:Landroid/widget/ImageButton;

    .line 45
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/i;->a:Lcom/viber/voip/util/fy;

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/fy;->a(I)I

    move-result v0

    .line 53
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/i;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/i;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/i;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
