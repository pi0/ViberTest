.class public Lcom/viber/voip/messages/ui/media/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/actionbarsherlock/ActionBarSherlock;

.field protected c:Lcom/viber/voip/a/av;

.field private d:Landroid/app/Activity;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/viber/voip/messages/ui/media/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/media/ab;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ab;->h:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/ui/media/ab;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOrientationChanged isPortrait:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/viber/voip/a/av;

    invoke-direct {v1}, Lcom/viber/voip/a/av;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->c:Lcom/viber/voip/a/av;

    .line 222
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->c:Lcom/viber/voip/a/av;

    invoke-virtual {v2}, Lcom/viber/voip/a/av;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v1, "user_lat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/media/ab;->f:I

    .line 225
    const-string/jumbo v1, "user_lng"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/media/ab;->g:I

    .line 226
    const-string/jumbo v1, "location_date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 227
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string/jumbo v1, "bucket_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 230
    const-string/jumbo v1, "show_bucket"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ab;->h:Z

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->i:Lcom/viber/voip/messages/ui/media/ac;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ab;->f:I

    div-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/viber/voip/messages/ui/media/ab;->g:I

    div-int/lit8 v2, v2, 0xa

    const/high16 v6, -0x4080

    iget-boolean v10, p0, Lcom/viber/voip/messages/ui/media/ab;->h:Z

    invoke-interface/range {v0 .. v10}, Lcom/viber/voip/messages/ui/media/ac;->a(IIJLjava/lang/String;FJLjava/lang/String;Z)V

    .line 233
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/viber/jni/LocationInfo;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ab;->f:I

    iget v2, p0, Lcom/viber/voip/messages/ui/media/ab;->g:I

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->lat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->lng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    const-string/jumbo v0, "onNewIntent"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ab;->b(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Z)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    const v0, 0x7f0700ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    const v2, 0x7f0c0427

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const v0, 0x7f0700d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    const v2, 0x7f0202dc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 144
    const v1, 0x7f100013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/ui/media/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ab;->i:Lcom/viber/voip/messages/ui/media/ac;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->i:Lcom/viber/voip/messages/ui/media/ac;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ac;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->i:Lcom/viber/voip/messages/ui/media/ac;

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/media/ac;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->i:Lcom/viber/voip/messages/ui/media/ac;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ac;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->e:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->b(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Z)V

    .line 88
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ab;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://maps.google.com/maps?q=loc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ab;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (You)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ab;->h:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->c:Lcom/viber/voip/a/av;

    invoke-virtual {v2}, Lcom/viber/voip/a/av;->c()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    move v0, v1

    .line 180
    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v0, "&z=10"

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ab;->e()V

    .line 164
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->c:Lcom/viber/voip/a/av;

    invoke-virtual {v2}, Lcom/viber/voip/a/av;->d()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2

    .line 168
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->e:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.ACTION_FORWARD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "is_forward_only_locations"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string/jumbo v2, "forward_locations_lat"

    iget v3, p0, Lcom/viber/voip/messages/ui/media/ab;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string/jumbo v2, "forward_locations_lng"

    iget v3, p0, Lcom/viber/voip/messages/ui/media/ab;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f070472
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 251
    :sswitch_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070454 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://maps.google.com/maps?q=loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ab;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (You)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ab;->h:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "&z=10"

    goto :goto_0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ab;->b:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "onStart"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "onStop"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

.method public e()V
    .locals 7

    .prologue
    .line 184
    const-string/jumbo v6, ""

    .line 185
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 187
    :try_start_0
    new-instance v3, Lcom/viber/jni/LocationInfo;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ab;->f:I

    iget v2, p0, Lcom/viber/voip/messages/ui/media/ab;->g:I

    invoke-direct {v3, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    .line 188
    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 192
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 194
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    if-lez v1, :cond_0

    .line 199
    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    const v3, 0x7f0c042c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "http://maps.google.com/maps?q=loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ab;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    const v2, 0x7f0c042d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ab;->d:Landroid/app/Activity;

    const v2, 0x7f0c042b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/viber/voip/util/bd;->b(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLocationByMail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ab;->a(Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1
.end method
