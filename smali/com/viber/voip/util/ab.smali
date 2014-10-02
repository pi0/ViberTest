.class Lcom/viber/voip/util/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/viber/voip/util/ab;->a:Lcom/viber/voip/util/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/viber/voip/util/ab;->a:Lcom/viber/voip/util/aa;

    iget-object v0, v0, Lcom/viber/voip/util/aa;->a:Lcom/viber/voip/util/ah;

    invoke-interface {v0, p2}, Lcom/viber/voip/util/ah;->a(Ljava/lang/String;)V

    .line 355
    return-void
.end method
