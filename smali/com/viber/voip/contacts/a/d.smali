.class Lcom/viber/voip/contacts/a/d;
.super Lcom/viber/voip/contacts/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/contacts/a/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/c;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/a/c;Lcom/viber/provider/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/contacts/a/d;->a:Lcom/viber/voip/contacts/a/c;

    .line 50
    invoke-direct {p0, p2}, Lcom/viber/voip/contacts/a/e;-><init>(Lcom/viber/provider/a;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/contacts/a/d;->b:Lcom/viber/provider/a;

    iget v1, p0, Lcom/viber/voip/contacts/a/d;->c:I

    invoke-interface {v0, v1}, Lcom/viber/provider/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/Entity;

    .line 63
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/a/d;->a:Lcom/viber/voip/contacts/a/c;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/a/c;->a(Lcom/viber/voip/messages/orm/entity/Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method
