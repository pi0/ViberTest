.class Lcom/viber/voip/messages/extras/fb/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/t;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/t;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 123
    return-void
.end method
