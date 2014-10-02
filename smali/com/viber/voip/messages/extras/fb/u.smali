.class Lcom/viber/voip/messages/extras/fb/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/u;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/u;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V

    .line 295
    return-void
.end method
