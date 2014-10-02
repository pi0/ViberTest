.class Lcom/viber/voip/backgrounds/e;
.super Lcom/viber/voip/backgrounds/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/viber/voip/backgrounds/e;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Lcom/viber/voip/backgrounds/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/viber/voip/backgrounds/e;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/m;)V

    .line 466
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/viber/voip/backgrounds/e;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;Landroid/content/Context;Ljava/io/File;Lcom/viber/voip/backgrounds/q;)V

    .line 468
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 1
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/viber/voip/backgrounds/e;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/m;)V

    .line 473
    return-void
.end method
