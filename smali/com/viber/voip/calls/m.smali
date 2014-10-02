.class Lcom/viber/voip/calls/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/o;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/viber/voip/calls/m;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/m;->a:Lcom/viber/voip/calls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/viber/voip/calls/m;->a:Lcom/viber/voip/calls/o;

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/viber/voip/calls/m;->a:Lcom/viber/voip/calls/o;

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/viber/voip/calls/o;->a(Z)V

    .line 324
    :cond_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
