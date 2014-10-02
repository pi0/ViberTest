.class Lcom/viber/voip/gallery/preview/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/ah;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ah;->a:Lcom/viber/voip/gallery/preview/ae;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ah;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/ae;->c(Lcom/viber/voip/gallery/preview/ae;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/gallery/preview/ae;I)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ah;->a:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->d(Lcom/viber/voip/gallery/preview/ae;)V

    .line 109
    return-void
.end method
