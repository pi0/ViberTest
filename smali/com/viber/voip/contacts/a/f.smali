.class public Lcom/viber/voip/contacts/a/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final e:I

.field private static final f:I


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/viber/voip/contacts/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/f;->a:Ljava/lang/String;

    .line 34
    const/high16 v0, 0x4240

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/contacts/a/f;->e:I

    .line 35
    const/high16 v0, 0x4280

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/contacts/a/f;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    .line 72
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/f;->d:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method

.method private a(Lcom/viber/voip/contacts/d/b;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 197
    sget-object v0, Lcom/viber/voip/contacts/a/g;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/contacts/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uknown entry type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c05dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0300

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0301

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c031f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0302

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_7
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_8
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    const v1, 0x7f0c0304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_9
    const-string/jumbo v0, ""

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/a/h;

    .line 109
    sget-object v2, Lcom/viber/voip/contacts/d/b;->l:Lcom/viber/voip/contacts/d/b;

    iget-object v5, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v2, v5}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 110
    :goto_0
    sget-object v5, Lcom/viber/voip/contacts/d/b;->l:Lcom/viber/voip/contacts/d/b;

    iget-object v6, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v5, v6}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    .line 111
    :goto_1
    iget-object v6, v1, Lcom/viber/voip/contacts/a/h;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v2, v1, Lcom/viber/voip/contacts/a/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v2, v1, Lcom/viber/voip/contacts/a/h;->f:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    sget-object v2, Lcom/viber/voip/contacts/d/b;->l:Lcom/viber/voip/contacts/d/b;

    iget-object v5, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v2, v5}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 109
    goto :goto_0

    :cond_1
    move v5, v4

    .line 110
    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, v1, Lcom/viber/voip/contacts/a/h;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, v1, Lcom/viber/voip/contacts/a/h;->c:Landroid/widget/ImageView;

    .line 121
    iget v5, v0, Lcom/viber/voip/contacts/d/a;->g:I

    if-eqz v5, :cond_4

    .line 122
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget v5, v0, Lcom/viber/voip/contacts/d/a;->g:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 130
    :goto_3
    sget-object v5, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    iget-object v6, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v5, v6}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    iget-object v5, v1, Lcom/viber/voip/contacts/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :goto_4
    sget-object v5, Lcom/viber/voip/contacts/d/b;->c:Lcom/viber/voip/contacts/d/b;

    iget-object v6, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v5, v6}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    iget-object v6, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v5, v6}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 138
    :cond_3
    invoke-static {v1}, Lcom/viber/voip/contacts/a/h;->a(Lcom/viber/voip/contacts/a/h;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/viber/voip/contacts/a/f;->e:I

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :goto_5
    iget-object v5, v0, Lcom/viber/voip/contacts/d/a;->e:Ljava/lang/String;

    .line 145
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 146
    iget-object v1, v1, Lcom/viber/voip/contacts/a/h;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_6
    iget-object v0, v0, Lcom/viber/voip/contacts/d/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/a/f;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 134
    :cond_5
    iget-object v5, v1, Lcom/viber/voip/contacts/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 140
    :cond_6
    invoke-static {v1}, Lcom/viber/voip/contacts/a/h;->a(Lcom/viber/voip/contacts/a/h;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/viber/voip/contacts/a/f;->f:I

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 148
    :cond_7
    iget-object v4, v1, Lcom/viber/voip/contacts/a/h;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v1, v1, Lcom/viber/voip/contacts/a/h;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private b(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 157
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 158
    iget-object v2, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/h;

    .line 161
    sget-object v1, Lcom/viber/voip/contacts/d/b;->k:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/viber/voip/contacts/d/b;->l:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    invoke-virtual {v0, v4}, Lcom/viber/voip/contacts/a/h;->a(I)V

    .line 164
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->b(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_0
    sget-object v1, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 191
    :goto_1
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->d(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->c(Lcom/viber/voip/contacts/a/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    return-void

    .line 165
    :cond_1
    if-lez p2, :cond_3

    .line 166
    iget-object v1, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/d/a;

    .line 167
    iget-object v1, v1, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v0, v4}, Lcom/viber/voip/contacts/a/h;->a(I)V

    .line 169
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->b(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v5}, Lcom/viber/voip/contacts/a/h;->a(I)V

    .line 172
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->b(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-direct {p0, v2}, Lcom/viber/voip/contacts/a/f;->a(Lcom/viber/voip/contacts/d/b;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->c(Lcom/viber/voip/contacts/a/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {v0, v5}, Lcom/viber/voip/contacts/a/h;->a(I)V

    .line 179
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->b(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-direct {p0, v2}, Lcom/viber/voip/contacts/a/f;->a(Lcom/viber/voip/contacts/d/b;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0}, Lcom/viber/voip/contacts/a/h;->c(Lcom/viber/voip/contacts/a/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/contacts/a/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/h;

    .line 94
    :goto_0
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/viber/voip/contacts/a/f;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v0, Lcom/viber/voip/contacts/a/h;

    invoke-direct {v0, p2}, Lcom/viber/voip/contacts/a/h;-><init>(Landroid/view/View;)V

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/viber/voip/contacts/a/f;->a(Landroid/view/View;I)V

    .line 100
    return-object p2

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
