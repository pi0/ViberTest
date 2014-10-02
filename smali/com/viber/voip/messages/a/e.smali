.class Lcom/viber/voip/messages/a/e;
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
    .line 187
    iput-object p1, p0, Lcom/viber/voip/messages/a/e;->a:Lcom/viber/voip/messages/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/a/e;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->g()Ljava/util/Set;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/a/e;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;Ljava/util/Set;)V

    .line 193
    return-void
.end method
