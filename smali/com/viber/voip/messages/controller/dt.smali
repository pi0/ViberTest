.class Lcom/viber/voip/messages/controller/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/du;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/do;

.field final synthetic c:Lcom/viber/voip/messages/controller/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/dp;[Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dt;->c:Lcom/viber/voip/messages/controller/dp;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/dt;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/dt;->b:Lcom/viber/voip/messages/controller/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dn;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dt;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/dt;->b:Lcom/viber/voip/messages/controller/do;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/dn;->a([Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V

    .line 63
    return-void
.end method
