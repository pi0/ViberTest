.class public Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;
.super Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/util/upload/p;


# static fields
.field public static final y:Ljava/lang/String;


# instance fields
.field private A:Lcom/viber/voip/messages/conversation/publicgroup/be;

.field private B:Landroid/os/Handler;

.field private C:J

.field private D:I

.field private E:Z

.field private z:Lcom/viber/voip/messages/conversation/publicgroup/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 102
    if-nez p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->finish()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v0, "public_group_id_extra"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->C:J

    .line 107
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->C:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->finish()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->y:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ab;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ab;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/TextWatcher;)V

    .line 223
    return-void
.end method

.method private g()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->E:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->E:Z

    .line 235
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->supportInvalidateOptionsMenu()V

    .line 237
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->D:I

    .line 262
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->D:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a(I)Z

    .line 266
    :goto_0
    return v0

    .line 265
    :cond_0
    const v0, 0x7f0c0699

    const v1, 0x7f0c069a

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "group name can\'t be empty"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 275
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public a(IJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->D:I

    if-eq v0, p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->d()V

    .line 63
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update error, status :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    const-string/jumbo v0, "onUploadTimeout"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFail: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUploadComplete: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Ljava/lang/String;)V

    .line 242
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    if-ne p1, v2, :cond_2

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 245
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a(J)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/be;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h()Z

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    if-ne p1, v2, :cond_1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hv;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 251
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->b(J)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h()Z

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x416312d000000000L

    .line 160
    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/publicgroup/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/as;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

    .line 163
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/be;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/be;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->A:Lcom/viber/voip/messages/conversation/publicgroup/be;

    .line 167
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->r:Lcom/viber/voip/util/b/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->t:Lcom/viber/voip/util/b/x;

    new-instance v5, Lcom/viber/voip/messages/conversation/publicgroup/z;

    invoke-direct {v5, p0}, Lcom/viber/voip/messages/conversation/publicgroup/z;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 179
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getEditText()Lcom/viber/voip/widget/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/aa;->setSelection(I)V

    .line 181
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->B:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/aa;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/aa;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->r:Lcom/viber/voip/util/b/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->s:Lcom/viber/voip/util/b/x;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->v:Lcom/viber/voip/util/b/al;

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->N()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v6

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->O()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v6

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(DD)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 200
    new-instance v1, Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->N()I

    move-result v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->O()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->q:Lcom/viber/jni/LocationInfo;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->onClick(Landroid/view/View;)V

    .line 228
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->g()V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    .line 69
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    const v1, 0x7f0c0678

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    const v1, 0x7f0c067c

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    const v1, 0x7f0c067b

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 75
    const v0, 0x7f070218

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 77
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Landroid/os/Bundle;)V

    .line 78
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->C:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/as;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v3

    iget-wide v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->C:J

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/publicgroup/as;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;J)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/publicgroup/as;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/publicgroup/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/as;->e()V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v7}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 85
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100017

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 115
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->E:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 117
    const v1, 0x7f02006c

    const v2, 0x7f0c0537

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/y;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/y;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 92
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    const-string/jumbo v0, "public_group_id_extra"

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->C:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method
