.class Lcom/viber/voip/stickers/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/ui/b;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/Object;

.field private d:Lcom/viber/voip/stickers/h;

.field private e:Lcom/viber/voip/stickers/c/a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/ui/b;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/d;->a:Lcom/viber/voip/stickers/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/viber/voip/stickers/ui/d;->b:Landroid/widget/ImageView;

    .line 96
    iput-boolean p3, p0, Lcom/viber/voip/stickers/ui/d;->f:Z

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ui/d;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ui/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->d()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    .line 201
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    invoke-direct {p0}, Lcom/viber/voip/stickers/ui/d;->a()V

    .line 189
    return-void
.end method

.method private a(Landroid/graphics/Picture;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/viber/voip/stickers/f/b;

    invoke-direct {v1, p1}, Lcom/viber/voip/stickers/f/b;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-direct {p0}, Lcom/viber/voip/stickers/ui/d;->a()V

    .line 194
    return-void
.end method

.method private a(Lcom/viber/voip/stickers/h;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/viber/voip/stickers/h;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/d;->b(Lcom/viber/voip/stickers/h;)V

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ui/d;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/h;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/stickers/ui/d;)Lcom/viber/voip/stickers/c/a;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    return-object v0
.end method

.method private b(Lcom/viber/voip/stickers/h;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    .line 179
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    .line 180
    invoke-virtual {p1}, Lcom/viber/voip/stickers/h;->b()V

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->d()V

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/d;->b(Lcom/viber/voip/stickers/h;)V

    return-void
.end method

.method private b(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->a:Lcom/viber/voip/stickers/ui/b;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/ui/b;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget-boolean v2, p0, Lcom/viber/voip/stickers/ui/d;->f:Z

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/h;)V

    .line 156
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->a:Lcom/viber/voip/stickers/ui/b;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/ui/b;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/ui/d;->a(Landroid/graphics/Bitmap;)V

    .line 128
    if-nez p5, :cond_1

    .line 129
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->a:Lcom/viber/voip/stickers/ui/b;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/ui/b;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget-boolean v3, p0, Lcom/viber/voip/stickers/ui/d;->f:Z

    new-instance v6, Lcom/viber/voip/stickers/ui/e;

    invoke-direct {v6, p0, p6, p4}, Lcom/viber/voip/stickers/ui/e;-><init>(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/ui/c;Z)V

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/o;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/ui/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 160
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v1, v0, Lcom/viber/voip/stickers/c/a;->p:I

    .line 161
    :goto_0
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    if-ne v0, p3, :cond_3

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v2, v0, Lcom/viber/voip/stickers/c/a;->q:I

    .line 163
    :goto_1
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    iget-boolean v3, p0, Lcom/viber/voip/stickers/ui/d;->f:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget-object v3, v3, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    :goto_2
    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/bb;->a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Picture;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/ui/d;->a(Landroid/graphics/Picture;)V

    .line 166
    if-eqz p6, :cond_0

    .line 167
    invoke-interface {p6, v6}, Lcom/viber/voip/stickers/ui/c;->a(Z)Z

    .line 169
    :cond_0
    return v6

    .line 160
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v1, v0, Lcom/viber/voip/stickers/c/a;->l:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v1, v0, Lcom/viber/voip/stickers/c/a;->n:I

    goto :goto_0

    .line 161
    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v2, v0, Lcom/viber/voip/stickers/c/a;->m:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget v2, v0, Lcom/viber/voip/stickers/c/a;->o:I

    goto :goto_1

    .line 163
    :cond_5
    iget-object v3, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    iget-object v3, v3, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->a:Lcom/viber/voip/stickers/ui/b;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/ui/b;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->b(Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->d()V

    .line 107
    iput-object v2, p0, Lcom/viber/voip/stickers/ui/d;->d:Lcom/viber/voip/stickers/h;

    .line 109
    :cond_1
    iput-object v2, p0, Lcom/viber/voip/stickers/ui/d;->c:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    .line 111
    return-void
.end method

.method public a(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/d;->e:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/stickers/ui/d;->c(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/stickers/ui/d;->b(ZZLcom/viber/voip/stickers/ba;ZZLcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    goto :goto_0
.end method
