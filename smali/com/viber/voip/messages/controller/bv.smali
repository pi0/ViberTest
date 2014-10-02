.class Lcom/viber/voip/messages/controller/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bv;->b:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bv;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method
