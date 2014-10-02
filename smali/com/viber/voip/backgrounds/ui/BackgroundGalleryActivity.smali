.class public Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected a:Landroid/net/Uri;

.field protected b:Lcom/viber/voip/backgrounds/a/a;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/GridView;

.field private g:Lcom/actionbarsherlock/app/ActionBar;

.field private h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field private i:Lcom/viber/voip/util/b/w;

.field private j:Lcom/actionbarsherlock/view/MenuItem;

.field private k:Lcom/viber/voip/backgrounds/a;

.field private l:Lcom/viber/voip/a/q;

.field private m:Lcom/viber/voip/widget/MessageBar;

.field private n:Lcom/viber/voip/backgrounds/m;

.field private o:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/viber/voip/a/q;

    invoke-direct {v0}, Lcom/viber/voip/a/q;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->l:Lcom/viber/voip/a/q;

    .line 132
    new-instance v0, Lcom/viber/voip/backgrounds/ui/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/ui/a;-><init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->n:Lcom/viber/voip/backgrounds/m;

    .line 352
    new-instance v0, Lcom/viber/voip/backgrounds/ui/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/ui/d;-><init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->o:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 189
    const v0, 0x7f07019e

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    .line 191
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 192
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->c:Landroid/widget/ProgressBar;

    .line 195
    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d:Landroid/view/View;

    .line 196
    const v0, 0x7f0701a0

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->e:Landroid/widget/TextView;

    .line 197
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 320
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 321
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/backgrounds/ui/b;

    invoke-direct {v3, p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/b;-><init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;J)V

    invoke-interface {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/ac;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-nez v0, :cond_1

    .line 302
    const-string/jumbo v0, "saveBitmapToConversation :: mConvesationEntity == null => callback init"

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 304
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;J)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConversationReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/viber/voip/backgrounds/ui/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/ui/c;-><init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "has_background"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/a/a;->c(Lcom/viber/voip/backgrounds/o;)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->k:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->g()V

    .line 390
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->j:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/viber/voip/a/q;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->l:Lcom/viber/voip/a/q;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x3

    const-string/jumbo v1, "BackgroundGalleryActivity"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x7d4

    const/4 v1, -0x1

    .line 261
    if-ne p2, v1, :cond_0

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 264
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uriFromIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 271
    :cond_1
    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v1, p3}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "landscapeUri"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult: action(portrait img uri): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", landscape img uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 289
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->finish()V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 80
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    .line 83
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    const v1, 0x7f0c05fd

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 88
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->i:Lcom/viber/voip/util/b/w;

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Landroid/content/Intent;)V

    .line 93
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a()V

    .line 94
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->k:Lcom/viber/voip/backgrounds/a;

    .line 96
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->k:Lcom/viber/voip/backgrounds/a;

    const v1, 0x9896e4

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/a;->a(I)Lcom/viber/voip/backgrounds/o;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->k:Lcom/viber/voip/backgrounds/a;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->n:Lcom/viber/voip/backgrounds/m;

    invoke-virtual {v1, v2}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/m;)V

    .line 100
    new-instance v1, Lcom/viber/voip/backgrounds/a/a;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/backgrounds/a/a;-><init>(Landroid/content/Context;Lcom/viber/voip/backgrounds/o;)V

    iput-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    .line 101
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 103
    new-instance v1, Lcom/viber/voip/widget/MessageBar;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/MessageBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->m:Lcom/viber/voip/widget/MessageBar;

    .line 105
    if-eqz v0, :cond_3

    .line 106
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->k:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/o;)I

    move-result v1

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 107
    const-string/jumbo v0, "BackgroundGalleryActivity onCreate: backrounds sizes are not equal. Reloading backgrounds"

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 116
    const-string/jumbo v0, "temp_uri_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    .line 118
    :cond_2
    return-void

    .line 111
    :cond_3
    invoke-static {p0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f07045b

    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 214
    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 216
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->j:Lcom/actionbarsherlock/view/MenuItem;

    .line 218
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 222
    :cond_0
    const v0, 0x7f07045c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 171
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 173
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->n:Lcom/viber/voip/backgrounds/m;

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/m;)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a/a;->a()V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f:Landroid/widget/GridView;

    .line 177
    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 180
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 181
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->o:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 204
    const v0, 0x7f020002

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->o:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v3, p3}, Lcom/viber/voip/backgrounds/a/a;->a(I)Lcom/viber/voip/backgrounds/q;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 231
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 233
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->finish()V

    .line 256
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    .line 238
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 242
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 247
    :sswitch_3
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "remove_conversation_background"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->finish()V

    goto :goto_1

    .line 251
    :sswitch_4
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d()V

    goto :goto_1

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070459 -> :sswitch_2
        0x7f07045a -> :sswitch_1
        0x7f07045b -> :sswitch_3
        0x7f07045c -> :sswitch_4
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->i:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 129
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onPause()V

    .line 130
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    const-string/jumbo v0, "temp_uri_key"

    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method
