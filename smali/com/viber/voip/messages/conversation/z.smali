.class Lcom/viber/voip/messages/conversation/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/g;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/w;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/z;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/aa;-><init>(Lcom/viber/voip/messages/conversation/z;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
