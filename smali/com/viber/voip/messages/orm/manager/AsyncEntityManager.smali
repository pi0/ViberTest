.class public Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
.super Lcom/viber/voip/messages/orm/manager/EntityManager;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# static fields
.field public static final DEFAULT_REQUEST_TOKEN:I = 0x600

.field public static final USE_CHANGE_NOTIFICATIONS:Z = true

.field protected static queryHandler:Lcom/viber/voip/util/fe;


# instance fields
.field protected accessors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected lookupUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mHightPriority:Z

.field protected mId:I

.field protected mRedirectToUi:Z

.field protected mSelection:Ljava/lang/String;

.field protected mSelectionArgs:[Ljava/lang/String;

.field protected mSortOrder:Ljava/lang/String;

.field protected mUpdateCursorOnDataChange:Z

.field private messagesThreadSelfObserver:Landroid/database/ContentObserver;

.field protected validCursor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fe;->b(Landroid/content/Context;)Lcom/viber/voip/util/fe;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 89
    const/16 v0, 0x600

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 74
    const/16 v0, 0x600

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 76
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 67
    iput p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 69
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 60
    iput p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 61
    iput-boolean p4, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 62
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 52
    iput p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 53
    iput-boolean p4, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 54
    iput-boolean p5, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 55
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 81
    const/16 v0, 0x600

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 83
    iput-boolean p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    .line 84
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 95
    const/16 v0, 0x600

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 97
    iput-boolean p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    .line 373
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    .line 102
    const/16 v0, 0x600

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    .line 104
    iput-boolean p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    .line 105
    iput-boolean p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    .line 106
    return-void
.end method

.method public static delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 361
    sget-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v1, 0x600

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v6, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$6;

    invoke-direct {v6, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$6;-><init>(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;)V

    .line 371
    :cond_0
    return-void
.end method

.method public static varargs delete(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    sget-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v1, 0x600

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;

    invoke-direct {v6, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;-><init>(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;)V

    .line 352
    return-void
.end method

.method public static save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 257
    sget-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v1, 0x600

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;

    invoke-direct {v5, p0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;-><init>(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V

    move-object v2, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/viber/voip/util/fk;ZZ)V

    .line 273
    return-void
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Landroid/content/ContentValues;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 289
    sget-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v1, 0x600

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "_id=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v2, v6, v8

    new-instance v7, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$3;

    invoke-direct {v7, p3, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$3;-><init>(Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Lcom/viber/voip/messages/orm/entity/Entity;)V

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 305
    :cond_0
    return-void
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 282
    invoke-static {p0, p1, v0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Landroid/content/ContentValues;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 284
    :cond_0
    return-void
.end method

.method public static varargs update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v1, 0x600

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v7, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;

    invoke-direct {v7, p2, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;-><init>(Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Lcom/viber/voip/messages/orm/entity/Entity;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method protected broadcastDataChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 242
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;

    .line 248
    const/16 v1, 0x600

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;->onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v1, p1

    .line 248
    goto :goto_1

    .line 250
    :cond_1
    return-void
.end method

.method public containsCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Z
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs countCursor(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v13, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v13

    .line 201
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 202
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 206
    sget-object v1, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    sget-object v5, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->PROJECTIONS_COUNT:[Ljava/lang/String;

    const/4 v8, 0x0

    iget-boolean v10, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    move v2, p1

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v9, p0

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 208
    monitor-exit v13

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs countCursor(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v13, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v13

    .line 189
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 190
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 194
    sget-object v1, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->PROJECTIONS_COUNT:[Ljava/lang/String;

    const/4 v8, 0x0

    iget-boolean v10, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    move v2, p1

    move-object v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 196
    monitor-exit v13

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V

    .line 356
    return-void
.end method

.method public varargs delete(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2, p3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->delete(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public varargs fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v13, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v13

    .line 152
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 153
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 155
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSortOrder:Ljava/lang/String;

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 158
    sget-object v1, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    move v2, p1

    move-object v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object v9, p0

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 160
    monitor-exit v13

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public varargs fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v13, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v13

    .line 169
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 170
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 174
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;

    move-object/from16 v0, p2

    invoke-direct {v9, p0, v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;-><init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    iget-boolean v10, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    move-object v1, p1

    move/from16 v2, p4

    move-object v3, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 184
    monitor-exit v13

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs fillCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v13, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v13

    .line 139
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    .line 140
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSortOrder:Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 145
    sget-object v1, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->queryHandler:Lcom/viber/voip/util/fe;

    const/16 v2, 0x600

    iget-object v3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mRedirectToUi:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mHightPriority:Z

    move-object v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, p1

    move-object v9, p0

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 147
    monitor-exit v13

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs fillCursorSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSortOrder:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCountRequest:Z

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/orm/manager/EntityManager;->fillCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->processMessagesReplyInternal(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->broadcastDataChanged(I)V

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->broadcastDataChanged(I)V

    throw v0
.end method

.method public processMessagesReplyInternal(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->processMessagesReplyInternal(Landroid/database/Cursor;)V

    .line 232
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mUpdateCursorOnDataChange:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->validCursor:Z

    if-eqz v0, :cond_0

    .line 116
    iget v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mId:I

    invoke-interface {p1, p0, v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;->onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V

    .line 254
    return-void
.end method

.method public unregisterCallback(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->accessors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->messagesThreadSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->lookupUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 128
    :cond_0
    return-void

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 277
    return-void
.end method

.method public varargs update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 310
    return-void
.end method
