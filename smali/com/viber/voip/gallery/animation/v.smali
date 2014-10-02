.class Lcom/viber/voip/gallery/animation/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/animation/x;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/u;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/v;->a:Lcom/viber/voip/gallery/animation/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/v;->a:Lcom/viber/voip/gallery/animation/u;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/u;->c:Lcom/viber/voip/gallery/animation/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;Z)Z

    .line 249
    return-void
.end method
