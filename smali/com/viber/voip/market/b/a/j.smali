.class public Lcom/viber/voip/market/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/viber/voip/market/b/a/a;

.field protected final b:Landroid/view/View;

.field protected final c:Landroid/widget/ImageView;

.field protected final d:Landroid/widget/CheckBox;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Landroid/view/View;

.field protected final g:Landroid/view/View;

.field protected final h:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->c:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0702c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->d:Landroid/widget/CheckBox;

    .line 141
    const v0, 0x7f0700ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->e:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0702c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->f:Landroid/view/View;

    .line 143
    iput-object p1, p0, Lcom/viber/voip/market/b/a/j;->b:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/viber/voip/market/b/a/j;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 145
    const v0, 0x7f0700b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->g:Landroid/view/View;

    .line 146
    const v0, 0x7f0702c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/b/a/j;->h:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/viber/voip/market/b/a/j;->h:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private a(Lcom/viber/voip/market/b/a/a;Lcom/viber/voip/util/b/ad;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/viber/voip/market/b/a/j;->a:Lcom/viber/voip/market/b/a/a;

    .line 161
    iget-object v0, p0, Lcom/viber/voip/market/b/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/market/b/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/market/b/a/j;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/viber/voip/market/b/a/a;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    sget v0, Lcom/viber/voip/stickers/an;->m:I

    .line 166
    invoke-virtual {p1}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v1

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/h;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/b/a/j;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/viber/voip/util/b/x;->a()Lcom/viber/voip/util/b/x;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/b/a/j;Lcom/viber/voip/market/b/a/a;Lcom/viber/voip/util/b/ad;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/b/a/j;->a(Lcom/viber/voip/market/b/a/a;Lcom/viber/voip/util/b/ad;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/market/b/a/a;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/market/b/a/j;->a:Lcom/viber/voip/market/b/a/a;

    return-object v0
.end method
