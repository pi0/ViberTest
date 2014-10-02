.class Lcom/viber/voip/calls/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/v;

.field final synthetic b:Lcom/viber/voip/calls/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/z;Lcom/viber/voip/calls/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/calls/ac;->b:Lcom/viber/voip/calls/z;

    iput-object p2, p0, Lcom/viber/voip/calls/ac;->a:Lcom/viber/voip/calls/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/calls/ac;->a:Lcom/viber/voip/calls/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ac;->a:Lcom/viber/voip/calls/v;

    invoke-interface {v0, p1}, Lcom/viber/voip/calls/v;->a(I)V

    .line 239
    :cond_0
    return-void
.end method
