.class Lcom/viber/voip/calls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/o;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/viber/voip/calls/c;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/c;->a:Lcom/viber/voip/calls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSave(Lcom/viber/voip/messages/orm/entity/Entity;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/viber/voip/calls/c;->a:Lcom/viber/voip/calls/o;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/viber/voip/calls/c;->a:Lcom/viber/voip/calls/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/o;->a(Z)V

    .line 392
    :cond_0
    return-void
.end method
