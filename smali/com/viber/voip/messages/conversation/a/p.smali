.class Lcom/viber/voip/messages/conversation/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/o;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/p;->a:Lcom/viber/voip/messages/conversation/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/p;->a:Lcom/viber/voip/messages/conversation/a/o;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/a/o;->a(J)V

    .line 65
    return-void
.end method
