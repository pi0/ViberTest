.class Lcom/viber/voip/backgrounds/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/o;

.field final synthetic b:Lcom/viber/voip/backgrounds/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/j;->b:Lcom/viber/voip/backgrounds/b/h;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/j;->a:Lcom/viber/voip/backgrounds/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/j;->b:Lcom/viber/voip/backgrounds/b/h;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/backgrounds/m;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/j;->a:Lcom/viber/voip/backgrounds/o;

    invoke-interface {v0, v1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;)V

    .line 73
    return-void
.end method
