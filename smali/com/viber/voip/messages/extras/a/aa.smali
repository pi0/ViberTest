.class Lcom/viber/voip/messages/extras/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/c;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/aa;->b:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/aa;->a:Lcom/viber/voip/messages/extras/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/aa;->a:Lcom/viber/voip/messages/extras/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/aa;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/aa;->b:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->g(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Address;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    .line 561
    return-void
.end method
