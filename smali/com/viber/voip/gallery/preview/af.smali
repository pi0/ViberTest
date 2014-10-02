.class Lcom/viber/voip/gallery/preview/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ax;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/af;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/aw;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/af;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/gallery/preview/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/af;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/gallery/preview/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/gallery/preview/z;->a(ILcom/viber/voip/aw;)V

    .line 92
    :cond_0
    return-void
.end method

.method public b(ILcom/viber/voip/aw;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/af;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/gallery/preview/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/af;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/gallery/preview/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/gallery/preview/z;->a(ILcom/viber/voip/aw;)V

    .line 87
    :cond_0
    return-void
.end method
