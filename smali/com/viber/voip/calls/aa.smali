.class Lcom/viber/voip/calls/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/z;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/calls/aa;->a:Lcom/viber/voip/calls/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/calls/aa;->a:Lcom/viber/voip/calls/z;

    invoke-static {v0}, Lcom/viber/voip/calls/z;->a(Lcom/viber/voip/calls/z;)Lcom/viber/voip/calls/af;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/af;->a(Z)V

    .line 106
    return-void
.end method
