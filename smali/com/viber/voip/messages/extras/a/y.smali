.class Lcom/viber/voip/messages/extras/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/y;->a:Lcom/viber/voip/messages/extras/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/y;->a:Lcom/viber/voip/messages/extras/a/x;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/w;->c:Lcom/viber/voip/messages/extras/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/y;->a:Lcom/viber/voip/messages/extras/a/x;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/y;->a:Lcom/viber/voip/messages/extras/a/x;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->g(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Address;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    .line 540
    return-void
.end method
