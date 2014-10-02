.class Lcom/viber/voip/backgrounds/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/q;

.field final synthetic b:Lcom/viber/voip/backgrounds/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/m;->b:Lcom/viber/voip/backgrounds/b/h;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/m;->a:Lcom/viber/voip/backgrounds/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/m;->b:Lcom/viber/voip/backgrounds/b/h;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/backgrounds/m;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/m;->a:Lcom/viber/voip/backgrounds/q;

    invoke-interface {v0, v1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/q;)V

    .line 103
    return-void
.end method
