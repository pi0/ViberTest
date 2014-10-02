.class public abstract Lcom/viber/voip/messages/orm/manager/EntityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private entityMapping:Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

.field private hasChanges:Z

.field private hasUiChanges:Z

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->entityMapping:Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    .line 21
    return-void
.end method

.method private rememderChanges(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasChanges:Z

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->entityMapping:Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    iget-object v0, v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->uiRelatedProjectionsList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasUiChanges:Z

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method abstract create(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public getAndResetChanges()Z
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasChanges:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasChanges:Z

    .line 93
    return v0
.end method

.method public getAndResetUiChanges()Z
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasUiChanges:Z

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->hasUiChanges:Z

    .line 87
    return v0
.end method

.method protected getField(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    if-eq v0, p3, :cond_0

    .line 35
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/manager/EntityHelper;->rememderChanges(Ljava/lang/String;)V

    move p3, v0

    .line 38
    :cond_0
    return p3
.end method

.method protected getField(Landroid/content/ContentValues;Ljava/lang/String;J)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 25
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    .line 26
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/manager/EntityHelper;->rememderChanges(Ljava/lang/String;)V

    move-wide p3, v0

    .line 29
    :cond_0
    return-wide p3
.end method

.method protected getField(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    if-nez p3, :cond_0

    .line 43
    const-string/jumbo p3, ""

    .line 45
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/manager/EntityHelper;->rememderChanges(Ljava/lang/String;)V

    move-object p3, v0

    .line 50
    :cond_1
    return-object p3
.end method

.method protected getField(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    if-eq v0, p3, :cond_0

    .line 56
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/manager/EntityHelper;->rememderChanges(Ljava/lang/String;)V

    move p3, v0

    .line 59
    :cond_0
    return p3
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->offset:I

    return v0
.end method

.method public getPosition(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->offset:I

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 71
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->entityMapping:Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    iget-object v0, v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->offset:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/viber/voip/messages/orm/manager/EntityHelper;->offset:I

    .line 79
    return-void
.end method

.method abstract update(Landroid/content/ContentValues;)Z
.end method
