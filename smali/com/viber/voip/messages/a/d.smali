.class Lcom/viber/voip/messages/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/messages/a/d;->a:Lcom/viber/voip/messages/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/a/d;->a:Lcom/viber/voip/messages/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/a/d;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->h()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/a/d;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/a/b;->b(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/e;->c()V

    .line 181
    return-void
.end method
