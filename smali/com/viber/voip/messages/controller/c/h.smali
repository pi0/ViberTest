.class Lcom/viber/voip/messages/controller/c/h;
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
    .line 268
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/h;->a:Lcom/viber/voip/messages/controller/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dg;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-interface {p1}, Lcom/viber/voip/messages/controller/dg;->onInitCache()V

    .line 273
    return-void
.end method
