.class Lcom/viber/voip/messages/extras/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/p;->a:Lcom/viber/voip/messages/extras/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/p;->a:Lcom/viber/voip/messages/extras/a/n;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 239
    return-void
.end method
