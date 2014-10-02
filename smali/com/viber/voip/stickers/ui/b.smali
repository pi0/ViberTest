.class public Lcom/viber/voip/stickers/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/stickers/b;

.field private b:Lcom/viber/voip/stickers/ui/d;

.field private c:Lcom/viber/voip/stickers/ui/d;


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/b;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/b;->a:Lcom/viber/voip/stickers/b;

    .line 38
    new-instance v0, Lcom/viber/voip/stickers/ui/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/viber/voip/stickers/ui/d;-><init>(Lcom/viber/voip/stickers/ui/b;Landroid/widget/ImageView;Z)V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    .line 39
    new-instance v0, Lcom/viber/voip/stickers/ui/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lcom/viber/voip/stickers/ui/d;-><init>(Lcom/viber/voip/stickers/ui/b;Landroid/widget/ImageView;Z)V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/b;->c:Lcom/viber/voip/stickers/ui/d;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ui/b;)Lcom/viber/voip/stickers/b;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->a:Lcom/viber/voip/stickers/b;

    return-object v0
.end method

.method private a(Lcom/viber/voip/stickers/ui/d;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {p1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/ui/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/viber/voip/stickers/ui/d;->b(Lcom/viber/voip/stickers/ui/d;)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0, p2}, Lcom/viber/voip/stickers/bb;->a(Landroid/widget/ImageView;Z)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/d;->c(Lcom/viber/voip/stickers/ui/d;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/d;->c(Lcom/viber/voip/stickers/ui/d;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/stickers/j;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/d;->c(Lcom/viber/voip/stickers/ui/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/j;

    .line 207
    iget-object v1, p0, Lcom/viber/voip/stickers/ui/b;->a:Lcom/viber/voip/stickers/b;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v0}, Lcom/viber/voip/stickers/j;->b()V

    .line 210
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->c:Lcom/viber/voip/stickers/ui/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->c:Lcom/viber/voip/stickers/ui/d;

    .line 84
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/ui/d;Landroid/graphics/Bitmap;)V

    .line 85
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    goto :goto_0
.end method

.method public a(ZZLcom/viber/voip/stickers/ba;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/ui/b;->a(ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    return v0
.end method

.method public a(ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    move-object v0, p0

    move v2, p1

    move v3, v1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/b;->a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    return v0
.end method

.method public a(ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/b;->a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    return v0
.end method

.method public a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->c:Lcom/viber/voip/stickers/ui/d;

    .line 65
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/ui/d;Z)V

    .line 66
    const/4 v4, 0x1

    move v1, p1

    move v2, p4

    move-object v3, p5

    move v5, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/d;->a(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z

    move-result v7

    .line 67
    if-nez p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->c:Lcom/viber/voip/stickers/ui/d;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p4

    move-object v3, p5

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/d;->a(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z

    .line 70
    :cond_0
    return v7

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/b;->b:Lcom/viber/voip/stickers/ui/d;

    goto :goto_0
.end method
