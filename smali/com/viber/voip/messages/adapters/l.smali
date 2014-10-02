.class public Lcom/viber/voip/messages/adapters/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/viber/voip/util/b/w;

.field private e:Lcom/viber/voip/util/b/x;

.field private f:Lcom/viber/voip/messages/conversation/ap;

.field private g:[Lcom/viber/jni/OnlineContactInfo;

.field private h:Lcom/viber/voip/a/c;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/viber/voip/messages/adapters/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/adapters/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/messages/adapters/l;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ap;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ap;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/l;->c:Landroid/view/LayoutInflater;

    .line 57
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/l;->d:Lcom/viber/voip/util/b/w;

    .line 58
    invoke-static {p1}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/l;->e:Lcom/viber/voip/util/b/x;

    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/l;->b:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    .line 61
    iput-boolean p3, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;
    .locals 6
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->g:[Lcom/viber/jni/OnlineContactInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->g:[Lcom/viber/jni/OnlineContactInfo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 198
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/l;->g:[Lcom/viber/jni/OnlineContactInfo;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 199
    iget-object v4, v0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 202
    :cond_0
    iget-object v4, v0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    :goto_1
    return-object v0

    .line 198
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/messages/adapters/l;)Lcom/viber/voip/a/c;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->h:Lcom/viber/voip/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/viber/voip/messages/adapters/o;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/adapters/o;-><init>(Landroid/view/View;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    return-object v0
.end method

.method public a(I)Lcom/viber/voip/messages/conversation/ar;
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    if-eqz v0, :cond_1

    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/n;

    .line 147
    iget-object v0, v0, Lcom/viber/voip/messages/adapters/n;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/l;->b:Landroid/content/Context;

    const v2, 0x7f0c049a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/messages/conversation/ar;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/o;

    .line 153
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->n()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    iget-object v5, v0, Lcom/viber/voip/messages/adapters/o;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/viber/voip/messages/adapters/l;->b:Landroid/content/Context;

    const v7, 0x7f0c04a1

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_1
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->b()J

    move-result-wide v5

    .line 178
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->m()Z

    move-result v1

    .line 179
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->g()J

    move-result-wide v7

    .line 180
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/l;->d:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v9

    if-nez v1, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v1, v7, v10

    if-lez v1, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    invoke-interface {v9, v5, v6, v2}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/o;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/l;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v3, v1, v2, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 183
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-object v0, v0, Lcom/viber/voip/messages/adapters/o;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/viber/voip/messages/adapters/m;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/messages/adapters/m;-><init>(Lcom/viber/voip/messages/adapters/l;Lcom/viber/voip/messages/conversation/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_2
    return-void

    .line 158
    :cond_3
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/l;->b:Landroid/content/Context;

    const v6, 0x7f0c04a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v5, v0, Lcom/viber/voip/messages/adapters/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/adapters/l;->a(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    iget-object v3, v0, Lcom/viber/voip/messages/adapters/o;->d:Landroid/widget/TextView;

    iget-boolean v5, v1, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    iget-wide v6, v1, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-static {v5, v6, v7}, Lcom/viber/voip/util/w;->a(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 164
    goto :goto_2

    .line 171
    :cond_6
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/o;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public a([Lcom/viber/jni/OnlineContactInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/l;->g:[Lcom/viber/jni/OnlineContactInfo;

    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/l;->notifyDataSetChanged()V

    .line 214
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/viber/voip/messages/adapters/n;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/adapters/n;-><init>(Landroid/view/View;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    .line 71
    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/l;->a(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/l;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ap;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 118
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/l;->getItemViewType(I)I

    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 100
    if-nez p2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/l;->b()Landroid/view/View;

    move-result-object p2

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/adapters/l;->a(Landroid/view/View;)V

    .line 113
    :cond_1
    :goto_0
    return-object p2

    .line 104
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/l;->a(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    .line 108
    if-nez p2, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/l;->a()Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/messages/adapters/l;->a(Landroid/view/View;Lcom/viber/voip/messages/conversation/ar;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/l;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/l;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
