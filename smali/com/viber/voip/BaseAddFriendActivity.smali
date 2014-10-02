.class public abstract Lcom/viber/voip/BaseAddFriendActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/ui/a/d;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private d:Lcom/viber/voip/v;

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/viber/voip/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/l;-><init>(Lcom/viber/voip/BaseAddFriendActivity;)V

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->e:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/viber/voip/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/m;-><init>(Lcom/viber/voip/BaseAddFriendActivity;)V

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->d:Lcom/viber/voip/v;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 190
    const-string/jumbo v0, "progress_overlay"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/a/d;

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    .line 191
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/viber/voip/ui/a/f;->a()Lcom/viber/voip/ui/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    iget-object v2, p0, Lcom/viber/voip/BaseAddFriendActivity;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/a/d;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 195
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/d;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    const-string/jumbo v2, "progress_overlay"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/a/d;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/BaseAddFriendActivity;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/BaseAddFriendActivity;->a(ZILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/viber/voip/q;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/q;-><init>(Lcom/viber/voip/BaseAddFriendActivity;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 151
    return-void
.end method

.method private a(ZILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    packed-switch p2, :pswitch_data_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;->b()V

    .line 128
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->d:Lcom/viber/voip/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->d:Lcom/viber/voip/v;

    invoke-interface {v0, p2, p3}, Lcom/viber/voip/v;->a(ILjava/lang/String;)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 110
    :pswitch_0
    if-eqz p1, :cond_2

    .line 111
    invoke-direct {p0, p3}, Lcom/viber/voip/BaseAddFriendActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0, p3}, Lcom/viber/voip/BaseAddFriendActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_1
    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0, p3}, Lcom/viber/voip/BaseAddFriendActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/BaseAddFriendActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/BaseAddFriendActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/BaseAddFriendActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    if-nez v1, :cond_0

    .line 201
    const-string/jumbo v1, "progress_overlay"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/a/d;

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/d;->dismissAllowingStateLoss()V

    .line 205
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    .line 206
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/viber/voip/r;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/r;-><init>(Lcom/viber/voip/BaseAddFriendActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/dn;->a([Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V

    .line 186
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/BaseAddFriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/BaseAddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;ZLcom/viber/voip/v;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p3, p0, Lcom/viber/voip/BaseAddFriendActivity;->d:Lcom/viber/voip/v;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->c:Z

    .line 80
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;->a()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    new-instance v1, Lcom/viber/voip/n;

    invoke-direct {v1, p0}, Lcom/viber/voip/n;-><init>(Lcom/viber/voip/BaseAddFriendActivity;)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->b:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/BaseAddFriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "progress_overlay"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/a/d;

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity;->a:Lcom/viber/voip/ui/a/d;

    iget-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/a/d;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    :cond_0
    return-void
.end method
