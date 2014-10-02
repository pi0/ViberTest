.class Lcom/viber/voip/calls/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/q;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/al;

.field final synthetic b:Lcom/viber/voip/calls/an;

.field final synthetic c:Lcom/viber/voip/calls/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/calls/ag;->c:Lcom/viber/voip/calls/af;

    iput-object p2, p0, Lcom/viber/voip/calls/ag;->a:Lcom/viber/voip/calls/al;

    iput-object p3, p0, Lcom/viber/voip/calls/ag;->b:Lcom/viber/voip/calls/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/calls/t;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/calls/ag;->c:Lcom/viber/voip/calls/af;

    invoke-static {v0, p1}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/calls/ag;->c:Lcom/viber/voip/calls/af;

    iget-object v1, p0, Lcom/viber/voip/calls/ag;->a:Lcom/viber/voip/calls/al;

    iget-object v2, p0, Lcom/viber/voip/calls/ag;->b:Lcom/viber/voip/calls/an;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V

    .line 86
    return-void
.end method
