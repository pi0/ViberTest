.class public interface abstract Lcom/viber/voip/messages/orm/entity/EntityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/viber/voip/messages/orm/entity/BaseEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method public abstract getProjections()[Ljava/lang/String;
.end method

.method public abstract getTable()Ljava/lang/String;
.end method
