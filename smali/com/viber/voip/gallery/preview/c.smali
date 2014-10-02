.class Lcom/viber/voip/gallery/preview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/c;->b:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iput-object p2, p0, Lcom/viber/voip/gallery/preview/c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/c;->b:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;IZ)V

    .line 243
    return-void
.end method
