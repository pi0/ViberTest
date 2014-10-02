.class Lcom/viber/voip/messages/controller/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/du;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/viber/voip/messages/controller/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/dp;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dr;->b:Lcom/viber/voip/messages/controller/dp;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/dr;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dn;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dr;->a:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    .line 43
    return-void
.end method
