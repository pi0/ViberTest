.class Lcom/viber/voip/calls/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/n;

.field final synthetic b:[Ljava/lang/Long;

.field final synthetic c:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/n;[Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/viber/voip/calls/d;->c:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/d;->a:Lcom/viber/voip/calls/n;

    iput-object p3, p0, Lcom/viber/voip/calls/d;->b:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/calls/d;->a:Lcom/viber/voip/calls/n;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/viber/voip/calls/d;->a:Lcom/viber/voip/calls/n;

    invoke-interface {v0}, Lcom/viber/voip/calls/n;->a()V

    .line 416
    :cond_0
    return-void
.end method
