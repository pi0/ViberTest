.class public abstract Lcom/viber/voip/messages/orm/creator/Creator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public abstract createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public abstract createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public getAggregateField()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;
.end method

.method public abstract getFieldMapping()Lcom/viber/voip/messages/orm/entity/FieldMapping;
.end method

.method public abstract getProjections()[Ljava/lang/String;
.end method

.method public abstract getTable()Ljava/lang/String;
.end method

.method public abstract updateInstance(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;)Z
.end method
