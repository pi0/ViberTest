.class Lcom/viber/voip/calls/ad;
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
    .line 245
    iput-object p1, p0, Lcom/viber/voip/calls/ad;->b:Lcom/viber/voip/calls/z;

    iput-object p2, p0, Lcom/viber/voip/calls/ad;->a:Lcom/viber/voip/calls/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/calls/ad;->a:Lcom/viber/voip/calls/y;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/viber/voip/calls/ad;->a:Lcom/viber/voip/calls/y;

    invoke-interface {v0}, Lcom/viber/voip/calls/y;->a()V

    .line 252
    :cond_0
    return-void
.end method
