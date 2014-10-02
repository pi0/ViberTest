.class Lcom/viber/voip/messages/extras/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/b;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/f;->b:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/f;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/f;->b:Lcom/viber/voip/messages/extras/a/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/f;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-static {v0, p1, v1, v2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;ZLcom/viber/voip/messages/extras/a/b;)V

    .line 117
    return-void
.end method
