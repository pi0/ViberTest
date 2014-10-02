.class Lcom/viber/voip/billing/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/billing/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bb;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/viber/voip/billing/bd;->b:Lcom/viber/voip/billing/bb;

    iput-object p2, p0, Lcom/viber/voip/billing/bd;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/viber/voip/billing/bd;->b:Lcom/viber/voip/billing/bb;

    iget-object v0, v0, Lcom/viber/voip/billing/bb;->c:Lcom/viber/voip/billing/bg;

    iget-object v1, p0, Lcom/viber/voip/billing/bd;->b:Lcom/viber/voip/billing/bb;

    iget-object v1, v1, Lcom/viber/voip/billing/bb;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/viber/voip/billing/bd;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/bg;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1162
    iget-object v0, p0, Lcom/viber/voip/billing/bd;->b:Lcom/viber/voip/billing/bb;

    iget-object v0, v0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->d(Lcom/viber/voip/billing/ap;)V

    .line 1163
    return-void
.end method
