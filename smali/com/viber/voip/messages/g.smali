.class public Lcom/viber/voip/messages/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/res/Resources;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f02008b

    const v4, 0x7f02008a

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    .line 26
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/g;->f:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f020088

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f02008c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v3, 0x7f02008e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/g;->a:Landroid/util/SparseArray;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/g;->b:Landroid/util/SparseArray;

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/g;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/g;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/g;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f020088

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f020089

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f02008d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v3, 0x7f02008f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/g;->c:Landroid/util/SparseArray;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/g;->d:Landroid/util/SparseArray;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/g;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/g;->d:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/g;->d:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v2, 0x7f020089

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private c(Ljava/lang/Long;)Z
    .locals 4
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 153
    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v1, 0x7f0c03c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/g;->c(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/g;->e:Landroid/content/res/Resources;

    const v1, 0x7f0c03c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/g;->f:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/ak;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/viber/voip/messages/g;->f:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/ak;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    return-object v0
.end method
