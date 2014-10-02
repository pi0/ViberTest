.class Lcom/viber/voip/gallery/preview/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/q;->a:Lcom/viber/voip/gallery/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/q;->a:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->b(Lcom/viber/voip/gallery/preview/o;)V

    .line 86
    return-void
.end method
