.class Lcom/viber/voip/api/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/h;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/viber/voip/api/i;->a:Lcom/viber/voip/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/viber/voip/api/i;->a:Lcom/viber/voip/api/h;

    iget-object v0, v0, Lcom/viber/voip/api/h;->b:Lcom/viber/voip/api/x;

    invoke-interface {v0, p2, p3}, Lcom/viber/voip/api/x;->a(ILjava/lang/String;)V

    .line 662
    return-void
.end method
