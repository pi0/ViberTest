.class Lcom/viber/voip/gallery/preview/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/y;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 449
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/y;->b:Z

    if-nez v0, :cond_1

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/y;->b:Z

    .line 451
    add-int v4, p2, p4

    .line 452
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/y;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->h(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/messages/ui/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/y;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    iget-object v1, v1, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    sget v2, Lcom/viber/voip/messages/ui/bd;->b:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIIZ)V

    .line 455
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/y;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 456
    const-class v0, Landroid/text/style/ImageSpan;

    invoke-interface {v1, v4, v4, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 457
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 458
    aget-object v0, v0, v5

    .line 459
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 461
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/y;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    iget-object v2, v2, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    :cond_0
    iput-boolean v5, p0, Lcom/viber/voip/gallery/preview/y;->b:Z

    .line 467
    :cond_1
    return-void
.end method
