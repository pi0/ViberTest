.class public Lcom/viber/voip/contacts/c/f/a/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/ab;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/messages/orm/manager/EntityManager;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ai;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ai;->a:Z

    .line 239
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ai;->a:Z

    if-eqz v0, :cond_3

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 242
    invoke-virtual {p2, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/c;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 244
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/c;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 238
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ai;->b:Ljava/lang/String;

    .line 253
    :goto_2
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 254
    return-void

    .line 251
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ai;->b:Ljava/lang/String;

    goto :goto_2
.end method
