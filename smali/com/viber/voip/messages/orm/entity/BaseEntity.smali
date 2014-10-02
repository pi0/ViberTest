.class public abstract Lcom/viber/voip/messages/orm/entity/BaseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/entity/Entity;


# instance fields
.field protected id:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    check-cast p1, Lcom/viber/voip/messages/orm/entity/BaseEntity;

    .line 54
    iget-wide v2, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    iget-wide v4, p1, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    return-wide v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 38
    .line 40
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    iget-wide v2, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIdValid()Z
    .locals 4

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(J)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/BaseEntity;->id:J

    .line 33
    return-object p0
.end method
