.class public Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/viberout/promotion/ui/b;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/viber/voip/viberout/promotion/ui/b;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/c;->a:Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/promotion/ui/c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/ui/b;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/viber/voip/viberout/promotion/ui/b;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    invoke-static {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Landroid/content/Context;Lcom/viber/voip/viberout/promotion/ui/b;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->c:Z

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "close(), already closed"

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string/jumbo v0, "close()"

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->c:Z

    .line 195
    if-eqz p1, :cond_1

    .line 196
    sget-object v0, Lcom/viber/voip/viberout/promotion/ui/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/promotion/ui/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->finish()V

    goto :goto_0

    .line 198
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->i()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 201
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->k()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/viber/voip/viberout/promotion/ui/b;->values()[Lcom/viber/voip/viberout/promotion/ui/b;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/viberout/promotion/ui/c;->a:Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-virtual {v2}, Lcom/viber/voip/viberout/promotion/ui/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupPromoScreen, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/viber/voip/viberout/promotion/ui/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/promotion/ui/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->finish()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const v0, 0x7f03014e

    .line 107
    :goto_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->setContentView(I)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/b;->a:Lcom/viber/voip/viberout/promotion/ui/b;

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/c;->c:Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/promotion/ui/c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/viberout/promotion/ui/c;->b:Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-virtual {v2}, Lcom/viber/voip/viberout/promotion/ui/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const v0, 0x7f070432

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c059d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    const v0, 0x7f070435

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_2
    const v0, 0x7f070433

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_3
    const v0, 0x7f070437

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 100
    :pswitch_1
    const v0, 0x7f03014f

    .line 101
    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    const v1, 0x7f070434

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    const v2, 0x7f070435

    invoke-virtual {p0, v2}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 144
    new-array v3, v4, [I

    .line 145
    new-array v4, v4, [I

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 147
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 150
    aget v0, v4, v5

    aget v5, v3, v5

    sub-int/2addr v0, v5

    .line 151
    aget v4, v4, v6

    aget v3, v3, v6

    sub-int v3, v4, v3

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 164
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 166
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lcom/viber/voip/viberout/promotion/ui/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b:Lcom/viber/voip/viberout/promotion/ui/b;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/promotion/ui/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "contacts_filter"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void

    .line 212
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->h()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    iget-object v1, v1, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    invoke-virtual {v1}, Lcom/viber/voip/a/at;->j()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Z)V

    .line 75
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Z)V

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Z)V

    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Z)V

    .line 181
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->d()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x7f070433
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b()V

    .line 61
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a()V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Z)V

    .line 81
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->setIntent(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->b()V

    .line 68
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a()V

    .line 69
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->c()V

    .line 136
    :cond_0
    return-void
.end method
