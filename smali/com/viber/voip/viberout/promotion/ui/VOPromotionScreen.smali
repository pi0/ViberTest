.class public Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# instance fields
.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Opening page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-static {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 206
    iget-boolean v0, p0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->f:Z

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "close(), already closed"

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string/jumbo v0, "close()"

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;)V

    .line 211
    iput-boolean v4, p0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->f:Z

    .line 212
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 214
    const/4 v0, 0x0

    .line 215
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "com.viber.voip.action.vo_promotion_free_call"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.viber.voip.action.vo_promotion_no_free_call"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->h:Lcom/viber/voip/viberout/promotion/a;

    .line 217
    sput-boolean v4, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->d:Z

    .line 226
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 227
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 230
    :cond_2
    if-eqz p1, :cond_3

    .line 231
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_free_call"

    aput-object v2, v0, v5

    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_no_free_call"

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 238
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->finish()V

    goto :goto_0

    .line 218
    :cond_4
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->i:Lcom/viber/voip/viberout/promotion/a;

    .line 220
    sput-boolean v4, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->e:Z

    goto :goto_1

    .line 221
    :cond_5
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_contact_info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->j:Lcom/viber/voip/viberout/promotion/a;

    goto :goto_1

    .line 223
    :cond_6
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_end_of_trial"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->k:Lcom/viber/voip/viberout/promotion/a;

    goto :goto_1

    .line 233
    :cond_7
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_end_of_trial"

    aput-object v2, v0, v5

    invoke-static {v1, v0}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->g()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 259
    sget-boolean v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->b:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->c:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->d:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->e:Z

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportPropoScreen, action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .line 74
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_free_call"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v0, v0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v0}, Lcom/viber/voip/a/at;->l()Lcom/viber/voip/a/c;

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 90
    :cond_1
    return-void

    .line 76
    :cond_2
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_no_free_call"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v0, v0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v0}, Lcom/viber/voip/a/at;->m()Lcom/viber/voip/a/c;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v0, v0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v0}, Lcom/viber/voip/a/at;->n()Lcom/viber/voip/a/c;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_4
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_contact_info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v0, v0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v0}, Lcom/viber/voip/a/at;->o()Lcom/viber/voip/a/c;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_5
    const-string/jumbo v2, "com.viber.voip.action.vo_promotion_end_of_trial"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v0, v0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v0}, Lcom/viber/voip/a/at;->p()Lcom/viber/voip/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const v0, 0x7f030150

    const/4 v5, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupPromoScreen, action:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    .line 103
    const-string/jumbo v4, "com.viber.voip.action.vo_promotion_free_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 105
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->g()V

    .line 106
    sput-boolean v5, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->b:Z

    .line 123
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->setContentView(I)V

    .line 125
    const v0, 0x7f070436

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 128
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    const v0, 0x7f07021f

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_1
    const v0, 0x7f070435

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_2
    const v0, 0x7f070438

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_3
    const v0, 0x7f070433

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 148
    if-eqz v0, :cond_5

    .line 149
    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_free_call"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 150
    const v1, 0x7f0c0590

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    :cond_4
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_5
    const v0, 0x7f070437

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_6
    return-void

    .line 107
    :cond_7
    const-string/jumbo v4, "com.viber.voip.action.vo_promotion_no_free_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->g()V

    .line 110
    sput-boolean v5, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->b:Z

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string/jumbo v0, "com.viber.voip.action.vo_promotion_contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    const v0, 0x7f030152

    .line 113
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->g()V

    .line 114
    sput-boolean v5, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->c:Z

    goto/16 :goto_0

    .line 115
    :cond_9
    const-string/jumbo v0, "com.viber.voip.action.vo_promotion_contact_info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    const v0, 0x7f030151

    goto/16 :goto_0

    .line 117
    :cond_a
    const-string/jumbo v0, "com.viber.voip.action.vo_promotion_end_of_trial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    const v0, 0x7f030153

    goto/16 :goto_0

    .line 120
    :cond_b
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->finish()V

    move v0, v1

    goto/16 :goto_0

    .line 151
    :cond_c
    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_no_free_call"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    const v1, 0x7f0c0591

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->d()V

    .line 202
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 167
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    goto :goto_0

    .line 171
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 176
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 180
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 181
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 182
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->h()V

    goto :goto_0

    .line 186
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 187
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b()V

    goto :goto_0

    .line 191
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 192
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->L:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const v1, 0x7f0c056d

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->f()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07021f -> :sswitch_5
        0x7f070433 -> :sswitch_3
        0x7f070435 -> :sswitch_0
        0x7f070436 -> :sswitch_2
        0x7f070437 -> :sswitch_1
        0x7f070438 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->f()V

    .line 44
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->e()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a(Z)V

    .line 64
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->setIntent(Landroid/content/Intent;)V

    .line 50
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->f()V

    .line 51
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->e()V

    .line 52
    return-void
.end method
