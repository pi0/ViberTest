.class public Lcom/viber/voip/messages/conversation/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/ad;


# instance fields
.field private a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/k;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2, p2}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/l;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/messages/conversation/ui/l;-><init>(Lcom/viber/voip/messages/conversation/ui/k;Landroid/app/Activity;)V

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/k;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/k;->a(Landroid/net/Uri;I)V

    .line 125
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v3, "output"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 143
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 145
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v6, "RIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "com.rim.camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 149
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v0, "android.intent.extra.durationLimit"

    const/16 v4, 0xb4

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v4, "HTC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string/jumbo v0, "android.intent.extra.sizeLimit"

    const/high16 v4, 0x180

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string/jumbo v0, "RequestedFrom"

    const-string/jumbo v4, "notes"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v0, "android.intent.extra.videoQuality"

    const/4 v4, 0x1

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    const-string/jumbo v0, "android.intent.extra.sizeLimit"

    const-wide/32 v6, 0x1800000

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 166
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const v3, 0x7f0c041b

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    new-array v0, v8, [Landroid/os/Parcelable;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v2, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    :cond_4
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v3, "output"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c0484

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    .line 85
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 90
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 96
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Nexus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->c:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/k;->a(Landroid/net/Uri;I)V

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/k;->a(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.SEND_DOODLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/k;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v1}, Lcom/viber/voip/k/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 121
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
