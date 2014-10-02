.class Lcom/viber/voip/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/g/b;

.field final synthetic b:Lcom/viber/voip/g/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/g/e;Lcom/viber/voip/g/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/g/f;->b:Lcom/viber/voip/g/e;

    iput-object p2, p0, Lcom/viber/voip/g/f;->a:Lcom/viber/voip/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/g/f;->a:Lcom/viber/voip/g/b;

    iget-object v1, p0, Lcom/viber/voip/g/f;->b:Lcom/viber/voip/g/e;

    iget-object v1, v1, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v1}, Lcom/viber/voip/g/c;->b(Lcom/viber/voip/g/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/g/b;->a(Z)V

    .line 105
    return-void
.end method
