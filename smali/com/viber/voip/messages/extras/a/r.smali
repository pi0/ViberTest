.class Lcom/viber/voip/messages/extras/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/r;->a:Lcom/viber/voip/messages/extras/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/r;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 256
    return-void
.end method
