.class public Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cacheProjection:Ljava/lang/String;

.field public final contentUri:Landroid/net/Uri;

.field public final helper:Lcom/viber/voip/messages/orm/manager/EntityHelper;

.field public final projectionTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final projections:[Ljava/lang/String;

.field public final projectionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tableName:Ljava/lang/String;

.field public final uiRelatedProjectionsList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;Lcom/viber/voip/messages/orm/manager/EntityHelper;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/messages/orm/manager/EntityHelper;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionTypes:Ljava/util/Map;

    .line 287
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionsList:Ljava/util/List;

    .line 288
    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->uiRelatedProjectionsList:Ljava/util/Set;

    .line 289
    iput-object p3, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->helper:Lcom/viber/voip/messages/orm/manager/EntityHelper;

    .line 290
    iput-object p4, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->tableName:Ljava/lang/String;

    .line 291
    iput-object p5, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->contentUri:Landroid/net/Uri;

    .line 292
    iput-object p6, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->cacheProjection:Ljava/lang/String;

    .line 293
    return-void
.end method

.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->helper:Lcom/viber/voip/messages/orm/manager/EntityHelper;

    .line 274
    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionsList:Ljava/util/List;

    .line 275
    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->uiRelatedProjectionsList:Ljava/util/Set;

    .line 276
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->tableName:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->contentUri:Landroid/net/Uri;

    .line 279
    iput-object p4, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->cacheProjection:Ljava/lang/String;

    .line 280
    iput-object p5, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionTypes:Ljava/util/Map;

    .line 281
    return-void
.end method


# virtual methods
.method getProjectionColumn(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 297
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    :goto_1
    return v0

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
