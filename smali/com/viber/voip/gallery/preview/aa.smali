.class Lcom/viber/voip/gallery/preview/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/imagezoom/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/z;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/aa;->a:Lcom/viber/voip/gallery/preview/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/aa;->a:Lcom/viber/voip/gallery/preview/z;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/z;->a(Lcom/viber/voip/gallery/preview/z;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 229
    return-void
.end method
