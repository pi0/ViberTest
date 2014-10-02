.class public Lcom/viber/voip/messages/ui/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/viber/voip/messages/conversation/h;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/BaseAdapter;

.field private g:Lcom/viber/voip/util/b/x;

.field private h:Lcom/viber/voip/util/b/w;

.field private i:Lcom/viber/voip/messages/ui/view/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/view/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->c:Landroid/view/LayoutInflater;

    .line 76
    new-instance v0, Lcom/viber/voip/messages/ui/view/f;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/ui/view/f;-><init>(Lcom/viber/voip/messages/ui/view/c;Lcom/viber/voip/messages/ui/view/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->f:Landroid/widget/BaseAdapter;

    .line 77
    new-instance v0, Lcom/viber/voip/messages/ui/view/g;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/ui/view/g;-><init>(Lcom/viber/voip/messages/ui/view/c;Lcom/viber/voip/messages/ui/view/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->c:Landroid/view/LayoutInflater;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->b:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/b/b/b;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/viber/voip/util/b/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->g:Lcom/viber/voip/util/b/x;

    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->h:Lcom/viber/voip/util/b/w;

    .line 84
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    if-eqz p2, :cond_0

    :goto_0
    return-object p2

    :cond_0
    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0700a9

    const v8, 0x7f0700aa

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    packed-switch p3, :pswitch_data_0

    .line 193
    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v0, 0x7f0700ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v0, 0x7f0700a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/view/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0492

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v0, 0x7f0700ab

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->m()I

    move-result v0

    move v1, v0

    .line 118
    :goto_1
    const v0, 0x7f0700a8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0c0614

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    const v4, 0x7f0c0617

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-ne v1, v5, :cond_1

    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    const v4, 0x7f0c0616

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 125
    :goto_2
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 127
    goto/16 :goto_0

    :cond_0
    move v1, v3

    .line 116
    goto :goto_1

    .line 122
    :cond_1
    if-le v1, v5, :cond_8

    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    const v4, 0x7f0c0615

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 130
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 131
    const v0, 0x7f0700ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f0700a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c048b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    if-eqz p4, :cond_2

    .line 135
    invoke-virtual {p4}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c048d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v0, 0x7f0700a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_2
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 155
    goto/16 :goto_0

    .line 140
    :cond_3
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c048c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v0, 0x7f0700a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :try_start_0
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const v0, 0x7f0700aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    new-instance v2, Lcom/viber/voip/messages/ui/view/e;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/ui/view/e;-><init>(Lcom/viber/voip/messages/ui/view/c;Landroid/widget/ImageView;)V

    .line 149
    iget-object v3, p0, Lcom/viber/voip/messages/ui/view/c;->h:Lcom/viber/voip/util/b/w;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->f()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/messages/ui/view/c;->g:Lcom/viber/voip/util/b/x;

    invoke-virtual {v3, v0, v4, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 151
    :catch_0
    move-exception v0

    goto :goto_3

    .line 158
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 159
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->d()Z

    move-result v7

    .line 160
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v0, 0x7f0700a8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    const v2, 0x7f0700ab

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 165
    const v4, 0x7f0c0493

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 166
    if-eqz v7, :cond_4

    const v4, 0x7f0c0495

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->e()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->e()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->e()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_7
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 173
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v6

    .line 174
    goto/16 :goto_0

    .line 166
    :cond_4
    const v4, 0x7f0c0494

    goto :goto_4

    :cond_5
    move v4, v3

    .line 169
    goto :goto_5

    :cond_6
    move v0, v3

    .line 170
    goto :goto_6

    :cond_7
    move v5, v3

    .line 171
    goto :goto_7

    .line 177
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    const v0, 0x7f0700a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0648

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c06b1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    const v0, 0x7f0700ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/view/c;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 185
    goto/16 :goto_0

    .line 188
    :pswitch_5
    const v0, 0x7f0300f0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto/16 :goto_2

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/view/c;Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/view/c;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->a:Ljava/lang/Boolean;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->b:Ljava/lang/Boolean;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private f()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->c:Landroid/util/Pair;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->c:Landroid/util/Pair;

    .line 288
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->c:Landroid/util/Pair;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 87
    const-string/jumbo v0, "setConversation"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->b:Landroid/view/View;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/view/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->b:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iput-object v4, v0, Lcom/viber/voip/messages/ui/view/g;->a:Ljava/lang/Boolean;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iput-object v4, v0, Lcom/viber/voip/messages/ui/view/g;->b:Ljava/lang/Boolean;

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    const-string/jumbo v0, "onGroupNameChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iput-object p1, v0, Lcom/viber/voip/messages/ui/view/g;->d:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 315
    const-string/jumbo v0, "onBackgroundImageChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->c:Landroid/util/Pair;

    .line 317
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 320
    const-string/jumbo v0, "onSmartNotificationChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->a:Ljava/lang/Boolean;

    .line 322
    return-void
.end method

.method public b()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->f:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupMute isMuteOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->b:Ljava/lang/Boolean;

    .line 327
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0c04a3

    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_0

    .line 296
    const-string/jumbo v0, ""

    .line 305
    :goto_0
    return-object v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/messages/ui/view/g;->d:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->i:Lcom/viber/voip/messages/ui/view/g;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/view/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/c;->d:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
