.class Lcom/viber/voip/calls/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/n;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/y;

.field final synthetic b:Lcom/viber/voip/calls/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/z;Lcom/viber/voip/calls/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/viber/voip/calls/ab;->b:Lcom/viber/voip/calls/z;

    iput-object p2, p0, Lcom/viber/voip/calls/ab;->a:Lcom/viber/voip/calls/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/voip/calls/ab;->b:Lcom/viber/voip/calls/z;

    invoke-static {v0}, Lcom/viber/voip/calls/z;->b(Lcom/viber/voip/calls/z;)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/calls/ab;->a:Lcom/viber/voip/calls/y;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/viber/voip/calls/ab;->a:Lcom/viber/voip/calls/y;

    invoke-interface {v0}, Lcom/viber/voip/calls/y;->a()V

    .line 160
    :cond_0
    return-void
.end method
