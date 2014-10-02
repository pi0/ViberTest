.class public Lcom/viber/voip/contacts/c/f/a/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/orm/manager/EntityManager;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ag;->a:Z

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 290
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/g;

    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 292
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/g;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 286
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ag;->b:Ljava/lang/String;

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/orm/manager/EntityManager;Lcom/viber/voip/contacts/c/f/a/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/ag;-><init>(Lcom/viber/voip/messages/orm/manager/EntityManager;)V

    return-void
.end method
