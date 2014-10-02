.class Lcom/viber/voip/gallery/animation/f;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/f;->a:Lcom/viber/voip/gallery/animation/d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/f;->a:Lcom/viber/voip/gallery/animation/d;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/d;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
