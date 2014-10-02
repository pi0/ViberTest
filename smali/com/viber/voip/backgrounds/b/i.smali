.class Lcom/viber/voip/backgrounds/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/o;

.field final synthetic b:Lcom/viber/voip/backgrounds/q;

.field final synthetic c:Lcom/viber/voip/backgrounds/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/i;->c:Lcom/viber/voip/backgrounds/b/h;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/i;->a:Lcom/viber/voip/backgrounds/o;

    iput-object p3, p0, Lcom/viber/voip/backgrounds/b/i;->b:Lcom/viber/voip/backgrounds/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/i;->c:Lcom/viber/voip/backgrounds/b/h;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/backgrounds/m;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/i;->a:Lcom/viber/voip/backgrounds/o;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/i;->b:Lcom/viber/voip/backgrounds/q;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V

    .line 63
    return-void
.end method
