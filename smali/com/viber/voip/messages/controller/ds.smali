.class Lcom/viber/voip/messages/controller/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/du;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/dp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ds;->b:Lcom/viber/voip/messages/controller/dp;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/ds;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dn;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ds;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/dn;->a(Ljava/lang/String;)V

    .line 53
    return-void
.end method
