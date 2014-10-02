.class public Lcom/viber/voip/util/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:Lcom/viber/voip/HomeActivity;

.field private c:Lcom/actionbarsherlock/app/ActionBar;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View$OnClickListener;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/util/bl;->k:I

    .line 37
    iput-boolean v2, p0, Lcom/viber/voip/util/bl;->a:Z

    .line 40
    iput-object p1, p0, Lcom/viber/voip/util/bl;->b:Lcom/viber/voip/HomeActivity;

    .line 41
    invoke-virtual {p1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    .line 42
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/bl;->d:Z

    .line 43
    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/bl;->e:Z

    .line 45
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    iget-boolean v0, p0, Lcom/viber/voip/util/bl;->d:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/viber/voip/util/bl;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bl;->g:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/util/bl;->h:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/util/bl;->i:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method private a()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lcom/viber/voip/util/bl;->b:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/viber/voip/util/bl;->b:Lcom/viber/voip/HomeActivity;

    const v3, 0x7f0d003a

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lcom/viber/voip/util/bl;->b:Lcom/viber/voip/HomeActivity;

    const v3, 0x7f0d005f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    return-object v0
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    .line 148
    if-eq v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget v0, p0, Lcom/viber/voip/util/bl;->k:I

    if-eq v0, p1, :cond_0

    .line 62
    iput p1, p0, Lcom/viber/voip/util/bl;->k:I

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/util/bl;->d:Z

    if-eqz v0, :cond_1

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-boolean v0, p0, Lcom/viber/voip/util/bl;->a:Z

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/util/bl;->c(ZZ)V

    .line 71
    iget-boolean v0, p0, Lcom/viber/voip/util/bl;->e:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/util/bl;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/viber/voip/util/bl;->c(ZZ)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/viber/voip/util/bl;->j:Landroid/view/View$OnClickListener;

    .line 168
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/util/bl;->b(ZZ)V

    .line 108
    return-void
.end method

.method public a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/util/bl;->e:Z

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p2, :cond_6

    iget v0, p0, Lcom/viber/voip/util/bl;->k:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/util/bl;->k:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 91
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/util/bl;->c(ZZ)V

    .line 92
    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/viber/voip/util/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/viber/voip/util/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/bl;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/viber/voip/util/bl;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/viber/voip/util/bl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 100
    iget-object v0, p0, Lcom/viber/voip/util/bl;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/util/bl;->g:Landroid/view/View;

    if-nez p1, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 90
    goto :goto_0

    :cond_7
    move v1, v2

    .line 102
    goto :goto_1
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/util/bl;->b(I)Z

    move-result v0

    .line 126
    if-eqz p1, :cond_2

    .line 127
    iget v1, p0, Lcom/viber/voip/util/bl;->k:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 139
    const/4 v0, -0x2

    iput v0, p0, Lcom/viber/voip/util/bl;->k:I

    .line 144
    :cond_0
    :goto_2
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_1

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_1

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    const v2, 0x7f020104

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/bl;->c:Lcom/actionbarsherlock/app/ActionBar;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lcom/viber/voip/util/bl;->k:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 114
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 115
    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/util/bl;->b(I)Z

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/util/bl;->a(ZZ)V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-nez p1, :cond_0

    move v0, v1

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/util/bl;->b:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v3}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    .line 176
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 178
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 179
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    goto :goto_1
.end method
