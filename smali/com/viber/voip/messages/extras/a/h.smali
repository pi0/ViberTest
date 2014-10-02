.class Lcom/viber/voip/messages/extras/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/c;

.field final synthetic b:Landroid/location/Address;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;Landroid/location/Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/h;->d:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/h;->a:Lcom/viber/voip/messages/extras/a/c;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/a/h;->b:Landroid/location/Address;

    iput-object p4, p0, Lcom/viber/voip/messages/extras/a/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/h;->a:Lcom/viber/voip/messages/extras/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/h;->b:Landroid/location/Address;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    .line 708
    return-void
.end method
