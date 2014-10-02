.class Lcom/viber/voip/gallery/preview/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/w;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/x;->a:Lcom/viber/voip/gallery/preview/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/x;->a:Lcom/viber/voip/gallery/preview/w;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/x;->a:Lcom/viber/voip/gallery/preview/w;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->a()V

    .line 181
    :cond_0
    return-void
.end method
