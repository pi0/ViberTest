.class public Lcom/viber/voip/messages/controller/a/j;
.super Lcom/viber/voip/messages/controller/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;


# instance fields
.field private k:Lcom/viber/voip/messages/controller/cr;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/controller/r;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/controller/a/b;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/controller/r;)V

    .line 545
    new-instance v0, Lcom/viber/voip/messages/controller/a/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/k;-><init>(Lcom/viber/voip/messages/controller/a/j;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->m:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.viber.voip.action.APP_ON_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/j;)Lcom/viber/voip/messages/controller/cr;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    return-object v0
.end method

.method private a(JIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    if-ge p4, p3, :cond_0

    const/4 v0, 0x3

    if-ne p5, v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    .line 449
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/GroupController;->a(IJI)V

    .line 451
    :cond_0
    return-void
.end method

.method private a(JJI)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v2, "key_change_group_name"

    invoke-virtual {v1, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/a;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_change_group_name"

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, p2, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_0

    .line 129
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v7

    .line 130
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v2, p1, p2, v1}, Lcom/viber/voip/messages/controller/cr;->a(JLjava/lang/String;)Lcom/viber/voip/messages/controller/cw;

    move-result-object v12

    .line 132
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->j:Lcom/viber/voip/messages/controller/b/c;

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v8, 0x10

    iget-object v2, v12, Lcom/viber/voip/messages/controller/cw;->b:Ljava/lang/String;

    iget-object v3, v12, Lcom/viber/voip/messages/controller/cw;->c:Ljava/lang/String;

    invoke-static {v7, v2, v3}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-wide v2, p1

    move-wide/from16 v9, p3

    invoke-virtual/range {v1 .. v11}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p5

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/e;->a(J)V

    .line 137
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    iget-object v3, v12, Lcom/viber/voip/messages/controller/cw;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/e;->a(I)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    if-lez v0, :cond_7

    .line 201
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->backgroundId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 211
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->iconId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 214
    :cond_1
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setCountry(Ljava/lang/String;)V

    .line 218
    :cond_2
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->groupName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 222
    :cond_3
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->getNativeLatitude()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLat(I)V

    .line 224
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->getNativeLongitude()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLng(I)V

    .line 225
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    iget-object v1, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v1}, Lcom/viber/jni/LocationInfo;->getLatitude()D

    move-result-wide v1

    iget-object v3, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v5

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/controller/r;->a(DDJJ)V

    .line 232
    :cond_4
    :goto_2
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->tagLine:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagLine(Ljava/lang/String;)V

    .line 236
    :cond_5
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 237
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->tags:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagsArray([Ljava/lang/String;)V

    .line 240
    :cond_6
    iget v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->revision:I

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 246
    :cond_7
    return-void

    .line 205
    :cond_8
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->backgroundId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->iconId:Ljava/lang/String;

    goto/16 :goto_1

    .line 228
    :cond_a
    iget-object v0, p1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setAddressString(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 536
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_not_synced_public_group"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 537
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "key_not_synced_public_group"

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 540
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v5, 0x2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 543
    :cond_0
    return-void
.end method

.method public onChangeGroup(JJIIII)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v7

    .line 149
    if-nez v7, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p8

    .line 156
    invoke-direct/range {v4 .. v9}, Lcom/viber/voip/messages/controller/a/j;->a(JJI)V

    goto :goto_0

    .line 158
    :cond_2
    sparse-switch p8, :sswitch_data_0

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p5

    move-wide/from16 v1, p1

    move/from16 v3, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->a(IJI)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/controller/r;->d(I)V

    goto :goto_0

    .line 160
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/controller/r;->b(I)Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;

    .line 163
    if-nez v6, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v9, 0x2

    move/from16 v5, p5

    move-wide/from16 v6, p1

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    goto :goto_0

    .line 168
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v4

    .line 169
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v15

    .line 171
    :goto_1
    move/from16 v0, p7

    iput v0, v6, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->revision:I

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v7}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p5

    move-wide/from16 v1, p1

    move/from16 v3, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->a(IJI)V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/controller/r;->d(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->j:Lcom/viber/voip/messages/controller/b/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/j;->c:Landroid/content/Context;

    iget v6, v6, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v12, p3

    move/from16 v16, p6

    invoke-virtual/range {v4 .. v16}, Lcom/viber/voip/messages/controller/b/c;->a(Landroid/content/Context;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v4

    .line 182
    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 169
    :cond_4
    const-string/jumbo v15, ""

    goto :goto_1

    .line 187
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v5, "key_not_changed_public_group_info"

    move-wide/from16 v0, p1

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;I)J

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v8, 0x0

    const/4 v9, 0x2

    move/from16 v5, p5

    move-wide/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    goto/16 :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onEncryptedPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/j;->l:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public onJoinPublicGroup(JII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onJoinPublicGroup groupID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/controller/a/j;->a(Ljava/lang/String;)V

    .line 381
    if-eq p4, v5, :cond_0

    if-nez p4, :cond_3

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v6

    .line 384
    if-eqz v6, :cond_2

    .line 385
    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 386
    invoke-virtual {v6, v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setConversationType(I)V

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v6}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    move v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 390
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 391
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p3, p1, p2}, Lcom/viber/voip/messages/controller/c/e;->a(IJ)V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onJoinPublicGroup groupID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NO GROUP IN DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/controller/a/j;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/controller/c/e;->c(II)V

    goto :goto_0

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/controller/c/e;->c(II)V

    goto :goto_0
.end method

.method public onLikePublicGroupMessage(JJIZIJI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 250
    if-ne v1, p10, :cond_1

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->l(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLiked()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 254
    :goto_0
    if-ne v0, p6, :cond_0

    .line 255
    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setSyncLike(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 262
    :cond_1
    return-void

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v17

    .line 83
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v25

    .line 85
    :goto_0
    packed-switch p6, :pswitch_data_0

    .line 119
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendGroupChangedAck(J)V

    .line 120
    const/4 v4, 0x0

    return v4

    .line 83
    :cond_1
    const-string/jumbo v25, ""

    goto :goto_0

    .line 87
    :pswitch_0
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p12

    invoke-virtual/range {v4 .. v18}, Lcom/viber/voip/messages/controller/a/j;->a(ZJILjava/lang/String;IJJLjava/lang/String;[Lcom/viber/jni/GroupAddedMember;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;I)V

    goto :goto_1

    .line 91
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_0

    if-eqz v17, :cond_0

    .line 94
    move/from16 v0, p22

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setWatchersCount(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v5, v4}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    goto :goto_1

    .line 100
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v16

    .line 101
    new-instance v4, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;

    move-object/from16 v5, p20

    move-object/from16 v6, p21

    move-object/from16 v7, p13

    move-object/from16 v8, p19

    move-object/from16 v9, p18

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move/from16 v12, p3

    move/from16 v13, p15

    move-wide/from16 v14, p1

    invoke-direct/range {v4 .. v15}, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;-><init>(Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/messages/controller/a/j;->j:Lcom/viber/voip/messages/controller/b/c;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/voip/messages/controller/a/j;->c:Landroid/content/Context;

    move/from16 v16, p15

    move-object/from16 v18, p5

    move/from16 v19, p7

    move-wide/from16 v20, p8

    move-wide/from16 v22, p10

    move-object/from16 v24, p13

    move/from16 v26, p12

    invoke-virtual/range {v14 .. v26}, Lcom/viber/voip/messages/controller/b/c;->a(Landroid/content/Context;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v5

    .line 107
    if-eqz v5, :cond_0

    .line 108
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-virtual {v0, v5, v1, v4}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 113
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/j;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/ViberApplication;

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    sget v2, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_NOT_IN_GROUP:I

    move/from16 v0, p19

    if-ne v0, v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_synced_public_group"

    aput-object v5, v3, v4

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    move-wide/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_2

    .line 276
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, p1}, Lcom/viber/voip/messages/controller/c/as;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_0

    .line 278
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 279
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v4, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-virtual {v3, v4, v5, v2}, Lcom/viber/voip/messages/controller/r;->a(JI)V

    .line 282
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 376
    :goto_0
    return-void

    .line 285
    :cond_1
    sget v2, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_OK:I

    move/from16 v0, p19

    if-eq v0, v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p19

    invoke-virtual {v2, p1, v0}, Lcom/viber/voip/messages/controller/c/e;->b(II)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    move-wide/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v12

    .line 292
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v13

    .line 294
    if-eqz v12, :cond_3

    if-nez v13, :cond_4

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_synced_public_group"

    aput-object v5, v3, v4

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_4
    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 302
    :cond_5
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 305
    :cond_6
    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    move v11, v2

    .line 307
    :goto_1
    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p10 .. p10}, Lcom/viber/jni/LocationInfo;->getNativeLatitude()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLat(I)V

    .line 310
    invoke-virtual/range {p10 .. p10}, Lcom/viber/jni/LocationInfo;->getNativeLongitude()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLng(I)V

    .line 311
    move-object/from16 v0, p13

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagsArray([Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p12

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagLine(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setCountry(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupUri(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 316
    move/from16 v0, p6

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 317
    move/from16 v0, p18

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setVerified(Z)V

    .line 319
    if-eqz p17, :cond_7

    .line 320
    move/from16 v0, p16

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastServerMessageId(I)V

    .line 323
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p17

    if-eq v0, v2, :cond_8

    .line 324
    move/from16 v0, p17

    invoke-virtual {v13, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setWatchersCount(I)V

    .line 326
    :cond_8
    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 328
    if-eqz v11, :cond_9

    .line 329
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setConversationType(I)V

    .line 332
    :cond_9
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v13}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 333
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v12}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 335
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual/range {p10 .. p10}, Lcom/viber/jni/LocationInfo;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p10 .. p10}, Lcom/viber/jni/LocationInfo;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v9

    move-wide/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/viber/voip/messages/controller/r;->a(DDJJ)V

    .line 336
    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/j;->l:Ljava/lang/String;

    move-object v2, p0

    move/from16 v6, p15

    move-object/from16 v8, p14

    invoke-virtual/range {v2 .. v8}, Lcom/viber/voip/messages/controller/a/j;->a(JIILjava/lang/String;[Lcom/viber/jni/GroupUserInfo;)V

    .line 338
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 340
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_synced_public_group"

    aput-object v5, v3, v4

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v3, "key_not_changed_public_group_info"

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 348
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 349
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/controller/r;->b(I)Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_a

    .line 351
    move/from16 v0, p6

    iput v0, v2, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->revision:I

    .line 352
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/j;->i:Lcom/viber/voip/messages/controller/r;

    check-cast v2, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/viber/voip/messages/controller/r;->a(IJLcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;)V

    .line 354
    :cond_a
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->h:Lcom/viber/voip/messages/controller/c/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_changed_public_group_info"

    aput-object v5, v3, v4

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 360
    :cond_b
    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    if-eqz v11, :cond_c

    .line 361
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, p1}, Lcom/viber/voip/messages/controller/c/as;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_c

    .line 363
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 364
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 365
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 366
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->g:Lcom/viber/voip/messages/controller/cq;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v4, v2, v5}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 375
    :cond_c
    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v6

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v7

    move-object v2, p0

    move-wide/from16 v3, p2

    move/from16 v5, p16

    invoke-direct/range {v2 .. v7}, Lcom/viber/voip/messages/controller/a/j;->a(JIII)V

    goto/16 :goto_0

    .line 305
    :cond_d
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1
.end method

.method public onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/a/j;->a:Z

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageReceivedAck(JZ)V

    .line 463
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    .line 466
    :cond_0
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->b()V

    .line 468
    new-instance v0, Lcom/viber/voip/messages/controller/b/a;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p3

    move-wide v3, p1

    move-wide v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    move-wide/from16 v1, p8

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p13

    move/from16 v6, p12

    move-object/from16 v7, p7

    .line 470
    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/controller/b/a;->a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 471
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v2

    .line 473
    iget-boolean v0, v2, Lcom/viber/voip/messages/controller/cv;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, v2, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_3

    .line 474
    :cond_1
    iget-object v0, v2, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 475
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageReceivedAck(JZ)V

    .line 480
    :cond_3
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iget-object v3, v2, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v4, v2, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-boolean v2, v2, Lcom/viber/voip/messages/controller/cv;->c:Z

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 481
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->F:Lcom/viber/voip/a/ag;

    invoke-virtual {v1}, Lcom/viber/voip/a/ag;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 482
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 405
    array-length v8, p1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v9, p1, v6

    .line 406
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getGroupID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v10

    .line 408
    if-eqz v10, :cond_2

    .line 411
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getNumWatchers()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setWatchersCount(I)V

    .line 412
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMsgText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastMessageText(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getSenderEncryptedPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setSenderPhone(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMediaType()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastMediaType(I)V

    .line 415
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMsgID()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastServerMessageId(I)V

    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v10}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 417
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getGroupID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 418
    if-nez v0, :cond_3

    .line 435
    :cond_0
    :goto_1
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v0

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getRevision()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 437
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getGroupID()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getRevision()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 439
    :cond_1
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getGroupID()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMsgID()I

    move-result v3

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v4

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/j;->a(JIII)V

    .line 405
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMsgText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setLastMessageId(J)V

    .line 422
    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastTimestampOfMsgs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    .line 425
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v1

    if-lez v1, :cond_4

    .line 426
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-virtual {v9}, Lcom/viber/jni/PGLatestParams;->getLastMsgID()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v2

    sub-int/2addr v1, v2

    .line 427
    if-lez v1, :cond_4

    .line 428
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setUnreadMessagesCount(I)V

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 433
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    goto :goto_1

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p2, p3}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendPublicGroupsUpdatedAck(J)V

    .line 443
    return-void
.end method

.method public onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    if-nez p4, :cond_9

    .line 495
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/viber/jni/PublicGroupInfo;

    move-object/from16 p2, v0

    .line 496
    :cond_0
    move-object/from16 v0, p1

    array-length v8, v0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v9, p1, v7

    .line 497
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, v9, Lcom/viber/jni/RecoveryGroupInfo;->groupId:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    if-nez v1, :cond_2

    .line 499
    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v9, Lcom/viber/jni/RecoveryGroupInfo;->groupUserInfo:[Lcom/viber/jni/GroupUserInfo;

    array-length v1, v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    iget-object v2, v9, Lcom/viber/jni/RecoveryGroupInfo;->groupUserInfo:[Lcom/viber/jni/GroupUserInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 501
    new-instance v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v6}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>()V

    .line 502
    iput-object v4, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 503
    iget-object v4, v4, Lcom/viber/jni/GroupUserInfo;->downloadID:Ljava/lang/String;

    invoke-static {v4}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 504
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    iget-wide v2, v9, Lcom/viber/jni/RecoveryGroupInfo;->groupId:J

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    iget-object v6, v9, Lcom/viber/jni/RecoveryGroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(JZ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 496
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 510
    :cond_3
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_4

    .line 511
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/j/a;->b()V

    .line 513
    :cond_4
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v12, p2, v13

    .line 514
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-wide v4, v12, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    if-nez v1, :cond_5

    .line 515
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/j;->k:Lcom/viber/voip/messages/controller/cr;

    const/4 v2, 0x0

    iget-wide v3, v12, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    const/4 v5, 0x2

    iget v6, v12, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    iget-object v7, v12, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    iget v8, v12, Lcom/viber/jni/PublicGroupInfo;->revision:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v1

    .line 518
    iget-object v1, v1, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    const/4 v4, 0x2

    iget v5, v12, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    iget-object v7, v12, Lcom/viber/jni/PublicGroupInfo;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/viber/voip/messages/controller/a/j;->a(JIILjava/lang/String;[Lcom/viber/jni/GroupUserInfo;)V

    .line 521
    iget-wide v2, v12, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    iget v4, v12, Lcom/viber/jni/PublicGroupInfo;->lastMessageId:I

    const/4 v5, 0x0

    iget v6, v12, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/viber/voip/messages/controller/a/j;->a(JIII)V

    .line 513
    :cond_5
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_2

    .line 524
    :cond_6
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "need_recover_groups"

    if-nez p6, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 531
    :cond_7
    :goto_4
    return-void

    .line 524
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 525
    :cond_9
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_a

    .line 527
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "need_recover_groups"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_4

    .line 528
    :cond_a
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_7

    .line 529
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "need_recover_groups"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_4
.end method

.method public onValidatePublicGroupUri(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/j;->d:Lcom/viber/voip/messages/controller/c/e;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, p3}, Lcom/viber/voip/messages/controller/c/e;->a(JI)V

    .line 456
    return-void
.end method
