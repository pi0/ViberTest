.class public abstract Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/service/EntityService",
        "<+",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DESTROY_CONTACTS_DELAY:I = 0x3e8


# instance fields
.field private uiHandler:Landroid/os/Handler;

.field private wrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper",
            "<TT;>.InternalWrapper;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->uiHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->wrappers:Landroid/util/SparseArray;

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract createInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/ServiceCallback;",
            ")TT;"
        }
    .end annotation
.end method

.method public getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper",
            "<TT;>.InternalWrapper;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->wrappers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    .line 23
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;-><init>(Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;)V

    .line 25
    iget-object v1, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->wrappers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27
    :cond_0
    return-object v0
.end method

.method protected abstract onDestroy(Lcom/viber/voip/messages/orm/service/EntityService;Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/orm/service/ServiceCallback;",
            ")V"
        }
    .end annotation
.end method
