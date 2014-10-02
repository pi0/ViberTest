.class public Lcom/viber/voip/messages/adapters/h;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ax;


# instance fields
.field private a:Lcom/viber/voip/messages/conversation/ah;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:Lcom/viber/voip/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/messages/conversation/ah;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 55
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/h;->b:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/h;->a:Lcom/viber/voip/messages/conversation/ah;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    .line 58
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/h;->d:Z

    .line 60
    new-instance v0, Lcom/viber/voip/as;

    invoke-virtual {p4}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/viber/voip/as;-><init>(Landroid/content/Context;FFF)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v0, p0}, Lcom/viber/voip/as;->a(Lcom/viber/voip/ax;)V

    .line 62
    new-instance v0, Lcom/viber/voip/messages/adapters/i;

    invoke-direct {v0, p0, p4}, Lcom/viber/voip/messages/adapters/i;-><init>(Lcom/viber/voip/messages/adapters/h;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V

    invoke-virtual {p4, v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setOnSizeChangeListener(Lcom/viber/voip/messages/ui/view/i;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/h;)Lcom/viber/voip/as;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/an;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-boolean v3, p0, Lcom/viber/voip/messages/adapters/h;->d:Z

    if-nez v3, :cond_1

    .line 144
    const/4 v0, 0x3

    .line 167
    :goto_1
    return v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "animated_message"

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    const/4 v0, 0x6

    goto :goto_1

    .line 147
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    const/4 v0, 0x2

    goto :goto_1

    .line 149
    :cond_3
    if-nez v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/adapters/h;->a(Landroid/content/Context;)V

    :cond_5
    move v0, v1

    .line 162
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 160
    :cond_6
    const/4 v0, 0x5

    goto :goto_2

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_1
.end method

.method public a(I)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->a:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ah;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/viber/voip/messages/adapters/h;->e:I

    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/h;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/adapters/h;->e:I

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->c()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/adapters/h;->e:I

    .line 112
    :cond_0
    return-void
.end method

.method public a(ILcom/viber/voip/aw;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/viber/voip/messages/adapters/h;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/h;->a:Lcom/viber/voip/messages/conversation/ah;

    .line 177
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->b()V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/viber/voip/messages/adapters/h;->e:I

    .line 99
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/as;->d(ILandroid/net/Uri;)V

    .line 104
    :cond_0
    return-void
.end method

.method public b(ILcom/viber/voip/aw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/h;->a:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/h;->a(Lcom/viber/voip/messages/conversation/an;)I

    move-result v2

    .line 120
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v3, p1, v0}, Lcom/viber/voip/as;->c(ILandroid/net/Uri;)Lcom/viber/voip/aw;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/viber/voip/aw;->b:Z

    if-nez v3, :cond_1

    .line 125
    iget-object v1, v0, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/viber/voip/aw;->c:I

    iget v0, v0, Lcom/viber/voip/aw;->d:I

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/messages/ui/media/bf;->a(Landroid/graphics/Bitmap;III)Lcom/viber/voip/messages/ui/media/bf;

    move-result-object v0

    .line 131
    :goto_1
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/bf;->a(Landroid/graphics/Bitmap;I)Lcom/viber/voip/messages/ui/media/bf;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/h;->f:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/viber/voip/as;->c(ILandroid/net/Uri;)Lcom/viber/voip/aw;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    :cond_4
    invoke-static {v1, v2, p1}, Lcom/viber/voip/messages/ui/media/bj;->a(Landroid/graphics/Bitmap;II)Lcom/viber/voip/messages/ui/media/bj;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, -0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/h;->d:Z

    .line 183
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method
