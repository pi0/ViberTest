.class Lcom/viber/voip/backgrounds/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/f;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/viber/voip/backgrounds/g;->a:Lcom/viber/voip/backgrounds/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 549
    const-string/jumbo v0, "on sd card mounted!"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/viber/voip/backgrounds/g;->a:Lcom/viber/voip/backgrounds/f;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/f;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/a;)Ljava/util/List;

    .line 551
    return-void
.end method
