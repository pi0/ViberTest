.class Lcom/viber/voip/backgrounds/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/o;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/backgrounds/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/k;->c:Lcom/viber/voip/backgrounds/b/h;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/k;->a:Lcom/viber/voip/backgrounds/o;

    iput p3, p0, Lcom/viber/voip/backgrounds/b/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/k;->c:Lcom/viber/voip/backgrounds/b/h;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->a(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/backgrounds/m;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/k;->a:Lcom/viber/voip/backgrounds/o;

    iget v2, p0, Lcom/viber/voip/backgrounds/b/k;->b:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;I)V

    .line 83
    return-void
.end method
