.class Lcom/viber/voip/messages/extras/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/w;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/z;->a:Lcom/viber/voip/messages/extras/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/z;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/w;->c:Lcom/viber/voip/messages/extras/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/z;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/z;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->g(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Address;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    .line 551
    return-void
.end method
