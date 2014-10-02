.class public Lcom/viber/voip/messages/ui/media/ViewMediaActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field protected a:Lcom/actionbarsherlock/app/ActionBar;

.field private b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Lcom/viber/voip/messages/ui/media/ai;

.field private f:J

.field private g:Lcom/viber/voip/messages/conversation/ah;

.field private h:Lcom/viber/voip/messages/conversation/an;

.field private i:I

.field private j:J

.field private k:Lcom/viber/voip/messages/ui/media/bb;

.field private l:Lcom/viber/voip/messages/adapters/h;

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private q:Lcom/viber/voip/a/m;

.field private r:Lcom/viber/voip/a/ax;

.field private s:Lcom/viber/voip/a/ay;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcom/viber/voip/messages/ui/bb;

.field private v:Lcom/actionbarsherlock/view/Menu;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/messages/ui/media/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 88
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 115
    iput-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 120
    iput-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j:J

    .line 130
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->p:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/viber/voip/a/ax;

    invoke-direct {v0}, Lcom/viber/voip/a/ax;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    .line 134
    new-instance v0, Lcom/viber/voip/a/ay;

    invoke-direct {v0}, Lcom/viber/voip/a/ay;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->s:Lcom/viber/voip/a/ay;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    .line 962
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    return-object v0
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    .line 481
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 889
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 890
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 892
    const v0, 0x7f0c048e

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 894
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 919
    const-string/jumbo v0, "prev_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    if-nez v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_0
    sget-object v1, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v1}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->q:Lcom/viber/voip/a/m;

    .line 926
    :goto_1
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "camera_image"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->q:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->c:Lcom/viber/voip/a/ax;

    invoke-virtual {v1}, Lcom/viber/voip/a/ax;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    sget-object v0, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->q:Lcom/viber/voip/a/m;

    goto :goto_1

    .line 929
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->q:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->d:Lcom/viber/voip/a/ay;

    invoke-virtual {v1}, Lcom/viber/voip/a/ay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/actionbarsherlock/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->P()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 225
    :goto_0
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "animated_message"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 227
    const v3, 0x7f07047e

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 228
    const v3, 0x7f07047f

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 229
    const v3, 0x7f070480

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 230
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 234
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    .line 235
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/viber/voip/w;->t:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 239
    :cond_0
    :goto_2
    const v5, 0x7f07047c

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    if-nez v3, :cond_8

    move v3, v1

    :goto_3
    invoke-interface {v5, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 240
    invoke-static {}, Lcom/viber/voip/ViberApplication;->hideDoodle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    const v3, 0x7f070481

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 243
    :cond_1
    const v0, 0x7f07047d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->ab()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_4
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 245
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 224
    goto :goto_0

    :cond_4
    move v3, v2

    .line 230
    goto :goto_1

    :cond_5
    move v3, v2

    .line 235
    goto :goto_2

    .line 236
    :cond_6
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->P()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/viber/voip/w;->s:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v2

    .line 239
    goto :goto_3

    :cond_9
    move v1, v2

    .line 243
    goto :goto_4
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savePublicToGallery message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getPublicCacheMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 676
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 678
    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 679
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    .line 682
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 683
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 685
    invoke-static {v1}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 687
    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 688
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 691
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 693
    iget v1, v0, Lcom/viber/voip/messages/extras/image/a;->c:I

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 694
    iget v0, v0, Lcom/viber/voip/messages/extras/image/a;->b:I

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 696
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 697
    return-void

    .line 682
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 935
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    return v0
.end method

.method private b(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->getCount()I

    move-result v3

    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "video"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "animated_message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->m:Z

    .line 389
    iput p1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 390
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j:J

    .line 396
    const/4 v0, 0x0

    .line 397
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "animated_message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0, v5}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 401
    :cond_1
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "animated_message_cache"

    invoke-static {v0, v5}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 407
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 438
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    if-le v3, v2, :cond_b

    :goto_2
    invoke-virtual {v5, v2}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 440
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->u:Lcom/viber/voip/messages/ui/bb;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c:Landroid/widget/TextView;

    sget v4, Lcom/viber/voip/messages/ui/bd;->c:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 444
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->m:Z

    if-eqz v1, :cond_4

    .line 446
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-nez v1, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g()V

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Landroid/net/Uri;)V

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k:Lcom/viber/voip/messages/ui/media/bb;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bb;->a()V

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->v:Lcom/actionbarsherlock/view/Menu;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 459
    return-void

    :cond_6
    move v0, v1

    .line 388
    goto/16 :goto_0

    .line 409
    :cond_7
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocalMediaServerController()Lcom/viber/voip/util/upload/a/b;

    move-result-object v0

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->I()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Lcom/viber/voip/util/upload/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 410
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/util/upload/s;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 417
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 418
    const-string/jumbo v6, "START DOWNLOADING!"

    invoke-direct {p0, v6}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v6

    invoke-interface {v6}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v6

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lcom/viber/voip/messages/controller/x;->a(J)V

    .line 423
    :cond_9
    iget-boolean v6, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->m:Z

    if-eqz v6, :cond_2

    .line 425
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {p0, v5}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 426
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 427
    :cond_a
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->R()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocalMediaServerController()Lcom/viber/voip/util/upload/a/b;

    move-result-object v0

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/viber/voip/util/upload/a/b;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/util/upload/s;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v2, v1

    .line 438
    goto/16 :goto_2

    .line 440
    :cond_c
    const/16 v2, 0x8

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1067
    const/4 v0, 0x3

    const-string/jumbo v1, "ViewMediaActivity"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    return-object v0
.end method

.method private c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_SD_CARD_UNAVALIABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 465
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "animated_message"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 500
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "equalsNullCurrentMessage retValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 501
    return v0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 700
    const v0, 0x7f070418

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 701
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    const/high16 v1, 0x4170

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPageMargin(I)V

    .line 703
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    .line 704
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c()V

    .line 706
    const v0, 0x7f070419

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c:Landroid/widget/TextView;

    .line 707
    const v0, 0x7f07041a

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d:Landroid/view/View;

    .line 708
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    .line 711
    const v0, 0x7f07041b

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 712
    const v0, 0x7f07041d

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 713
    const v0, 0x7f07041c

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 714
    const v0, 0x7f07041e

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 715
    new-instance v0, Lcom/viber/voip/messages/ui/media/ay;

    const v1, 0x7f070417

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    check-cast v3, Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/media/ay;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/widget/VideoView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    .line 788
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k:Lcom/viber/voip/messages/ui/media/bb;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->m:Z

    return v0
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(JILcom/viber/voip/messages/conversation/ah;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-virtual {p4}, Lcom/viber/voip/messages/conversation/ah;->getCount()I

    move-result v2

    .line 486
    add-int/lit8 v0, v2, -0x1

    if-gt p3, v0, :cond_0

    const/4 v0, -0x1

    if-ne v0, p3, :cond_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 487
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-eqz v0, :cond_3

    .line 488
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 489
    invoke-virtual {p4, v0}, Lcom/viber/voip/messages/conversation/ah;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 495
    :goto_2
    return v0

    :cond_1
    move v1, p3

    .line 486
    goto :goto_0

    .line 488
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    return-void
.end method

.method public a(ILcom/viber/voip/messages/ui/media/ba;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 897
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_1

    const-string/jumbo v2, "thread_id"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 899
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Landroid/os/Bundle;)V

    .line 901
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    .line 903
    const-string/jumbo v2, "screen_title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Ljava/lang/String;)V

    .line 904
    const-string/jumbo v2, "from_notification"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->o:Z

    .line 905
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->o:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "extra_play"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->n:Z

    .line 906
    new-instance v0, Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/viber/voip/messages/conversation/ah;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    .line 907
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->v()V

    .line 908
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ah;->a(J)V

    .line 909
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->e()V

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleIntent mConversationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 916
    :goto_0
    return-void

    .line 913
    :cond_1
    const-string/jumbo v0, "intent without thread id. nothing to show. finish activity!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/conversation/ah;)V

    .line 250
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ah;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ah;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no image message in thread with id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " finishing!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    .line 379
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    if-nez v0, :cond_2

    .line 284
    const-string/jumbo v0, "mViewPager is null"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ah;->getCount()I

    move-result v7

    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    if-nez v0, :cond_6

    .line 291
    const-string/jumbo v0, "onData - CREATE ADAPTER!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    if-ne v0, v4, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "msg_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j:J

    .line 294
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j:J

    invoke-virtual {p0, v0, v1, v4, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(JILcom/viber/voip/messages/conversation/ah;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 297
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fromNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->o:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    if-eq v0, v4, :cond_4

    .line 299
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/conversation/ah;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v5

    .line 300
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ah;->w()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->E()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->a(JJJ)V

    .line 304
    :cond_4
    new-instance v0, Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/viber/voip/messages/adapters/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/messages/conversation/ah;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 306
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(I)V

    .line 309
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(I)V

    .line 329
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->v:Lcom/actionbarsherlock/view/Menu;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/h;->b(I)V

    .line 332
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-direct {p0, v0, v7}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(II)V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    new-instance v1, Lcom/viber/voip/messages/ui/media/ar;

    invoke-direct {v1, p0, v7}, Lcom/viber/voip/messages/ui/media/ar;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 314
    iget-wide v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j:J

    iget v3, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(JILcom/viber/voip/messages/conversation/ah;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 315
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/adapters/h;->a(Lcom/viber/voip/messages/conversation/ah;)V

    .line 316
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onData - notify adapter oldPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 320
    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    if-eq v0, v1, :cond_7

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(I)V

    goto :goto_1

    .line 323
    :cond_7
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/media/ba;->b(Z)V

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 477
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k:Lcom/viber/voip/messages/ui/media/bb;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->b(I)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k:Lcom/viber/voip/messages/ui/media/bb;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->a(I)V

    goto :goto_0
.end method

.method protected c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 795
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 798
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 799
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 801
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 941
    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->b()V

    .line 945
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->a()V

    .line 946
    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "navigated_to_conversation_on_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    if-eqz v0, :cond_2

    .line 949
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->G()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/j;->a(JI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 951
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->finish()V

    .line 952
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 849
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 850
    sparse-switch p1, :sswitch_data_0

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 852
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    .line 853
    const-string/jumbo v0, "data_container"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 854
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    new-instance v4, Lcom/viber/voip/messages/ui/media/az;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/messages/ui/media/az;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/ac;)V

    goto :goto_0

    .line 877
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 879
    const-string/jumbo v1, "landscapeUri"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 880
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

    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        0x30a -> :sswitch_1
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallInfoReady: callInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " videoPlayer is null - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "onCallInfoReady: pause playback"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->h()V

    .line 195
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 164
    :cond_0
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->requestWindowFeature(J)V

    .line 165
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    const-string/jumbo v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    .line 169
    :cond_1
    const v0, 0x7f030140

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->setContentView(I)V

    .line 170
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->addCallInfoListener(Lcom/viber/voip/phone/call/i;)V

    .line 171
    new-instance v0, Lcom/viber/voip/messages/ui/media/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/viber/voip/messages/ui/media/bb;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/content/Context;Lcom/viber/voip/messages/ui/media/aq;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k:Lcom/viber/voip/messages/ui/media/bb;

    .line 173
    new-instance v0, Lcom/viber/voip/messages/ui/media/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/aq;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->t:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->u:Lcom/viber/voip/messages/ui/bb;

    .line 184
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f()V

    .line 185
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->v:Lcom/actionbarsherlock/view/Menu;

    .line 206
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 207
    const v1, 0x7f100016

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 208
    invoke-static {}, Lcom/viber/voip/ViberApplication;->hideDoodle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const v0, 0x7f070481

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeCallInfoListener(Lcom/viber/voip/phone/call/i;)V

    .line 820
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 821
    iput-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    .line 823
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->u()V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->k()V

    .line 832
    iput-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e:Lcom/viber/voip/messages/ui/media/ai;

    .line 835
    :cond_2
    invoke-static {}, Lcom/viber/voip/util/upload/s;->a()V

    .line 837
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocalMediaServerController()Lcom/viber/voip/util/upload/a/b;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/a/b;->a()V

    .line 842
    :cond_3
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 843
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 507
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 670
    :cond_0
    :goto_0
    return v9

    .line 509
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    goto :goto_0

    .line 512
    :sswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v1

    const v2, 0x7f07047a

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/SubMenu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 517
    :sswitch_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/viber/voip/messages/ui/media/as;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/as;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V

    .line 538
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/af;)Z

    .line 539
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "animated_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/k/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    iget-object v0, v0, Lcom/viber/voip/a/ax;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->s:Lcom/viber/voip/a/ay;

    iget-object v0, v0, Lcom/viber/voip/a/ay;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_2

    .line 548
    :sswitch_3
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const-string/jumbo v0, "animated_message"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    const v0, 0x7f0c04f5

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    :goto_3
    invoke-static {v0, v1, v4}, Lcom/viber/voip/util/bd;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 562
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    invoke-virtual {v1}, Lcom/viber/voip/a/ax;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 557
    :cond_3
    const v0, 0x7f0c04f4

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v10, v0

    move-object v0, v4

    move-object v4, v10

    goto :goto_3

    .line 569
    :sswitch_4
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    .line 571
    new-instance v1, Lcom/viber/voip/messages/ui/media/au;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/messages/ui/media/au;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Lcom/viber/voip/messages/extras/twitter/l;)V

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    goto/16 :goto_0

    .line 606
    :sswitch_5
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 609
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->b:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 616
    :cond_4
    :goto_4
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "com.viber.voip.action.ACTION_FORWARD"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    const-string/jumbo v0, "default_message_id"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 618
    const-string/jumbo v7, "back_intent"

    iget-wide v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f:J

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "screen_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, "prev_action"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0, v6}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->finish()V

    goto/16 :goto_0

    .line 610
    :cond_5
    const-string/jumbo v0, "video"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 611
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->c:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_4

    .line 612
    :cond_6
    const-string/jumbo v0, "animated_message"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->f:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_4

    .line 624
    :sswitch_6
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 626
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    invoke-virtual {v1}, Lcom/viber/voip/a/ax;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 629
    :sswitch_7
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 633
    :sswitch_8
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x30a

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 635
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->r:Lcom/viber/voip/a/ax;

    invoke-virtual {v1}, Lcom/viber/voip/a/ax;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 639
    :sswitch_9
    const/4 v1, 0x0

    const v2, 0x7f0c05bb

    new-instance v3, Lcom/viber/voip/messages/ui/media/ax;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/media/ax;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V

    const v5, 0x7f0c034a

    const v6, 0x7f0c02b6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    goto/16 :goto_0

    .line 648
    :sswitch_a
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SEND_DOODLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const/16 v1, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 654
    :sswitch_b
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 655
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 656
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const-string/jumbo v0, "START DOWNLOADING!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(J)V

    goto/16 :goto_0

    .line 660
    :cond_7
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    .line 663
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    goto/16 :goto_0

    .line 667
    :cond_8
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d()V

    goto/16 :goto_0

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070477 -> :sswitch_5
        0x7f070478 -> :sswitch_1
        0x7f070479 -> :sswitch_3
        0x7f07047a -> :sswitch_4
        0x7f07047b -> :sswitch_2
        0x7f07047c -> :sswitch_b
        0x7f07047d -> :sswitch_9
        0x7f07047e -> :sswitch_7
        0x7f07047f -> :sswitch_6
        0x7f070480 -> :sswitch_8
        0x7f070481 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 806
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 807
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 218
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 811
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 814
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 815
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->a()V

    .line 959
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 960
    return-void
.end method
