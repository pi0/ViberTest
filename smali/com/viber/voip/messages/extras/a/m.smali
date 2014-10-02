.class Lcom/viber/voip/messages/extras/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/m;->a:Lcom/viber/voip/messages/extras/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/m;->a:Lcom/viber/voip/messages/extras/a/l;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 207
    return-void
.end method
