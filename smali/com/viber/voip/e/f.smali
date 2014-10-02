.class Lcom/viber/voip/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/e/s;

.field final synthetic b:Lcom/viber/voip/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/viber/voip/e/f;->b:Lcom/viber/voip/e/a;

    iput-object p2, p0, Lcom/viber/voip/e/f;->a:Lcom/viber/voip/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/e/f;->b:Lcom/viber/voip/e/a;

    iget-object v1, p0, Lcom/viber/voip/e/f;->a:Lcom/viber/voip/e/s;

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->b(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 236
    return-void
.end method
