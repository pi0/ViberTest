.class public Lcom/viber/voip/AboutActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/extras/fb/ae;


# instance fields
.field private final a:Lcom/viber/voip/messages/extras/fb/s;

.field private b:Lcom/viber/voip/messages/extras/fb/ad;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 26
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/viber/voip/w;->c()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/viber/voip/AboutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/AboutActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/viber/voip/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/a;-><init>(Lcom/viber/voip/AboutActivity;)V

    iput-object v0, p0, Lcom/viber/voip/AboutActivity;->b:Lcom/viber/voip/messages/extras/fb/ad;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/viber/voip/AboutActivity;->c()V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->b:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/AboutActivity;->b:Lcom/viber/voip/messages/extras/fb/ad;

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/AboutActivity;->b:Lcom/viber/voip/messages/extras/fb/ad;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 152
    invoke-static {p0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/viber/voip/messages/extras/fb/al;

    iget-object v1, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {v0, v1, p0, p0}, Lcom/viber/voip/messages/extras/fb/al;-><init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ae;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/viber/voip/c;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/c;-><init>(Lcom/viber/voip/AboutActivity;Lcom/viber/voip/messages/extras/twitter/l;)V

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 88
    :sswitch_0
    invoke-static {p0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/bd;->T:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-direct {p0}, Lcom/viber/voip/AboutActivity;->b()V

    goto :goto_0

    .line 97
    :sswitch_3
    invoke-direct {p0}, Lcom/viber/voip/AboutActivity;->d()V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x7f070133 -> :sswitch_1
        0x7f070134 -> :sswitch_3
        0x7f070135 -> :sswitch_2
        0x7f0702b9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f0d0135

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->setTheme(I)V

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c04ea

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 41
    :cond_0
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f070132

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/AboutActivity;->c:Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Lcom/viber/voip/AboutActivity;->a()V

    .line 58
    const v0, 0x7f0702b9

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f070133

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f070135

    invoke-virtual {p0, v0}, Lcom/viber/voip/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public onFacebookValidationError()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/AboutActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/AboutActivity;->b:Lcom/viber/voip/messages/extras/fb/ad;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/AboutActivity;->onBackPressed()V

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 81
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->h:Lcom/viber/voip/a/ba;

    iget-object v1, v1, Lcom/viber/voip/a/ba;->a:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method
