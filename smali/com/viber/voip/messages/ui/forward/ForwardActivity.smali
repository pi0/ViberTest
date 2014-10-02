.class public Lcom/viber/voip/messages/ui/forward/ForwardActivity;
.super Lcom/viber/voip/app/ViberReplaceFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
.implements Lcom/viber/voip/contacts/ui/bc;
.implements Lcom/viber/voip/messages/ui/df;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Z

.field private e:J

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/os/Bundle;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/support/v4/app/Fragment;

.field private o:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->e:J

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 141
    const-string/jumbo v0, "share_images_uri"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 148
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->d:Z

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    const-string/jumbo v0, "default_message_id"

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    const-string/jumbo v0, "is_forward_only_locations"

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const-string/jumbo v0, "forward_locations_lat"

    iget v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string/jumbo v0, "forward_locations_lng"

    iget v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string/jumbo v0, "forward"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->finish()V

    .line 158
    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 143
    const-string/jumbo v0, "share_uri"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "share_text"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    const-string/jumbo v0, "extra_conversation_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 162
    iget-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->k:Landroid/os/Bundle;

    const-string/jumbo v2, "extra_conversation_data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.API_PARTICIPANTS_SELECT_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "api_data"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->finish()V

    .line 168
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "forward_selection"

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    .line 93
    new-instance v0, Lcom/viber/voip/messages/ui/forward/a;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    iget-object v3, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/forward/a;-><init>(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->a()V

    .line 100
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    const-string/jumbo v1, "share_images_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->h:Ljava/util/ArrayList;

    .line 106
    const-string/jumbo v1, "share_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->i:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "share_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->j:Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "default_message_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->e:J

    .line 109
    const-string/jumbo v1, "is_forward_only_locations"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->d:Z

    .line 110
    const-string/jumbo v1, "forward_locations_lat"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->f:I

    .line 111
    const-string/jumbo v1, "forward_locations_lng"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->g:I

    .line 112
    const-string/jumbo v1, "api_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->k:Landroid/os/Bundle;

    .line 114
    :cond_0
    return-void
.end method

.method private f()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    iget v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    if-ne v0, v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->n:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/ap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->n:Landroid/support/v4/app/Fragment;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ap;->e()V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->n:Landroid/support/v4/app/Fragment;

    .line 134
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->o:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string/jumbo v1, "open_for_forward"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    new-instance v1, Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/ui/MessagesFragment;-><init>(Z)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->o:Landroid/support/v4/app/Fragment;

    .line 129
    iget-object v1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->o:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->finish()V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->k:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->b(Landroid/content/Intent;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 270
    return-void
.end method

.method public a_(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->k:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v0, "clicked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->b(Landroid/content/Intent;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->f()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 191
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "back_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "back_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->d()V

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    invoke-virtual {v1}, Lcom/viber/voip/a/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 75
    :goto_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->m:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->l:[Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->d()V

    .line 87
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->e()V

    .line 88
    return-void

    .line 72
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 257
    iget v0, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    if-eq v0, p1, :cond_0

    .line 258
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "forward_selection"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 259
    iput p1, p0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->c:I

    .line 260
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->a()V

    .line 263
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "back_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "back_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->finish()V

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
