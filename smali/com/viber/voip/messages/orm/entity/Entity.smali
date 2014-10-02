.class public interface abstract Lcom/viber/voip/messages/orm/entity/Entity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final NO_ID:J = -0x1L


# virtual methods
.method public abstract getContentValues()Landroid/content/ContentValues;
.end method

.method public abstract getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
.end method

.method public abstract getId()J
.end method

.method public abstract getTable()Ljava/lang/String;
.end method

.method public abstract setId(J)Lcom/viber/voip/messages/orm/entity/Entity;
.end method
