.class Lcom/viber/voip/messages/controller/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/an;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/g;->a:Lcom/viber/voip/messages/controller/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dg;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    invoke-interface {p1}, Lcom/viber/voip/messages/controller/dg;->onChangeOwner()V

    .line 263
    return-void
.end method
