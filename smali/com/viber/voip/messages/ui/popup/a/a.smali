.class public Lcom/viber/voip/messages/ui/popup/a/a;
.super Lcom/viber/voip/messages/ui/popup/a/l;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/b/e;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Z

.field private c:Lcom/viber/voip/messages/ui/bb;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Lcom/viber/voip/a/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/messages/ui/popup/a/l;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;Z)V

    .line 44
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->f:Lcom/viber/voip/a/m;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->d:Landroid/view/LayoutInflater;

    .line 49
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->c:Lcom/viber/voip/messages/ui/bb;

    .line 50
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->b()Z

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/ui/popup/a/d;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/a/d;

    .line 159
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/d;->a()Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string/jumbo v3, "sticker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->w()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(I)V

    .line 166
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v4

    .line 172
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a/f;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/popup/a/f;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/popup/a/a;->b:Z

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->ak()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/f;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->g()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0523

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/f;->a()Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    .line 180
    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/f;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/a;->c:Lcom/viber/voip/messages/ui/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/f;->e:Landroid/widget/TextView;

    sget v2, Lcom/viber/voip/messages/ui/bd;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    goto :goto_0
.end method

.method private c(Landroid/view/View;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v4

    .line 188
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/popup/a/d;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string/jumbo v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "animated_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    :cond_0
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v1, v4, v7, v7, v6}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/g;ZZZ)V

    .line 198
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v6

    .line 199
    :goto_0
    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a/a;->c:Lcom/viber/voip/messages/ui/bb;

    iget-object v3, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    sget v4, Lcom/viber/voip/messages/ui/bd;->c:I

    invoke-virtual {v2, v3, v4, v7}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    move v2, v6

    move v6, v1

    move v1, v7

    .line 227
    :goto_1
    iget-object v4, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    move v3, v7

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v3, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    if-eqz v2, :cond_9

    move v2, v7

    :goto_3
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/adapters/MediaLayout;->setVisibility(I)V

    .line 229
    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/a/d;->g:Lcom/viber/voip/widget/PttLayout;

    if-eqz v1, :cond_a

    :goto_4
    invoke-virtual {v0, v7}, Lcom/viber/voip/widget/PttLayout;->setVisibility(I)V

    .line 230
    return-void

    :cond_1
    move v1, v7

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    const-string/jumbo v2, "sticker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->w()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(I)V

    move v1, v7

    move v2, v6

    move v6, v7

    .line 203
    goto :goto_1

    .line 204
    :cond_3
    const-string/jumbo v2, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v1, v4, v6}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/g;Z)V

    .line 206
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0420

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_5
    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v7

    move v2, v6

    .line 209
    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->I()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 209
    :cond_5
    const-string/jumbo v2, "sound"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->g:Lcom/viber/voip/widget/PttLayout;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/u;

    invoke-direct {v2, v4}, Lcom/viber/voip/messages/conversation/a/u;-><init>(Lcom/viber/voip/messages/conversation/an;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 214
    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/t;

    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/d;->g:Lcom/viber/voip/widget/PttLayout;

    invoke-direct {v1, v2, p0}, Lcom/viber/voip/messages/conversation/a/a/a/t;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;)V

    new-instance v2, Lcom/viber/voip/messages/conversation/a/u;

    invoke-direct {v2, v4}, Lcom/viber/voip/messages/conversation/a/u;-><init>(Lcom/viber/voip/messages/conversation/an;)V

    invoke-virtual {v1, v2, v5}, Lcom/viber/voip/messages/conversation/a/a/a/t;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    move v1, v6

    move v2, v7

    move v6, v7

    goto/16 :goto_1

    .line 216
    :cond_6
    const-string/jumbo v2, "formatted_follow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/a/d;->f:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f02034a

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Landroid/net/Uri;I)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->g()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0672

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->h()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/viber/voip/util/gj;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->g()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c06bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/a;->c:Lcom/viber/voip/messages/ui/bb;

    iget-object v2, v0, Lcom/viber/voip/messages/ui/popup/a/d;->h:Landroid/widget/TextView;

    sget v3, Lcom/viber/voip/messages/ui/bd;->c:I

    invoke-virtual {v1, v2, v3, v7}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    :cond_7
    move v1, v7

    move v2, v6

    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 227
    goto/16 :goto_2

    :cond_9
    move v2, v8

    .line 228
    goto/16 :goto_3

    :cond_a
    move v7, v8

    .line 229
    goto/16 :goto_4
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/ui/popup/a/a;->d(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/ui/popup/a/a;->b(Landroid/view/View;I)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->e:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/ui/popup/a/a;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/view/ViewPager;Landroid/app/Activity;)Lcom/viber/voip/messages/conversation/an;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 240
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/a/c;

    .line 242
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/c;->b()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/c;->a()Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 246
    :goto_1
    return-object v0

    .line 239
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/a;->a:Landroid/view/View$OnClickListener;

    .line 251
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/a/a;->b:Z

    .line 255
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/a;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    return v0
.end method

.method public g(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 259
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a/a;->f:Lcom/viber/voip/a/m;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/a/n;->b:Lcom/viber/voip/a/n;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/a/m;->a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 261
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->S()Z

    move-result v2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/a;->f:Lcom/viber/voip/a/m;

    invoke-virtual {v0}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->T()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, p1, v2, v3, v0}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/a/a/a;ZLjava/lang/String;Z)V

    .line 262
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/viber/voip/a/n;->a:Lcom/viber/voip/a/n;

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
