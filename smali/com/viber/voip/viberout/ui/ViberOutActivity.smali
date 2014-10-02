.class public Lcom/viber/voip/viberout/ui/ViberOutActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/billing/u;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 177
    new-instance v0, Lcom/viber/voip/viberout/ui/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/j;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "fetch_balance"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/viberout/ui/ViberOutActivity;)Lcom/viber/voip/billing/u;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b:Lcom/viber/voip/billing/u;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0703da

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    .line 134
    new-instance v1, Lcom/viber/voip/viberout/ui/h;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/viberout/ui/h;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V

    .line 154
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 313
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_have_billing_account"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 314
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Z)V

    .line 315
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->e()V

    .line 203
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/ui/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/k;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/t;)Lcom/viber/voip/billing/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b:Lcom/viber/voip/billing/u;

    .line 266
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/viberout/ui/ViberOutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 269
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 275
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 281
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 287
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    return-void
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_have_billing_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p0, p2, p1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->finish()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020436

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c07b8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 62
    const v0, 0x7f0703db

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0703dc

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d:Landroid/widget/ProgressBar;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/ae;)V

    .line 67
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b()V

    .line 69
    const v0, 0x7f0703de

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/ui/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/a;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0703e3

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/ui/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/c;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0703dd

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/viberout/ui/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/d;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0703df

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->e:Landroid/view/View;

    .line 100
    const v0, 0x7f0703e0

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->g:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/viberout/ui/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/e;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0703e1

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->h:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/viberout/ui/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/f;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0703e2

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0570

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v1, Lcom/viber/voip/viberout/ui/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/g;-><init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    invoke-virtual {v1}, Lcom/viber/voip/a/as;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->h()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Z)V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 293
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->onBackPressed()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 172
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 173
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c()V

    .line 175
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "fetch_balance"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 176
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b:Lcom/viber/voip/billing/u;

    .line 197
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    return-void
.end method
