.class Lcom/viber/voip/messages/controller/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ab;->a:Lcom/viber/voip/messages/controller/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ab;->a:Lcom/viber/voip/messages/controller/a/aa;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/a/aa;->onGetRecentMessagesEnded(I)V

    .line 53
    return-void
.end method
