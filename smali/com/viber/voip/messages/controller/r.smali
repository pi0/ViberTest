.class public Lcom/viber/voip/messages/controller/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/GroupController;


# instance fields
.field private a:Lcom/viber/voip/messages/controller/c/as;

.field private b:Lcom/viber/voip/messages/controller/cr;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/viber/voip/messages/controller/c/a;

.field private f:Lcom/viber/voip/messages/controller/c/e;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/messages/controller/v;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/controller/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->d:Landroid/util/SparseArray;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->g:Ljava/util/Map;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->i:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->b:Lcom/viber/voip/messages/controller/cr;

    .line 58
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    .line 59
    new-instance v0, Lcom/viber/voip/messages/controller/c/a;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->e:Lcom/viber/voip/messages/controller/c/a;

    .line 60
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->f:Lcom/viber/voip/messages/controller/c/e;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/r;)Lcom/viber/voip/messages/controller/c/as;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    return-void
.end method

.method private a([Lcom/viber/voip/messages/controller/GroupController$GroupMember;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 112
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 114
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v2, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/r;)Lcom/viber/voip/messages/controller/c/e;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->f:Lcom/viber/voip/messages/controller/c/e;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/controller/r;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/viber/voip/messages/controller/u;
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->i:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/u;

    return-object v0
.end method

.method public a(DDJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v7

    const/4 v6, 0x0

    new-instance v0, Lcom/viber/voip/messages/controller/s;

    move-object v1, p0

    move-wide v2, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/s;-><init>(Lcom/viber/voip/messages/controller/r;JJ)V

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/viber/voip/messages/extras/a/a;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    .line 247
    return-void
.end method

.method public a(IJI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 283
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/viber/voip/messages/controller/t;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/t;-><init>(Lcom/viber/voip/messages/controller/r;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/r;->h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 291
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/r;->h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 293
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/controller/v;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/v;-><init>(Lcom/viber/voip/messages/controller/r;JILcom/viber/voip/messages/controller/s;)V

    .line 294
    iget-object v1, p0, Lcom/viber/voip/messages/controller/r;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/viber/voip/messages/controller/r;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    const/4 v4, 0x0

    move v1, p1

    move-wide v2, p2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(IJIZ)V

    .line 297
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupMessages(IJI)Z

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "obtainPublicGroupMessages ALREADY obtaining! groupID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/controller/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/r;->b:Lcom/viber/voip/messages/controller/cr;

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v9, p5

    move/from16 v10, p4

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v15}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    .line 220
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v3

    move-wide/from16 v4, p2

    move/from16 v6, p1

    move-object/from16 v7, p9

    move-wide/from16 v8, p7

    invoke-virtual/range {v3 .. v9}, Lcom/viber/jni/PhoneControllerWrapper;->handleJoinPublicGroup(JILjava/lang/String;J)Z

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/r;->f:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->a(IJ)V

    goto :goto_0
.end method

.method public a(IJLcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->groupName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->b:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->c:J

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->tagLine:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->tags:[Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->countryCode:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v14, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    move-object/from16 v0, p4

    iget v15, v0, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->revision:I

    move-wide/from16 v3, p2

    move/from16 v16, p1

    invoke-virtual/range {v2 .. v16}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangePublicGroup(JLjava/lang/String;JJLjava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)Z

    .line 102
    return-void
.end method

.method public a(IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 66
    array-length v0, p4

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 67
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 68
    aget-object v3, p4, v0

    iget-object v3, v3, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v3, v3, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->i:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/messages/controller/u;

    array-length v5, p4

    invoke-direct {v4, p0, p1, v5}, Lcom/viber/voip/messages/controller/u;-><init>(Lcom/viber/voip/messages/controller/r;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, v2, v1

    .line 75
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v4

    invoke-virtual {v4, p2, p3, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleGroupAddMember(JLjava/lang/String;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleGroupAddMembers(JI[Ljava/lang/String;)Z

    .line 80
    :cond_2
    return-void
.end method

.method public a(ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->groupUri:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->countryCode:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->groupName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->b:J

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->tags:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->d:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->tagLine:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->c:J

    const/4 v15, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v15}, Lcom/viber/jni/PhoneControllerWrapper;->handleCreatePublicGroup(ILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)Z

    .line 109
    return-void
.end method

.method public a(I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 84
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/controller/r;->a([Lcom/viber/voip/messages/controller/GroupController$GroupMember;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->a([Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->f:Lcom/viber/voip/messages/controller/c/e;

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/e;->a(IJJLjava/util/Map;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleCreateGroup(I[Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public a(JI)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->b:Lcom/viber/voip/messages/controller/cr;

    const/4 v4, 0x2

    const-string/jumbo v6, ""

    move-wide v2, p1

    move v5, p3

    move v8, v7

    move-object v10, v9

    move-object v11, v9

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    .line 209
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->e:Lcom/viber/voip/messages/controller/c/a;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "key_change_group_name"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->e:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_change_group_name"

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;Ljava/lang/String;)J

    .line 180
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 182
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeGroup(JLjava/lang/String;I)Z

    .line 183
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundLandscape()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "IMG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundLandscape()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 131
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 133
    :cond_2
    if-nez p3, :cond_3

    const-string/jumbo p3, ""

    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setBackgroundPortrait(Ljava/lang/String;)V

    .line 135
    :cond_4
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->b:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/cr;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->b:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->b(JZ)V

    .line 174
    return-void
.end method

.method public a(I)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    return-object v0
.end method

.method public b(I)Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    return-object v0
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->i:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->a:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 146
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 149
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    .line 164
    :goto_0
    if-nez v0, :cond_0

    .line 165
    invoke-static {p3}, Lcom/viber/voip/backgrounds/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/viber/voip/messages/controller/r;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void

    .line 151
    :cond_1
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/viber/jni/PhoneControllerWrapper;->isShortStandardBackgroundID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Lcom/viber/voip/backgrounds/s;

    invoke-static {p3}, Lcom/viber/voip/backgrounds/a;->b(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/viber/voip/backgrounds/s;-><init>(I)V

    .line 161
    :goto_1
    invoke-interface {v0, v2}, Lcom/viber/voip/backgrounds/r;->a(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 158
    :cond_3
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/viber/voip/util/hv;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/viber/voip/backgrounds/p;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/viber/voip/backgrounds/p;-><init>(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    iget-object v0, p0, Lcom/viber/voip/messages/controller/r;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 201
    return-void
.end method
