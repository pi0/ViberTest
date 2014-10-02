.class public interface abstract Lcom/viber/voip/messages/orm/service/EntityService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_ID:I = -0x1

.field public static final SEARCH_DELAY:I = 0x12c


# virtual methods
.method public abstract findEntity(J)Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public abstract getCount()I
.end method

.method public abstract getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;
.end method

.method public abstract getHelper()Lcom/viber/voip/messages/orm/creator/Creator;
.end method

.method public abstract isInit()Z
.end method
